
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00befae8 <.text+0x7eeae8>:
  befae8:	55                   	push   ebp
  befae9:	8b ec                	mov    ebp,esp
  befaeb:	83 c4 e8             	add    esp,0xffffffe8
  befaee:	33 c0                	xor    eax,eax
  befaf0:	53                   	push   ebx
  befaf1:	56                   	push   esi
  befaf2:	57                   	push   edi
  befaf3:	8a 45 1c             	mov    al,BYTE PTR [ebp+0x1c]
  befaf6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  befaf9:	48                   	dec    eax
  befafa:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  befafd:	74 14                	je     0xbefb13
  befaff:	33 d2                	xor    edx,edx
  befb01:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befb04:	83 fa 02             	cmp    edx,0x2
  befb07:	74 0a                	je     0xbefb13
  befb09:	b8 01 00 00 00       	mov    eax,0x1
  befb0e:	e9 91 04 00 00       	jmp    0xbeffa4
  befb13:	33 d2                	xor    edx,edx
  befb15:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befb18:	83 fa 02             	cmp    edx,0x2
  befb1b:	75 30                	jne    0xbefb4d
  befb1d:	33 c9                	xor    ecx,ecx
  befb1f:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  befb22:	81 e1 01 00 00 80    	and    ecx,0x80000001
  befb28:	79 05                	jns    0xbefb2f
  befb2a:	49                   	dec    ecx
  befb2b:	83 c9 fe             	or     ecx,0xfffffffe
  befb2e:	41                   	inc    ecx
  befb2f:	85 c9                	test   ecx,ecx
  befb31:	74 0a                	je     0xbefb3d
  befb33:	b8 02 00 00 00       	mov    eax,0x2
  befb38:	e9 67 04 00 00       	jmp    0xbeffa4
  befb3d:	f6 45 24 01          	test   BYTE PTR [ebp+0x24],0x1
  befb41:	74 0a                	je     0xbefb4d
  befb43:	b8 03 00 00 00       	mov    eax,0x3
  befb48:	e9 57 04 00 00       	jmp    0xbeffa4
  befb4d:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befb50:	52                   	push   edx
  befb51:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  befb54:	51                   	push   ecx
  befb55:	57                   	push   edi
  befb56:	56                   	push   esi
  befb57:	e8 14 ff ff ff       	call   0xbefa70
  befb5c:	83 c4 10             	add    esp,0x10
  befb5f:	8b d8                	mov    ebx,eax
  befb61:	85 db                	test   ebx,ebx
  befb63:	74 0b                	je     0xbefb70
  befb65:	8d 83 e8 03 00 00    	lea    eax,[ebx+0x3e8]
  befb6b:	e9 34 04 00 00       	jmp    0xbeffa4
  befb70:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befb74:	0f 84 a9 00 00 00    	je     0xbefc23
  befb7a:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befb7d:	8d 4d ff             	lea    ecx,[ebp-0x1]
  befb80:	52                   	push   edx
  befb81:	6a 01                	push   0x1
  befb83:	51                   	push   ecx
  befb84:	68 00 01 00 00       	push   0x100
  befb89:	57                   	push   edi
  befb8a:	56                   	push   esi
  befb8b:	e8 e4 f7 ff ff       	call   0xbef374
  befb90:	83 c4 18             	add    esp,0x18
  befb93:	8b d8                	mov    ebx,eax
  befb95:	85 db                	test   ebx,ebx
  befb97:	74 0b                	je     0xbefba4
  befb99:	8d 83 d0 07 00 00    	lea    eax,[ebx+0x7d0]
  befb9f:	e9 00 04 00 00       	jmp    0xbeffa4
  befba4:	80 4d ff 01          	or     BYTE PTR [ebp-0x1],0x1
  befba8:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befbab:	8d 4d ff             	lea    ecx,[ebp-0x1]
  befbae:	52                   	push   edx
  befbaf:	6a 01                	push   0x1
  befbb1:	51                   	push   ecx
  befbb2:	68 00 01 00 00       	push   0x100
  befbb7:	57                   	push   edi
  befbb8:	56                   	push   esi
  befbb9:	e8 ea f5 ff ff       	call   0xbef1a8
  befbbe:	83 c4 18             	add    esp,0x18
  befbc1:	8b d8                	mov    ebx,eax
  befbc3:	85 db                	test   ebx,ebx
  befbc5:	74 0b                	je     0xbefbd2
  befbc7:	8d 83 b8 0b 00 00    	lea    eax,[ebx+0xbb8]
  befbcd:	e9 d2 03 00 00       	jmp    0xbeffa4
  befbd2:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befbd5:	8d 4d 10             	lea    ecx,[ebp+0x10]
  befbd8:	52                   	push   edx
  befbd9:	6a 01                	push   0x1
  befbdb:	51                   	push   ecx
  befbdc:	68 10 01 00 00       	push   0x110
  befbe1:	57                   	push   edi
  befbe2:	56                   	push   esi
  befbe3:	e8 c0 f5 ff ff       	call   0xbef1a8
  befbe8:	83 c4 18             	add    esp,0x18
  befbeb:	8b d8                	mov    ebx,eax
  befbed:	85 db                	test   ebx,ebx
  befbef:	74 32                	je     0xbefc23
  befbf1:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befbf5:	74 21                	je     0xbefc18
  befbf7:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befbfa:	8d 4d fe             	lea    ecx,[ebp-0x2]
  befbfd:	24 fe                	and    al,0xfe
  befbff:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
  befc02:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befc05:	52                   	push   edx
  befc06:	6a 01                	push   0x1
  befc08:	51                   	push   ecx
  befc09:	68 00 01 00 00       	push   0x100
  befc0e:	57                   	push   edi
  befc0f:	56                   	push   esi
  befc10:	e8 93 f5 ff ff       	call   0xbef1a8
  befc15:	83 c4 18             	add    esp,0x18
  befc18:	8d 83 a0 0f 00 00    	lea    eax,[ebx+0xfa0]
  befc1e:	e9 81 03 00 00       	jmp    0xbeffa4
  befc23:	c6 45 fd 00          	mov    BYTE PTR [ebp-0x3],0x0
  befc27:	33 d2                	xor    edx,edx
  befc29:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befc2c:	83 fa 02             	cmp    edx,0x2
  befc2f:	75 11                	jne    0xbefc42
  befc31:	80 65 fd fc          	and    BYTE PTR [ebp-0x3],0xfc
  befc35:	33 c9                	xor    ecx,ecx
  befc37:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  befc3a:	c1 f9 07             	sar    ecx,0x7
  befc3d:	08 4d fd             	or     BYTE PTR [ebp-0x3],cl
  befc40:	eb 13                	jmp    0xbefc55
  befc42:	80 65 fd fc          	and    BYTE PTR [ebp-0x3],0xfc
  befc46:	80 4d fd 04          	or     BYTE PTR [ebp-0x3],0x4
  befc4a:	33 c0                	xor    eax,eax
  befc4c:	8a 45 14             	mov    al,BYTE PTR [ebp+0x14]
  befc4f:	c1 f8 06             	sar    eax,0x6
  befc52:	08 45 fd             	or     BYTE PTR [ebp-0x3],al
  befc55:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befc58:	8d 4d fd             	lea    ecx,[ebp-0x3]
  befc5b:	52                   	push   edx
  befc5c:	6a 01                	push   0x1
  befc5e:	51                   	push   ecx
  befc5f:	6a 08                	push   0x8
  befc61:	57                   	push   edi
  befc62:	56                   	push   esi
  befc63:	e8 40 f5 ff ff       	call   0xbef1a8
  befc68:	83 c4 18             	add    esp,0x18
  befc6b:	8b d8                	mov    ebx,eax
  befc6d:	85 db                	test   ebx,ebx
  befc6f:	74 32                	je     0xbefca3
  befc71:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befc75:	74 21                	je     0xbefc98
  befc77:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befc7a:	8d 4d fc             	lea    ecx,[ebp-0x4]
  befc7d:	24 fe                	and    al,0xfe
  befc7f:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
  befc82:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befc85:	52                   	push   edx
  befc86:	6a 01                	push   0x1
  befc88:	51                   	push   ecx
  befc89:	68 00 01 00 00       	push   0x100
  befc8e:	57                   	push   edi
  befc8f:	56                   	push   esi
  befc90:	e8 13 f5 ff ff       	call   0xbef1a8
  befc95:	83 c4 18             	add    esp,0x18
  befc98:	8d 83 88 13 00 00    	lea    eax,[ebx+0x1388]
  befc9e:	e9 01 03 00 00       	jmp    0xbeffa4
  befca3:	33 d2                	xor    edx,edx
  befca5:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
  befca8:	33 c9                	xor    ecx,ecx
  befcaa:	8a 4d 1c             	mov    cl,BYTE PTR [ebp+0x1c]
  befcad:	49                   	dec    ecx
  befcae:	75 05                	jne    0xbefcb5
  befcb0:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  befcb3:	eb 05                	jmp    0xbefcba
  befcb5:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  befcb8:	d1 e8                	shr    eax,1
  befcba:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  befcbd:	33 d2                	xor    edx,edx
  befcbf:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  befcc2:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  befcc5:	3b 4d f4             	cmp    ecx,DWORD PTR [ebp-0xc]
  befcc8:	0f 8d ac 02 00 00    	jge    0xbeff7a
  befcce:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  befcd1:	50                   	push   eax
  befcd2:	6a 01                	push   0x1
  befcd4:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
  befcd7:	ff 45 f8             	inc    DWORD PTR [ebp-0x8]
  befcda:	03 55 20             	add    edx,DWORD PTR [ebp+0x20]
  befcdd:	52                   	push   edx
  befcde:	6a 09                	push   0x9
  befce0:	57                   	push   edi
  befce1:	56                   	push   esi
  befce2:	e8 c1 f4 ff ff       	call   0xbef1a8
  befce7:	83 c4 18             	add    esp,0x18
  befcea:	8b d8                	mov    ebx,eax
  befcec:	85 db                	test   ebx,ebx
  befcee:	74 32                	je     0xbefd22
  befcf0:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befcf4:	74 21                	je     0xbefd17
  befcf6:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befcf9:	8d 4d ef             	lea    ecx,[ebp-0x11]
  befcfc:	24 fe                	and    al,0xfe
  befcfe:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
  befd01:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befd04:	52                   	push   edx
  befd05:	6a 01                	push   0x1
  befd07:	51                   	push   ecx
  befd08:	68 00 01 00 00       	push   0x100
  befd0d:	57                   	push   edi
  befd0e:	56                   	push   esi
  befd0f:	e8 94 f4 ff ff       	call   0xbef1a8
  befd14:	83 c4 18             	add    esp,0x18
  befd17:	8d 83 70 17 00 00    	lea    eax,[ebx+0x1770]
  befd1d:	e9 82 02 00 00       	jmp    0xbeffa4
  befd22:	33 d2                	xor    edx,edx
  befd24:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befd27:	83 fa 02             	cmp    edx,0x2
  befd2a:	75 54                	jne    0xbefd80
  befd2c:	8b 4d 30             	mov    ecx,DWORD PTR [ebp+0x30]
  befd2f:	51                   	push   ecx
  befd30:	6a 01                	push   0x1
  befd32:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  befd35:	ff 45 f8             	inc    DWORD PTR [ebp-0x8]
  befd38:	03 45 20             	add    eax,DWORD PTR [ebp+0x20]
  befd3b:	50                   	push   eax
  befd3c:	6a 0a                	push   0xa
  befd3e:	57                   	push   edi
  befd3f:	56                   	push   esi
  befd40:	e8 63 f4 ff ff       	call   0xbef1a8
  befd45:	83 c4 18             	add    esp,0x18
  befd48:	8b d8                	mov    ebx,eax
  befd4a:	85 db                	test   ebx,ebx
  befd4c:	74 32                	je     0xbefd80
  befd4e:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befd52:	74 21                	je     0xbefd75
  befd54:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befd57:	8d 4d ee             	lea    ecx,[ebp-0x12]
  befd5a:	24 fe                	and    al,0xfe
  befd5c:	88 45 ee             	mov    BYTE PTR [ebp-0x12],al
  befd5f:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befd62:	52                   	push   edx
  befd63:	6a 01                	push   0x1
  befd65:	51                   	push   ecx
  befd66:	68 00 01 00 00       	push   0x100
  befd6b:	57                   	push   edi
  befd6c:	56                   	push   esi
  befd6d:	e8 36 f4 ff ff       	call   0xbef1a8
  befd72:	83 c4 18             	add    esp,0x18
  befd75:	8d 83 58 1b 00 00    	lea    eax,[ebx+0x1b58]
  befd7b:	e9 24 02 00 00       	jmp    0xbeffa4
  befd80:	33 d2                	xor    edx,edx
  befd82:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befd85:	83 fa 02             	cmp    edx,0x2
  befd88:	75 13                	jne    0xbefd9d
  befd8a:	33 c9                	xor    ecx,ecx
  befd8c:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  befd8f:	83 e1 7f             	and    ecx,0x7f
  befd92:	d1 f9                	sar    ecx,1
  befd94:	88 4d fd             	mov    BYTE PTR [ebp-0x3],cl
  befd97:	80 4d fd c0          	or     BYTE PTR [ebp-0x3],0xc0
  befd9b:	eb 0c                	jmp    0xbefda9
  befd9d:	8a 45 14             	mov    al,BYTE PTR [ebp+0x14]
  befda0:	24 3f                	and    al,0x3f
  befda2:	88 45 fd             	mov    BYTE PTR [ebp-0x3],al
  befda5:	80 4d fd c0          	or     BYTE PTR [ebp-0x3],0xc0
  befda9:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befdac:	8d 4d fd             	lea    ecx,[ebp-0x3]
  befdaf:	52                   	push   edx
  befdb0:	6a 01                	push   0x1
  befdb2:	51                   	push   ecx
  befdb3:	6a 0b                	push   0xb
  befdb5:	57                   	push   edi
  befdb6:	56                   	push   esi
  befdb7:	e8 ec f3 ff ff       	call   0xbef1a8
  befdbc:	83 c4 18             	add    esp,0x18
  befdbf:	8b d8                	mov    ebx,eax
  befdc1:	85 db                	test   ebx,ebx
  befdc3:	74 32                	je     0xbefdf7
  befdc5:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befdc9:	74 21                	je     0xbefdec
  befdcb:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befdce:	8d 4d ed             	lea    ecx,[ebp-0x13]
  befdd1:	24 fe                	and    al,0xfe
  befdd3:	88 45 ed             	mov    BYTE PTR [ebp-0x13],al
  befdd6:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befdd9:	52                   	push   edx
  befdda:	6a 01                	push   0x1
  befddc:	51                   	push   ecx
  befddd:	68 00 01 00 00       	push   0x100
  befde2:	57                   	push   edi
  befde3:	56                   	push   esi
  befde4:	e8 bf f3 ff ff       	call   0xbef1a8
  befde9:	83 c4 18             	add    esp,0x18
  befdec:	8d 83 40 1f 00 00    	lea    eax,[ebx+0x1f40]
  befdf2:	e9 ad 01 00 00       	jmp    0xbeffa4
  befdf7:	c6 45 ec 00          	mov    BYTE PTR [ebp-0x14],0x0
  befdfb:	33 d2                	xor    edx,edx
  befdfd:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befe00:	4a                   	dec    edx
  befe01:	75 6d                	jne    0xbefe70
  befe03:	83 7d 24 02          	cmp    DWORD PTR [ebp+0x24],0x2
  befe07:	72 67                	jb     0xbefe70
  befe09:	83 7d 18 01          	cmp    DWORD PTR [ebp+0x18],0x1
  befe0d:	75 07                	jne    0xbefe16
  befe0f:	c6 45 ec 01          	mov    BYTE PTR [ebp-0x14],0x1
  befe13:	fe 45 14             	inc    BYTE PTR [ebp+0x14]
  befe16:	83 7d 2c 00          	cmp    DWORD PTR [ebp+0x2c],0x0
  befe1a:	74 0a                	je     0xbefe26
  befe1c:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  befe1f:	51                   	push   ecx
  befe20:	e8 ef eb ff ff       	call   0xbeea14
  befe25:	59                   	pop    ecx
  befe26:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  befe29:	50                   	push   eax
  befe2a:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  befe2d:	52                   	push   edx
  befe2e:	57                   	push   edi
  befe2f:	56                   	push   esi
  befe30:	e8 3b fc ff ff       	call   0xbefa70
  befe35:	83 c4 10             	add    esp,0x10
  befe38:	8b d8                	mov    ebx,eax
  befe3a:	85 db                	test   ebx,ebx
  befe3c:	74 32                	je     0xbefe70
  befe3e:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befe42:	74 21                	je     0xbefe65
  befe44:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befe47:	8d 4d eb             	lea    ecx,[ebp-0x15]
  befe4a:	24 fe                	and    al,0xfe
  befe4c:	88 45 eb             	mov    BYTE PTR [ebp-0x15],al
  befe4f:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befe52:	52                   	push   edx
  befe53:	6a 01                	push   0x1
  befe55:	51                   	push   ecx
  befe56:	68 00 01 00 00       	push   0x100
  befe5b:	57                   	push   edi
  befe5c:	56                   	push   esi
  befe5d:	e8 46 f3 ff ff       	call   0xbef1a8
  befe62:	83 c4 18             	add    esp,0x18
  befe65:	8d 83 28 23 00 00    	lea    eax,[ebx+0x2328]
  befe6b:	e9 34 01 00 00       	jmp    0xbeffa4
  befe70:	33 d2                	xor    edx,edx
  befe72:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befe75:	83 fa 02             	cmp    edx,0x2
  befe78:	75 6e                	jne    0xbefee8
  befe7a:	83 7d 24 04          	cmp    DWORD PTR [ebp+0x24],0x4
  befe7e:	72 68                	jb     0xbefee8
  befe80:	83 7d 18 01          	cmp    DWORD PTR [ebp+0x18],0x1
  befe84:	75 08                	jne    0xbefe8e
  befe86:	c6 45 ec 01          	mov    BYTE PTR [ebp-0x14],0x1
  befe8a:	80 45 14 02          	add    BYTE PTR [ebp+0x14],0x2
  befe8e:	83 7d 2c 00          	cmp    DWORD PTR [ebp+0x2c],0x0
  befe92:	74 0a                	je     0xbefe9e
  befe94:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  befe97:	51                   	push   ecx
  befe98:	e8 77 eb ff ff       	call   0xbeea14
  befe9d:	59                   	pop    ecx
  befe9e:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  befea1:	50                   	push   eax
  befea2:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  befea5:	52                   	push   edx
  befea6:	57                   	push   edi
  befea7:	56                   	push   esi
  befea8:	e8 c3 fb ff ff       	call   0xbefa70
  befead:	83 c4 10             	add    esp,0x10
  befeb0:	8b d8                	mov    ebx,eax
  befeb2:	85 db                	test   ebx,ebx
  befeb4:	74 32                	je     0xbefee8
  befeb6:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  befeba:	74 21                	je     0xbefedd
  befebc:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  befebf:	8d 4d ea             	lea    ecx,[ebp-0x16]
  befec2:	24 fe                	and    al,0xfe
  befec4:	88 45 ea             	mov    BYTE PTR [ebp-0x16],al
  befec7:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  befeca:	52                   	push   edx
  befecb:	6a 01                	push   0x1
  befecd:	51                   	push   ecx
  befece:	68 00 01 00 00       	push   0x100
  befed3:	57                   	push   edi
  befed4:	56                   	push   esi
  befed5:	e8 ce f2 ff ff       	call   0xbef1a8
  befeda:	83 c4 18             	add    esp,0x18
  befedd:	8d 83 10 27 00 00    	lea    eax,[ebx+0x2710]
  befee3:	e9 bc 00 00 00       	jmp    0xbeffa4
  befee8:	80 7d ec 01          	cmp    BYTE PTR [ebp-0x14],0x1
  befeec:	75 7d                	jne    0xbeff6b
  befeee:	c6 45 fd 00          	mov    BYTE PTR [ebp-0x3],0x0
  befef2:	33 d2                	xor    edx,edx
  befef4:	8a 55 1c             	mov    dl,BYTE PTR [ebp+0x1c]
  befef7:	83 fa 02             	cmp    edx,0x2
  befefa:	75 11                	jne    0xbeff0d
  befefc:	80 65 fd fc          	and    BYTE PTR [ebp-0x3],0xfc
  beff00:	33 c9                	xor    ecx,ecx
  beff02:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  beff05:	c1 f9 07             	sar    ecx,0x7
  beff08:	08 4d fd             	or     BYTE PTR [ebp-0x3],cl
  beff0b:	eb 13                	jmp    0xbeff20
  beff0d:	80 65 fd fc          	and    BYTE PTR [ebp-0x3],0xfc
  beff11:	80 4d fd 04          	or     BYTE PTR [ebp-0x3],0x4
  beff15:	33 c0                	xor    eax,eax
  beff17:	8a 45 14             	mov    al,BYTE PTR [ebp+0x14]
  beff1a:	c1 f8 06             	sar    eax,0x6
  beff1d:	08 45 fd             	or     BYTE PTR [ebp-0x3],al
  beff20:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  beff23:	8d 4d fd             	lea    ecx,[ebp-0x3]
  beff26:	52                   	push   edx
  beff27:	6a 01                	push   0x1
  beff29:	51                   	push   ecx
  beff2a:	6a 08                	push   0x8
  beff2c:	57                   	push   edi
  beff2d:	56                   	push   esi
  beff2e:	e8 75 f2 ff ff       	call   0xbef1a8
  beff33:	83 c4 18             	add    esp,0x18
  beff36:	8b d8                	mov    ebx,eax
  beff38:	85 db                	test   ebx,ebx
  beff3a:	74 2f                	je     0xbeff6b
  beff3c:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  beff40:	74 21                	je     0xbeff63
  beff42:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  beff45:	8d 4d e9             	lea    ecx,[ebp-0x17]
  beff48:	24 fe                	and    al,0xfe
  beff4a:	88 45 e9             	mov    BYTE PTR [ebp-0x17],al
  beff4d:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  beff50:	52                   	push   edx
  beff51:	6a 01                	push   0x1
  beff53:	51                   	push   ecx
  beff54:	68 00 01 00 00       	push   0x100
  beff59:	57                   	push   edi
  beff5a:	56                   	push   esi
  beff5b:	e8 48 f2 ff ff       	call   0xbef1a8
  beff60:	83 c4 18             	add    esp,0x18
  beff63:	8d 83 f8 2a 00 00    	lea    eax,[ebx+0x2af8]
  beff69:	eb 39                	jmp    0xbeffa4
  beff6b:	ff 45 f0             	inc    DWORD PTR [ebp-0x10]
  beff6e:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  beff71:	3b 55 f4             	cmp    edx,DWORD PTR [ebp-0xc]
  beff74:	0f 8c 54 fd ff ff    	jl     0xbefcce
  beff7a:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  beff7e:	74 22                	je     0xbeffa2
  beff80:	8a 4d ff             	mov    cl,BYTE PTR [ebp-0x1]
  beff83:	8d 55 e8             	lea    edx,[ebp-0x18]
  beff86:	80 e1 fe             	and    cl,0xfe
  beff89:	88 4d e8             	mov    BYTE PTR [ebp-0x18],cl
  beff8c:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  beff8f:	50                   	push   eax
  beff90:	6a 01                	push   0x1
  beff92:	52                   	push   edx
  beff93:	68 00 01 00 00       	push   0x100
  beff98:	57                   	push   edi
  beff99:	56                   	push   esi
  beff9a:	e8 09 f2 ff ff       	call   0xbef1a8
  beff9f:	83 c4 18             	add    esp,0x18
  beffa2:	33 c0                	xor    eax,eax
  beffa4:	5f                   	pop    edi
  beffa5:	5e                   	pop    esi
  beffa6:	5b                   	pop    ebx
  beffa7:	8b e5                	mov    esp,ebp
  beffa9:	5d                   	pop    ebp
  beffaa:	c3                   	ret
  beffab:	90                   	nop
  beffac:	55                   	push   ebp
  beffad:	8b ec                	mov    ebp,esp
  beffaf:	51                   	push   ecx
