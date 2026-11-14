#!/usr/bin/env python3
"""Offline decoder for the supplied GamePower configuration containers.

Uses the Windows application's DES parameters; never opens a USB device.
Requires openssl with its legacy DES provider. Re-encrypts to verify round trip.
"""
import argparse
from pathlib import Path
import subprocess

MAGIC = b"{65BB2052-271D-492E-8383-AA1847735C43}"
KEY = b"GamePowerKey"[:8].hex()


def crypt(data: bytes, decrypt: bool) -> bytes:
    argv = ["openssl", "enc", "-des-cbc", "-provider", "legacy", "-provider",
            "default", "-K", KEY, "-iv", "0000000000000000"]
    if decrypt:
        argv.append("-d")
    result = subprocess.run(argv, input=data, capture_output=True)
    if result.returncode:
        raise SystemExit(result.stderr.decode(errors="replace"))
    return result.stdout


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    data = args.input.read_bytes()
    if not data.startswith(MAGIC):
        raise SystemExit("Unexpected container header")
    plaintext = crypt(data[len(MAGIC):], True)
    if MAGIC + crypt(plaintext, False) != data:
        raise SystemExit("Round-trip verification failed")
    with args.output.open("xb") as out:
        out.write(plaintext)
    print(f"Verified {len(plaintext)} plaintext bytes -> {args.output}")
