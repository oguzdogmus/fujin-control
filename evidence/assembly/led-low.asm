
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bf0000 <.text+0x7ef000>:
  bf0000:	d0 07                	rol    BYTE PTR [edi],1
  bf0002:	00 00                	add    BYTE PTR [eax],al
  bf0004:	eb 02                	jmp    0xbf0008
  bf0006:	33 c0                	xor    eax,eax
  bf0008:	5f                   	pop    edi
  bf0009:	5e                   	pop    esi
  bf000a:	5b                   	pop    ebx
  bf000b:	59                   	pop    ecx
  bf000c:	5d                   	pop    ebp
  bf000d:	c3                   	ret
  bf000e:	90                   	nop
  bf000f:	90                   	nop
  bf0010:	55                   	push   ebp
  bf0011:	8b ec                	mov    ebp,esp
  bf0013:	53                   	push   ebx
  bf0014:	56                   	push   esi
  bf0015:	57                   	push   edi
  bf0016:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf0019:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf001c:	57                   	push   edi
  bf001d:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0021:	50                   	push   eax
  bf0022:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0026:	52                   	push   edx
  bf0027:	e8 58 ea ff ff       	call   0xbeea84
  bf002c:	83 c4 0c             	add    esp,0xc
  bf002f:	8b d8                	mov    ebx,eax
  bf0031:	83 fb ff             	cmp    ebx,0xffffffff
  bf0034:	75 05                	jne    0xbf003b
  bf0036:	83 c8 ff             	or     eax,0xffffffff
  bf0039:	eb 23                	jmp    0xbf005e
  bf003b:	57                   	push   edi
  bf003c:	53                   	push   ebx
  bf003d:	56                   	push   esi
  bf003e:	e8 69 ff ff ff       	call   0xbeffac
  bf0043:	83 c4 0c             	add    esp,0xc
  bf0046:	8b f0                	mov    esi,eax
  bf0048:	85 f6                	test   esi,esi
  bf004a:	74 0a                	je     0xbf0056
  bf004c:	53                   	push   ebx
  bf004d:	e8 c2 1e 0a 00       	call   0xc91f14
  bf0052:	8b c6                	mov    eax,esi
  bf0054:	eb 08                	jmp    0xbf005e
  bf0056:	53                   	push   ebx
  bf0057:	e8 b8 1e 0a 00       	call   0xc91f14
  bf005c:	33 c0                	xor    eax,eax
  bf005e:	5f                   	pop    edi
  bf005f:	5e                   	pop    esi
  bf0060:	5b                   	pop    ebx
  bf0061:	5d                   	pop    ebp
  bf0062:	c3                   	ret
  bf0063:	90                   	nop
  bf0064:	55                   	push   ebp
  bf0065:	8b ec                	mov    ebp,esp
  bf0067:	51                   	push   ecx
  bf0068:	53                   	push   ebx
  bf0069:	56                   	push   esi
  bf006a:	57                   	push   edi
  bf006b:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf006e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0071:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0074:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0077:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf007b:	57                   	push   edi
  bf007c:	6a 01                	push   0x1
  bf007e:	50                   	push   eax
  bf007f:	68 29 01 00 00       	push   0x129
  bf0084:	56                   	push   esi
  bf0085:	53                   	push   ebx
  bf0086:	e8 e9 f2 ff ff       	call   0xbef374
  bf008b:	83 c4 18             	add    esp,0x18
  bf008e:	85 c0                	test   eax,eax
  bf0090:	74 0a                	je     0xbf009c
  bf0092:	05 e8 03 00 00       	add    eax,0x3e8
  bf0097:	e9 97 00 00 00       	jmp    0xbf0133
  bf009c:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
  bf00a0:	74 08                	je     0xbf00aa
  bf00a2:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf00a5:	80 ca 10             	or     dl,0x10
  bf00a8:	eb 06                	jmp    0xbf00b0
  bf00aa:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf00ad:	80 e2 ef             	and    dl,0xef
  bf00b0:	88 55 ff             	mov    BYTE PTR [ebp-0x1],dl
  bf00b3:	57                   	push   edi
  bf00b4:	6a 01                	push   0x1
  bf00b6:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf00b9:	50                   	push   eax
  bf00ba:	68 29 01 00 00       	push   0x129
  bf00bf:	56                   	push   esi
  bf00c0:	53                   	push   ebx
  bf00c1:	e8 e2 f0 ff ff       	call   0xbef1a8
  bf00c6:	83 c4 18             	add    esp,0x18
  bf00c9:	85 c0                	test   eax,eax
  bf00cb:	74 07                	je     0xbf00d4
  bf00cd:	05 d0 07 00 00       	add    eax,0x7d0
  bf00d2:	eb 5f                	jmp    0xbf0133
  bf00d4:	c6 45 fe 00          	mov    BYTE PTR [ebp-0x2],0x0
  bf00d8:	57                   	push   edi
  bf00d9:	8d 55 fe             	lea    edx,[ebp-0x2]
  bf00dc:	6a 01                	push   0x1
  bf00de:	52                   	push   edx
  bf00df:	68 8a 01 00 00       	push   0x18a
  bf00e4:	56                   	push   esi
  bf00e5:	53                   	push   ebx
  bf00e6:	e8 89 f2 ff ff       	call   0xbef374
  bf00eb:	83 c4 18             	add    esp,0x18
  bf00ee:	85 c0                	test   eax,eax
  bf00f0:	74 07                	je     0xbf00f9
  bf00f2:	05 b8 0b 00 00       	add    eax,0xbb8
  bf00f7:	eb 3a                	jmp    0xbf0133
  bf00f9:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
  bf00fd:	74 08                	je     0xbf0107
  bf00ff:	8a 55 fe             	mov    dl,BYTE PTR [ebp-0x2]
  bf0102:	80 ca 80             	or     dl,0x80
  bf0105:	eb 06                	jmp    0xbf010d
  bf0107:	8a 55 fe             	mov    dl,BYTE PTR [ebp-0x2]
  bf010a:	80 e2 7f             	and    dl,0x7f
  bf010d:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0110:	57                   	push   edi
  bf0111:	6a 01                	push   0x1
  bf0113:	8d 45 fe             	lea    eax,[ebp-0x2]
  bf0116:	50                   	push   eax
  bf0117:	68 8a 01 00 00       	push   0x18a
  bf011c:	56                   	push   esi
  bf011d:	53                   	push   ebx
  bf011e:	e8 85 f0 ff ff       	call   0xbef1a8
  bf0123:	83 c4 18             	add    esp,0x18
  bf0126:	85 c0                	test   eax,eax
  bf0128:	74 07                	je     0xbf0131
  bf012a:	05 a0 0f 00 00       	add    eax,0xfa0
  bf012f:	eb 02                	jmp    0xbf0133
  bf0131:	33 c0                	xor    eax,eax
  bf0133:	5f                   	pop    edi
  bf0134:	5e                   	pop    esi
  bf0135:	5b                   	pop    ebx
  bf0136:	59                   	pop    ecx
  bf0137:	5d                   	pop    ebp
  bf0138:	c3                   	ret
  bf0139:	90                   	nop
  bf013a:	90                   	nop
  bf013b:	90                   	nop
  bf013c:	55                   	push   ebp
  bf013d:	8b ec                	mov    ebp,esp
  bf013f:	53                   	push   ebx
  bf0140:	56                   	push   esi
  bf0141:	57                   	push   edi
  bf0142:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf0145:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0148:	57                   	push   edi
  bf0149:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf014d:	50                   	push   eax
  bf014e:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0152:	52                   	push   edx
  bf0153:	e8 2c e9 ff ff       	call   0xbeea84
  bf0158:	83 c4 0c             	add    esp,0xc
  bf015b:	8b d8                	mov    ebx,eax
  bf015d:	83 fb ff             	cmp    ebx,0xffffffff
  bf0160:	75 05                	jne    0xbf0167
  bf0162:	83 c8 ff             	or     eax,0xffffffff
  bf0165:	eb 27                	jmp    0xbf018e
  bf0167:	57                   	push   edi
  bf0168:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf016b:	52                   	push   edx
  bf016c:	53                   	push   ebx
  bf016d:	56                   	push   esi
  bf016e:	e8 f1 fe ff ff       	call   0xbf0064
  bf0173:	83 c4 10             	add    esp,0x10
  bf0176:	8b f0                	mov    esi,eax
  bf0178:	85 f6                	test   esi,esi
  bf017a:	74 0a                	je     0xbf0186
  bf017c:	53                   	push   ebx
  bf017d:	e8 92 1d 0a 00       	call   0xc91f14
  bf0182:	8b c6                	mov    eax,esi
  bf0184:	eb 08                	jmp    0xbf018e
  bf0186:	53                   	push   ebx
  bf0187:	e8 88 1d 0a 00       	call   0xc91f14
  bf018c:	33 c0                	xor    eax,eax
  bf018e:	5f                   	pop    edi
  bf018f:	5e                   	pop    esi
  bf0190:	5b                   	pop    ebx
  bf0191:	5d                   	pop    ebp
  bf0192:	c3                   	ret
  bf0193:	90                   	nop
  bf0194:	55                   	push   ebp
  bf0195:	8b ec                	mov    ebp,esp
  bf0197:	51                   	push   ecx
  bf0198:	53                   	push   ebx
  bf0199:	56                   	push   esi
  bf019a:	57                   	push   edi
  bf019b:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  bf019e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf01a1:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf01a4:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf01a7:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf01ab:	57                   	push   edi
  bf01ac:	6a 01                	push   0x1
  bf01ae:	50                   	push   eax
  bf01af:	68 00 01 00 00       	push   0x100
  bf01b4:	56                   	push   esi
  bf01b5:	53                   	push   ebx
  bf01b6:	e8 b9 f1 ff ff       	call   0xbef374
  bf01bb:	83 c4 18             	add    esp,0x18
  bf01be:	85 c0                	test   eax,eax
  bf01c0:	74 07                	je     0xbf01c9
  bf01c2:	05 e8 03 00 00       	add    eax,0x3e8
  bf01c7:	eb 27                	jmp    0xbf01f0
  bf01c9:	80 4d ff 04          	or     BYTE PTR [ebp-0x1],0x4
  bf01cd:	57                   	push   edi
  bf01ce:	8d 55 ff             	lea    edx,[ebp-0x1]
  bf01d1:	6a 01                	push   0x1
  bf01d3:	52                   	push   edx
  bf01d4:	68 00 01 00 00       	push   0x100
  bf01d9:	56                   	push   esi
  bf01da:	53                   	push   ebx
  bf01db:	e8 c8 ef ff ff       	call   0xbef1a8
  bf01e0:	83 c4 18             	add    esp,0x18
  bf01e3:	85 c0                	test   eax,eax
  bf01e5:	74 07                	je     0xbf01ee
  bf01e7:	05 d0 07 00 00       	add    eax,0x7d0
  bf01ec:	eb 02                	jmp    0xbf01f0
  bf01ee:	33 c0                	xor    eax,eax
  bf01f0:	5f                   	pop    edi
  bf01f1:	5e                   	pop    esi
  bf01f2:	5b                   	pop    ebx
  bf01f3:	59                   	pop    ecx
  bf01f4:	5d                   	pop    ebp
  bf01f5:	c3                   	ret
  bf01f6:	90                   	nop
  bf01f7:	90                   	nop
  bf01f8:	55                   	push   ebp
  bf01f9:	8b ec                	mov    ebp,esp
  bf01fb:	53                   	push   ebx
  bf01fc:	56                   	push   esi
  bf01fd:	57                   	push   edi
  bf01fe:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf0201:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0204:	57                   	push   edi
  bf0205:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0209:	50                   	push   eax
  bf020a:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf020e:	52                   	push   edx
  bf020f:	e8 70 e8 ff ff       	call   0xbeea84
  bf0214:	83 c4 0c             	add    esp,0xc
  bf0217:	8b d8                	mov    ebx,eax
  bf0219:	83 fb ff             	cmp    ebx,0xffffffff
  bf021c:	75 05                	jne    0xbf0223
  bf021e:	83 c8 ff             	or     eax,0xffffffff
  bf0221:	eb 23                	jmp    0xbf0246
  bf0223:	57                   	push   edi
  bf0224:	53                   	push   ebx
  bf0225:	56                   	push   esi
  bf0226:	e8 69 ff ff ff       	call   0xbf0194
  bf022b:	83 c4 0c             	add    esp,0xc
  bf022e:	8b f0                	mov    esi,eax
  bf0230:	85 f6                	test   esi,esi
  bf0232:	74 0a                	je     0xbf023e
  bf0234:	53                   	push   ebx
  bf0235:	e8 da 1c 0a 00       	call   0xc91f14
  bf023a:	8b c6                	mov    eax,esi
  bf023c:	eb 08                	jmp    0xbf0246
  bf023e:	53                   	push   ebx
  bf023f:	e8 d0 1c 0a 00       	call   0xc91f14
  bf0244:	33 c0                	xor    eax,eax
  bf0246:	5f                   	pop    edi
  bf0247:	5e                   	pop    esi
  bf0248:	5b                   	pop    ebx
  bf0249:	5d                   	pop    ebp
  bf024a:	c3                   	ret
  bf024b:	90                   	nop
  bf024c:	55                   	push   ebp
  bf024d:	8b ec                	mov    ebp,esp
  bf024f:	51                   	push   ecx
  bf0250:	53                   	push   ebx
  bf0251:	56                   	push   esi
  bf0252:	57                   	push   edi
  bf0253:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  bf0256:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0259:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf025c:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf025f:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf0263:	57                   	push   edi
  bf0264:	6a 01                	push   0x1
  bf0266:	50                   	push   eax
  bf0267:	68 00 01 00 00       	push   0x100
  bf026c:	56                   	push   esi
  bf026d:	53                   	push   ebx
  bf026e:	e8 01 f1 ff ff       	call   0xbef374
  bf0273:	83 c4 18             	add    esp,0x18
  bf0276:	85 c0                	test   eax,eax
  bf0278:	74 07                	je     0xbf0281
  bf027a:	05 e8 03 00 00       	add    eax,0x3e8
  bf027f:	eb 27                	jmp    0xbf02a8
  bf0281:	80 65 ff fb          	and    BYTE PTR [ebp-0x1],0xfb
  bf0285:	57                   	push   edi
  bf0286:	8d 55 ff             	lea    edx,[ebp-0x1]
  bf0289:	6a 01                	push   0x1
  bf028b:	52                   	push   edx
  bf028c:	68 00 01 00 00       	push   0x100
  bf0291:	56                   	push   esi
  bf0292:	53                   	push   ebx
  bf0293:	e8 10 ef ff ff       	call   0xbef1a8
  bf0298:	83 c4 18             	add    esp,0x18
  bf029b:	85 c0                	test   eax,eax
  bf029d:	74 07                	je     0xbf02a6
  bf029f:	05 d0 07 00 00       	add    eax,0x7d0
  bf02a4:	eb 02                	jmp    0xbf02a8
  bf02a6:	33 c0                	xor    eax,eax
  bf02a8:	5f                   	pop    edi
  bf02a9:	5e                   	pop    esi
  bf02aa:	5b                   	pop    ebx
  bf02ab:	59                   	pop    ecx
  bf02ac:	5d                   	pop    ebp
  bf02ad:	c3                   	ret
  bf02ae:	90                   	nop
  bf02af:	90                   	nop
  bf02b0:	55                   	push   ebp
  bf02b1:	8b ec                	mov    ebp,esp
  bf02b3:	53                   	push   ebx
  bf02b4:	56                   	push   esi
  bf02b5:	57                   	push   edi
  bf02b6:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf02b9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf02bc:	57                   	push   edi
  bf02bd:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf02c1:	50                   	push   eax
  bf02c2:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf02c6:	52                   	push   edx
  bf02c7:	e8 b8 e7 ff ff       	call   0xbeea84
  bf02cc:	83 c4 0c             	add    esp,0xc
  bf02cf:	8b d8                	mov    ebx,eax
  bf02d1:	83 fb ff             	cmp    ebx,0xffffffff
  bf02d4:	75 05                	jne    0xbf02db
  bf02d6:	83 c8 ff             	or     eax,0xffffffff
  bf02d9:	eb 23                	jmp    0xbf02fe
  bf02db:	57                   	push   edi
  bf02dc:	53                   	push   ebx
  bf02dd:	56                   	push   esi
  bf02de:	e8 69 ff ff ff       	call   0xbf024c
  bf02e3:	83 c4 0c             	add    esp,0xc
  bf02e6:	8b f0                	mov    esi,eax
  bf02e8:	85 f6                	test   esi,esi
  bf02ea:	74 0a                	je     0xbf02f6
  bf02ec:	53                   	push   ebx
  bf02ed:	e8 22 1c 0a 00       	call   0xc91f14
  bf02f2:	8b c6                	mov    eax,esi
  bf02f4:	eb 08                	jmp    0xbf02fe
  bf02f6:	53                   	push   ebx
  bf02f7:	e8 18 1c 0a 00       	call   0xc91f14
  bf02fc:	33 c0                	xor    eax,eax
  bf02fe:	5f                   	pop    edi
  bf02ff:	5e                   	pop    esi
  bf0300:	5b                   	pop    ebx
  bf0301:	5d                   	pop    ebp
  bf0302:	c3                   	ret
  bf0303:	90                   	nop
  bf0304:	55                   	push   ebp
  bf0305:	8b ec                	mov    ebp,esp
  bf0307:	51                   	push   ecx
  bf0308:	53                   	push   ebx
  bf0309:	56                   	push   esi
  bf030a:	57                   	push   edi
  bf030b:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf030e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0311:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0314:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0317:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf031b:	57                   	push   edi
  bf031c:	6a 01                	push   0x1
  bf031e:	50                   	push   eax
  bf031f:	68 29 01 00 00       	push   0x129
  bf0324:	56                   	push   esi
  bf0325:	53                   	push   ebx
  bf0326:	e8 49 f0 ff ff       	call   0xbef374
  bf032b:	83 c4 18             	add    esp,0x18
  bf032e:	85 c0                	test   eax,eax
  bf0330:	74 07                	je     0xbf0339
  bf0332:	05 e8 03 00 00       	add    eax,0x3e8
  bf0337:	eb 3a                	jmp    0xbf0373
  bf0339:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
  bf033d:	74 08                	je     0xbf0347
  bf033f:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf0342:	80 e2 7f             	and    dl,0x7f
  bf0345:	eb 06                	jmp    0xbf034d
  bf0347:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf034a:	80 ca 80             	or     dl,0x80
  bf034d:	88 55 ff             	mov    BYTE PTR [ebp-0x1],dl
  bf0350:	57                   	push   edi
  bf0351:	6a 01                	push   0x1
  bf0353:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0356:	50                   	push   eax
  bf0357:	68 29 01 00 00       	push   0x129
  bf035c:	56                   	push   esi
  bf035d:	53                   	push   ebx
  bf035e:	e8 45 ee ff ff       	call   0xbef1a8
  bf0363:	83 c4 18             	add    esp,0x18
  bf0366:	85 c0                	test   eax,eax
  bf0368:	74 07                	je     0xbf0371
  bf036a:	05 d0 07 00 00       	add    eax,0x7d0
  bf036f:	eb 02                	jmp    0xbf0373
  bf0371:	33 c0                	xor    eax,eax
  bf0373:	5f                   	pop    edi
  bf0374:	5e                   	pop    esi
  bf0375:	5b                   	pop    ebx
  bf0376:	59                   	pop    ecx
  bf0377:	5d                   	pop    ebp
  bf0378:	c3                   	ret
  bf0379:	90                   	nop
  bf037a:	90                   	nop
  bf037b:	90                   	nop
  bf037c:	55                   	push   ebp
  bf037d:	8b ec                	mov    ebp,esp
  bf037f:	53                   	push   ebx
  bf0380:	56                   	push   esi
  bf0381:	57                   	push   edi
  bf0382:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf0385:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0388:	57                   	push   edi
  bf0389:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf038d:	50                   	push   eax
  bf038e:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0392:	52                   	push   edx
  bf0393:	e8 ec e6 ff ff       	call   0xbeea84
  bf0398:	83 c4 0c             	add    esp,0xc
  bf039b:	8b d8                	mov    ebx,eax
  bf039d:	83 fb ff             	cmp    ebx,0xffffffff
  bf03a0:	75 05                	jne    0xbf03a7
  bf03a2:	83 c8 ff             	or     eax,0xffffffff
  bf03a5:	eb 27                	jmp    0xbf03ce
  bf03a7:	57                   	push   edi
  bf03a8:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf03ab:	52                   	push   edx
  bf03ac:	53                   	push   ebx
  bf03ad:	56                   	push   esi
  bf03ae:	e8 51 ff ff ff       	call   0xbf0304
  bf03b3:	83 c4 10             	add    esp,0x10
  bf03b6:	8b f0                	mov    esi,eax
  bf03b8:	85 f6                	test   esi,esi
  bf03ba:	74 0a                	je     0xbf03c6
  bf03bc:	53                   	push   ebx
  bf03bd:	e8 52 1b 0a 00       	call   0xc91f14
  bf03c2:	8b c6                	mov    eax,esi
  bf03c4:	eb 08                	jmp    0xbf03ce
  bf03c6:	53                   	push   ebx
  bf03c7:	e8 48 1b 0a 00       	call   0xc91f14
  bf03cc:	33 c0                	xor    eax,eax
  bf03ce:	5f                   	pop    edi
  bf03cf:	5e                   	pop    esi
  bf03d0:	5b                   	pop    ebx
  bf03d1:	5d                   	pop    ebp
  bf03d2:	c3                   	ret
  bf03d3:	90                   	nop
  bf03d4:	55                   	push   ebp
  bf03d5:	8b ec                	mov    ebp,esp
  bf03d7:	51                   	push   ecx
  bf03d8:	53                   	push   ebx
  bf03d9:	56                   	push   esi
  bf03da:	57                   	push   edi
  bf03db:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  bf03de:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf03e1:	83 ff 05             	cmp    edi,0x5
  bf03e4:	76 0a                	jbe    0xbf03f0
  bf03e6:	b8 01 00 00 00       	mov    eax,0x1
  bf03eb:	e9 ab 00 00 00       	jmp    0xbf049b
  bf03f0:	ff 75 14             	push   DWORD PTR [ebp+0x14]
  bf03f3:	53                   	push   ebx
  bf03f4:	e8 c7 d8 ff ff       	call   0xbedcc0
  bf03f9:	0f b7 c8             	movzx  ecx,ax
  bf03fc:	8b f7                	mov    esi,edi
  bf03fe:	81 e1 00 0f 00 00    	and    ecx,0xf00
  bf0404:	4e                   	dec    esi
  bf0405:	24 ff                	and    al,0xff
  bf0407:	03 f6                	add    esi,esi
  bf0409:	83 c4 08             	add    esp,0x8
  bf040c:	66 81 c6 20 01       	add    si,0x120
  bf0411:	c1 f9 08             	sar    ecx,0x8
  bf0414:	83 ff 05             	cmp    edi,0x5
  bf0417:	88 4d ff             	mov    BYTE PTR [ebp-0x1],cl
  bf041a:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
  bf041d:	75 33                	jne    0xbf0452
  bf041f:	c6 45 fd 00          	mov    BYTE PTR [ebp-0x3],0x0
  bf0423:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  bf0426:	8d 55 fd             	lea    edx,[ebp-0x3]
  bf0429:	50                   	push   eax
  bf042a:	6a 01                	push   0x1
  bf042c:	52                   	push   edx
  bf042d:	8d 4e 01             	lea    ecx,[esi+0x1]
  bf0430:	51                   	push   ecx
  bf0431:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bf0434:	51                   	push   ecx
  bf0435:	53                   	push   ebx
  bf0436:	e8 39 ef ff ff       	call   0xbef374
  bf043b:	83 c4 18             	add    esp,0x18
  bf043e:	85 c0                	test   eax,eax
  bf0440:	74 07                	je     0xbf0449
  bf0442:	05 e8 03 00 00       	add    eax,0x3e8
  bf0447:	eb 52                	jmp    0xbf049b
  bf0449:	8a 55 fd             	mov    dl,BYTE PTR [ebp-0x3]
  bf044c:	80 e2 f0             	and    dl,0xf0
  bf044f:	08 55 ff             	or     BYTE PTR [ebp-0x1],dl
  bf0452:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  bf0455:	8d 45 fe             	lea    eax,[ebp-0x2]
  bf0458:	51                   	push   ecx
  bf0459:	6a 01                	push   0x1
  bf045b:	50                   	push   eax
  bf045c:	56                   	push   esi
  bf045d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bf0460:	52                   	push   edx
  bf0461:	53                   	push   ebx
  bf0462:	e8 41 ed ff ff       	call   0xbef1a8
  bf0467:	83 c4 18             	add    esp,0x18
  bf046a:	85 c0                	test   eax,eax
  bf046c:	74 07                	je     0xbf0475
  bf046e:	05 d0 07 00 00       	add    eax,0x7d0
  bf0473:	eb 26                	jmp    0xbf049b
  bf0475:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  bf0478:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf047b:	52                   	push   edx
  bf047c:	6a 01                	push   0x1
  bf047e:	51                   	push   ecx
  bf047f:	46                   	inc    esi
  bf0480:	56                   	push   esi
  bf0481:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  bf0484:	50                   	push   eax
  bf0485:	53                   	push   ebx
  bf0486:	e8 1d ed ff ff       	call   0xbef1a8
  bf048b:	83 c4 18             	add    esp,0x18
  bf048e:	85 c0                	test   eax,eax
  bf0490:	74 07                	je     0xbf0499
  bf0492:	05 b8 0b 00 00       	add    eax,0xbb8
  bf0497:	eb 02                	jmp    0xbf049b
  bf0499:	33 c0                	xor    eax,eax
  bf049b:	5f                   	pop    edi
  bf049c:	5e                   	pop    esi
  bf049d:	5b                   	pop    ebx
  bf049e:	59                   	pop    ecx
  bf049f:	5d                   	pop    ebp
  bf04a0:	c3                   	ret
  bf04a1:	90                   	nop
  bf04a2:	90                   	nop
  bf04a3:	90                   	nop
  bf04a4:	55                   	push   ebp
  bf04a5:	8b ec                	mov    ebp,esp
  bf04a7:	53                   	push   ebx
  bf04a8:	56                   	push   esi
  bf04a9:	57                   	push   edi
  bf04aa:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  bf04ad:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf04b0:	57                   	push   edi
  bf04b1:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf04b5:	50                   	push   eax
  bf04b6:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf04ba:	52                   	push   edx
  bf04bb:	e8 c4 e5 ff ff       	call   0xbeea84
  bf04c0:	83 c4 0c             	add    esp,0xc
  bf04c3:	8b d8                	mov    ebx,eax
  bf04c5:	83 fb ff             	cmp    ebx,0xffffffff
  bf04c8:	75 05                	jne    0xbf04cf
  bf04ca:	83 c8 ff             	or     eax,0xffffffff
  bf04cd:	eb 2a                	jmp    0xbf04f9
  bf04cf:	57                   	push   edi
  bf04d0:	ff 75 18             	push   DWORD PTR [ebp+0x18]
  bf04d3:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bf04d6:	51                   	push   ecx
  bf04d7:	53                   	push   ebx
  bf04d8:	56                   	push   esi
  bf04d9:	e8 f6 fe ff ff       	call   0xbf03d4
  bf04de:	83 c4 14             	add    esp,0x14
  bf04e1:	8b f0                	mov    esi,eax
  bf04e3:	85 f6                	test   esi,esi
  bf04e5:	74 0a                	je     0xbf04f1
  bf04e7:	53                   	push   ebx
  bf04e8:	e8 27 1a 0a 00       	call   0xc91f14
  bf04ed:	8b c6                	mov    eax,esi
  bf04ef:	eb 08                	jmp    0xbf04f9
  bf04f1:	53                   	push   ebx
  bf04f2:	e8 1d 1a 0a 00       	call   0xc91f14
  bf04f7:	33 c0                	xor    eax,eax
  bf04f9:	5f                   	pop    edi
  bf04fa:	5e                   	pop    esi
  bf04fb:	5b                   	pop    ebx
  bf04fc:	5d                   	pop    ebp
  bf04fd:	c3                   	ret
  bf04fe:	90                   	nop
  bf04ff:	90                   	nop
  bf0500:	55                   	push   ebp
  bf0501:	8b ec                	mov    ebp,esp
  bf0503:	51                   	push   ecx
  bf0504:	53                   	push   ebx
  bf0505:	56                   	push   esi
  bf0506:	57                   	push   edi
  bf0507:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf050a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf050d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0510:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0513:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf0517:	57                   	push   edi
  bf0518:	6a 01                	push   0x1
  bf051a:	50                   	push   eax
  bf051b:	68 00 02 00 00       	push   0x200
  bf0520:	56                   	push   esi
  bf0521:	53                   	push   ebx
  bf0522:	e8 4d ee ff ff       	call   0xbef374
  bf0527:	83 c4 18             	add    esp,0x18
  bf052a:	85 c0                	test   eax,eax
  bf052c:	74 07                	je     0xbf0535
  bf052e:	05 e8 03 00 00       	add    eax,0x3e8
  bf0533:	eb 3a                	jmp    0xbf056f
  bf0535:	83 7d 10 01          	cmp    DWORD PTR [ebp+0x10],0x1
  bf0539:	75 08                	jne    0xbf0543
  bf053b:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf053e:	80 ca 10             	or     dl,0x10
  bf0541:	eb 06                	jmp    0xbf0549
  bf0543:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf0546:	80 e2 ef             	and    dl,0xef
  bf0549:	88 55 ff             	mov    BYTE PTR [ebp-0x1],dl
  bf054c:	57                   	push   edi
  bf054d:	6a 01                	push   0x1
  bf054f:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0552:	50                   	push   eax
  bf0553:	68 00 02 00 00       	push   0x200
  bf0558:	56                   	push   esi
  bf0559:	53                   	push   ebx
  bf055a:	e8 49 ec ff ff       	call   0xbef1a8
  bf055f:	83 c4 18             	add    esp,0x18
  bf0562:	85 c0                	test   eax,eax
  bf0564:	74 07                	je     0xbf056d
  bf0566:	05 d0 07 00 00       	add    eax,0x7d0
  bf056b:	eb 02                	jmp    0xbf056f
  bf056d:	33 c0                	xor    eax,eax
  bf056f:	5f                   	pop    edi
  bf0570:	5e                   	pop    esi
  bf0571:	5b                   	pop    ebx
  bf0572:	59                   	pop    ecx
  bf0573:	5d                   	pop    ebp
  bf0574:	c3                   	ret
  bf0575:	90                   	nop
  bf0576:	90                   	nop
  bf0577:	90                   	nop
  bf0578:	55                   	push   ebp
  bf0579:	8b ec                	mov    ebp,esp
  bf057b:	53                   	push   ebx
  bf057c:	56                   	push   esi
  bf057d:	57                   	push   edi
  bf057e:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf0581:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0584:	57                   	push   edi
  bf0585:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0589:	50                   	push   eax
  bf058a:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf058e:	52                   	push   edx
  bf058f:	e8 f0 e4 ff ff       	call   0xbeea84
  bf0594:	83 c4 0c             	add    esp,0xc
  bf0597:	8b d8                	mov    ebx,eax
  bf0599:	83 fb ff             	cmp    ebx,0xffffffff
  bf059c:	75 05                	jne    0xbf05a3
  bf059e:	83 c8 ff             	or     eax,0xffffffff
  bf05a1:	eb 27                	jmp    0xbf05ca
  bf05a3:	57                   	push   edi
  bf05a4:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf05a7:	52                   	push   edx
  bf05a8:	53                   	push   ebx
  bf05a9:	56                   	push   esi
  bf05aa:	e8 51 ff ff ff       	call   0xbf0500
  bf05af:	83 c4 10             	add    esp,0x10
  bf05b2:	8b f0                	mov    esi,eax
  bf05b4:	85 f6                	test   esi,esi
  bf05b6:	74 0a                	je     0xbf05c2
  bf05b8:	53                   	push   ebx
  bf05b9:	e8 56 19 0a 00       	call   0xc91f14
  bf05be:	8b c6                	mov    eax,esi
  bf05c0:	eb 08                	jmp    0xbf05ca
  bf05c2:	53                   	push   ebx
  bf05c3:	e8 4c 19 0a 00       	call   0xc91f14
  bf05c8:	33 c0                	xor    eax,eax
  bf05ca:	5f                   	pop    edi
  bf05cb:	5e                   	pop    esi
  bf05cc:	5b                   	pop    ebx
  bf05cd:	5d                   	pop    ebp
  bf05ce:	c3                   	ret
  bf05cf:	90                   	nop
  bf05d0:	55                   	push   ebp
  bf05d1:	8b ec                	mov    ebp,esp
  bf05d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf05d6:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf05d9:	52                   	push   edx
  bf05da:	6a 01                	push   0x1
  bf05dc:	8d 4d 10             	lea    ecx,[ebp+0x10]
  bf05df:	51                   	push   ecx
  bf05e0:	68 19 04 00 00       	push   0x419
  bf05e5:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bf05e8:	52                   	push   edx
  bf05e9:	50                   	push   eax
  bf05ea:	e8 b9 eb ff ff       	call   0xbef1a8
  bf05ef:	83 c4 18             	add    esp,0x18
  bf05f2:	85 c0                	test   eax,eax
  bf05f4:	74 02                	je     0xbf05f8
  bf05f6:	5d                   	pop    ebp
  bf05f7:	c3                   	ret
  bf05f8:	33 c0                	xor    eax,eax
  bf05fa:	5d                   	pop    ebp
  bf05fb:	c3                   	ret
  bf05fc:	55                   	push   ebp
  bf05fd:	8b ec                	mov    ebp,esp
  bf05ff:	53                   	push   ebx
  bf0600:	56                   	push   esi
  bf0601:	57                   	push   edi
  bf0602:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf0605:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0608:	57                   	push   edi
  bf0609:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf060d:	50                   	push   eax
  bf060e:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0612:	52                   	push   edx
  bf0613:	e8 6c e4 ff ff       	call   0xbeea84
  bf0618:	83 c4 0c             	add    esp,0xc
  bf061b:	8b d8                	mov    ebx,eax
  bf061d:	83 fb ff             	cmp    ebx,0xffffffff
  bf0620:	75 05                	jne    0xbf0627
  bf0622:	83 c8 ff             	or     eax,0xffffffff
  bf0625:	eb 27                	jmp    0xbf064e
  bf0627:	57                   	push   edi
  bf0628:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  bf062b:	52                   	push   edx
  bf062c:	53                   	push   ebx
  bf062d:	56                   	push   esi
  bf062e:	e8 9d ff ff ff       	call   0xbf05d0
  bf0633:	83 c4 10             	add    esp,0x10
  bf0636:	8b f0                	mov    esi,eax
  bf0638:	85 f6                	test   esi,esi
  bf063a:	74 0a                	je     0xbf0646
  bf063c:	53                   	push   ebx
  bf063d:	e8 d2 18 0a 00       	call   0xc91f14
  bf0642:	8b c6                	mov    eax,esi
  bf0644:	eb 08                	jmp    0xbf064e
  bf0646:	53                   	push   ebx
  bf0647:	e8 c8 18 0a 00       	call   0xc91f14
  bf064c:	33 c0                	xor    eax,eax
  bf064e:	5f                   	pop    edi
  bf064f:	5e                   	pop    esi
  bf0650:	5b                   	pop    ebx
  bf0651:	5d                   	pop    ebp
  bf0652:	c3                   	ret
  bf0653:	90                   	nop
  bf0654:	55                   	push   ebp
  bf0655:	8b ec                	mov    ebp,esp
  bf0657:	51                   	push   ecx
  bf0658:	53                   	push   ebx
  bf0659:	56                   	push   esi
  bf065a:	57                   	push   edi
  bf065b:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  bf065e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0661:	8b c7                	mov    eax,edi
  bf0663:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0666:	24 ff                	and    al,0xff
  bf0668:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf066b:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
  bf066e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf0671:	52                   	push   edx
  bf0672:	6a 01                	push   0x1
  bf0674:	51                   	push   ecx
  bf0675:	68 1c 04 00 00       	push   0x41c
  bf067a:	56                   	push   esi
  bf067b:	53                   	push   ebx
  bf067c:	e8 27 eb ff ff       	call   0xbef1a8
  bf0681:	83 c4 18             	add    esp,0x18
  bf0684:	85 c0                	test   eax,eax
  bf0686:	74 07                	je     0xbf068f
  bf0688:	05 e8 03 00 00       	add    eax,0x3e8
  bf068d:	eb 35                	jmp    0xbf06c4
  bf068f:	0f b7 d7             	movzx  edx,di
  bf0692:	81 e2 00 ff 00 00    	and    edx,0xff00
  bf0698:	c1 fa 08             	sar    edx,0x8
  bf069b:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf069e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bf06a1:	51                   	push   ecx
  bf06a2:	8d 4d fe             	lea    ecx,[ebp-0x2]
  bf06a5:	6a 01                	push   0x1
  bf06a7:	51                   	push   ecx
  bf06a8:	68 1d 04 00 00       	push   0x41d
  bf06ad:	56                   	push   esi
  bf06ae:	53                   	push   ebx
  bf06af:	e8 f4 ea ff ff       	call   0xbef1a8
  bf06b4:	83 c4 18             	add    esp,0x18
  bf06b7:	85 c0                	test   eax,eax
  bf06b9:	74 07                	je     0xbf06c2
  bf06bb:	05 d0 07 00 00       	add    eax,0x7d0
  bf06c0:	eb 02                	jmp    0xbf06c4
  bf06c2:	33 c0                	xor    eax,eax
  bf06c4:	5f                   	pop    edi
  bf06c5:	5e                   	pop    esi
  bf06c6:	5b                   	pop    ebx
  bf06c7:	59                   	pop    ecx
  bf06c8:	5d                   	pop    ebp
  bf06c9:	c3                   	ret
  bf06ca:	90                   	nop
  bf06cb:	90                   	nop
  bf06cc:	55                   	push   ebp
  bf06cd:	8b ec                	mov    ebp,esp
  bf06cf:	53                   	push   ebx
  bf06d0:	56                   	push   esi
  bf06d1:	57                   	push   edi
  bf06d2:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf06d5:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf06d8:	57                   	push   edi
  bf06d9:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf06dd:	50                   	push   eax
  bf06de:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf06e2:	52                   	push   edx
  bf06e3:	e8 9c e3 ff ff       	call   0xbeea84
  bf06e8:	83 c4 0c             	add    esp,0xc
  bf06eb:	8b d8                	mov    ebx,eax
  bf06ed:	83 fb ff             	cmp    ebx,0xffffffff
  bf06f0:	75 05                	jne    0xbf06f7
  bf06f2:	83 c8 ff             	or     eax,0xffffffff
  bf06f5:	eb 28                	jmp    0xbf071f
  bf06f7:	57                   	push   edi
  bf06f8:	66 8b 55 14          	mov    dx,WORD PTR [ebp+0x14]
  bf06fc:	52                   	push   edx
  bf06fd:	53                   	push   ebx
  bf06fe:	56                   	push   esi
  bf06ff:	e8 50 ff ff ff       	call   0xbf0654
  bf0704:	83 c4 10             	add    esp,0x10
  bf0707:	8b f0                	mov    esi,eax
  bf0709:	85 f6                	test   esi,esi
  bf070b:	74 0a                	je     0xbf0717
  bf070d:	53                   	push   ebx
  bf070e:	e8 01 18 0a 00       	call   0xc91f14
  bf0713:	8b c6                	mov    eax,esi
  bf0715:	eb 08                	jmp    0xbf071f
  bf0717:	53                   	push   ebx
  bf0718:	e8 f7 17 0a 00       	call   0xc91f14
  bf071d:	33 c0                	xor    eax,eax
  bf071f:	5f                   	pop    edi
  bf0720:	5e                   	pop    esi
  bf0721:	5b                   	pop    ebx
  bf0722:	5d                   	pop    ebp
  bf0723:	c3                   	ret
  bf0724:	55                   	push   ebp
  bf0725:	8b ec                	mov    ebp,esp
  bf0727:	51                   	push   ecx
  bf0728:	53                   	push   ebx
  bf0729:	56                   	push   esi
  bf072a:	57                   	push   edi
  bf072b:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  bf072e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0731:	8b c7                	mov    eax,edi
  bf0733:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0736:	24 ff                	and    al,0xff
  bf0738:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf073b:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
  bf073e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf0741:	52                   	push   edx
  bf0742:	6a 01                	push   0x1
  bf0744:	51                   	push   ecx
  bf0745:	68 1a 04 00 00       	push   0x41a
  bf074a:	56                   	push   esi
  bf074b:	53                   	push   ebx
  bf074c:	e8 57 ea ff ff       	call   0xbef1a8
  bf0751:	83 c4 18             	add    esp,0x18
  bf0754:	85 c0                	test   eax,eax
  bf0756:	74 07                	je     0xbf075f
  bf0758:	05 e8 03 00 00       	add    eax,0x3e8
  bf075d:	eb 35                	jmp    0xbf0794
  bf075f:	0f b7 d7             	movzx  edx,di
  bf0762:	81 e2 00 ff 00 00    	and    edx,0xff00
  bf0768:	c1 fa 08             	sar    edx,0x8
  bf076b:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf076e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bf0771:	51                   	push   ecx
  bf0772:	8d 4d fe             	lea    ecx,[ebp-0x2]
  bf0775:	6a 01                	push   0x1
  bf0777:	51                   	push   ecx
  bf0778:	68 1b 04 00 00       	push   0x41b
  bf077d:	56                   	push   esi
  bf077e:	53                   	push   ebx
  bf077f:	e8 24 ea ff ff       	call   0xbef1a8
  bf0784:	83 c4 18             	add    esp,0x18
  bf0787:	85 c0                	test   eax,eax
  bf0789:	74 07                	je     0xbf0792
  bf078b:	05 d0 07 00 00       	add    eax,0x7d0
  bf0790:	eb 02                	jmp    0xbf0794
  bf0792:	33 c0                	xor    eax,eax
  bf0794:	5f                   	pop    edi
  bf0795:	5e                   	pop    esi
  bf0796:	5b                   	pop    ebx
  bf0797:	59                   	pop    ecx
  bf0798:	5d                   	pop    ebp
  bf0799:	c3                   	ret
  bf079a:	90                   	nop
  bf079b:	90                   	nop
  bf079c:	55                   	push   ebp
  bf079d:	8b ec                	mov    ebp,esp
  bf079f:	53                   	push   ebx
  bf07a0:	56                   	push   esi
  bf07a1:	57                   	push   edi
  bf07a2:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf07a5:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf07a8:	57                   	push   edi
  bf07a9:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf07ad:	50                   	push   eax
  bf07ae:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf07b2:	52                   	push   edx
  bf07b3:	e8 cc e2 ff ff       	call   0xbeea84
  bf07b8:	83 c4 0c             	add    esp,0xc
  bf07bb:	8b d8                	mov    ebx,eax
  bf07bd:	83 fb ff             	cmp    ebx,0xffffffff
  bf07c0:	75 05                	jne    0xbf07c7
  bf07c2:	83 c8 ff             	or     eax,0xffffffff
  bf07c5:	eb 28                	jmp    0xbf07ef
  bf07c7:	57                   	push   edi
  bf07c8:	66 8b 55 14          	mov    dx,WORD PTR [ebp+0x14]
  bf07cc:	52                   	push   edx
  bf07cd:	53                   	push   ebx
  bf07ce:	56                   	push   esi
  bf07cf:	e8 50 ff ff ff       	call   0xbf0724
  bf07d4:	83 c4 10             	add    esp,0x10
  bf07d7:	8b f0                	mov    esi,eax
  bf07d9:	85 f6                	test   esi,esi
  bf07db:	74 0a                	je     0xbf07e7
  bf07dd:	53                   	push   ebx
  bf07de:	e8 31 17 0a 00       	call   0xc91f14
  bf07e3:	8b c6                	mov    eax,esi
  bf07e5:	eb 08                	jmp    0xbf07ef
  bf07e7:	53                   	push   ebx
  bf07e8:	e8 27 17 0a 00       	call   0xc91f14
  bf07ed:	33 c0                	xor    eax,eax
  bf07ef:	5f                   	pop    edi
  bf07f0:	5e                   	pop    esi
  bf07f1:	5b                   	pop    ebx
  bf07f2:	5d                   	pop    ebp
  bf07f3:	c3                   	ret
  bf07f4:	55                   	push   ebp
  bf07f5:	8b ec                	mov    ebp,esp
  bf07f7:	51                   	push   ecx
  bf07f8:	53                   	push   ebx
  bf07f9:	56                   	push   esi
  bf07fa:	57                   	push   edi
  bf07fb:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf07fe:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0801:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0804:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0807:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf080b:	57                   	push   edi
  bf080c:	6a 01                	push   0x1
  bf080e:	50                   	push   eax
  bf080f:	68 34 04 00 00       	push   0x434
  bf0814:	56                   	push   esi
  bf0815:	53                   	push   ebx
  bf0816:	e8 59 eb ff ff       	call   0xbef374
  bf081b:	83 c4 18             	add    esp,0x18
  bf081e:	85 c0                	test   eax,eax
  bf0820:	74 0a                	je     0xbf082c
  bf0822:	05 e8 03 00 00       	add    eax,0x3e8
  bf0827:	e9 81 00 00 00       	jmp    0xbf08ad
  bf082c:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf082f:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf0832:	80 e2 f8             	and    dl,0xf8
  bf0835:	0a 55 10             	or     dl,BYTE PTR [ebp+0x10]
  bf0838:	88 55 ff             	mov    BYTE PTR [ebp-0x1],dl
  bf083b:	57                   	push   edi
  bf083c:	6a 01                	push   0x1
  bf083e:	51                   	push   ecx
  bf083f:	68 34 04 00 00       	push   0x434
  bf0844:	56                   	push   esi
  bf0845:	53                   	push   ebx
  bf0846:	e8 5d e9 ff ff       	call   0xbef1a8
  bf084b:	83 c4 18             	add    esp,0x18
  bf084e:	85 c0                	test   eax,eax
  bf0850:	74 07                	je     0xbf0859
  bf0852:	05 d0 07 00 00       	add    eax,0x7d0
  bf0857:	eb 54                	jmp    0xbf08ad
  bf0859:	c6 45 fe 00          	mov    BYTE PTR [ebp-0x2],0x0
  bf085d:	57                   	push   edi
  bf085e:	8d 55 fe             	lea    edx,[ebp-0x2]
  bf0861:	6a 01                	push   0x1
  bf0863:	52                   	push   edx
  bf0864:	68 35 04 00 00       	push   0x435
  bf0869:	56                   	push   esi
  bf086a:	53                   	push   ebx
  bf086b:	e8 04 eb ff ff       	call   0xbef374
  bf0870:	83 c4 18             	add    esp,0x18
  bf0873:	85 c0                	test   eax,eax
  bf0875:	74 07                	je     0xbf087e
  bf0877:	05 b8 0b 00 00       	add    eax,0xbb8
  bf087c:	eb 2f                	jmp    0xbf08ad
  bf087e:	8a 55 fe             	mov    dl,BYTE PTR [ebp-0x2]
  bf0881:	8d 4d fe             	lea    ecx,[ebp-0x2]
  bf0884:	80 e2 f8             	and    dl,0xf8
  bf0887:	0a 55 10             	or     dl,BYTE PTR [ebp+0x10]
  bf088a:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf088d:	57                   	push   edi
  bf088e:	6a 01                	push   0x1
  bf0890:	51                   	push   ecx
  bf0891:	68 35 04 00 00       	push   0x435
  bf0896:	56                   	push   esi
  bf0897:	53                   	push   ebx
  bf0898:	e8 0b e9 ff ff       	call   0xbef1a8
  bf089d:	83 c4 18             	add    esp,0x18
  bf08a0:	85 c0                	test   eax,eax
  bf08a2:	74 07                	je     0xbf08ab
  bf08a4:	05 a0 0f 00 00       	add    eax,0xfa0
  bf08a9:	eb 02                	jmp    0xbf08ad
  bf08ab:	33 c0                	xor    eax,eax
  bf08ad:	5f                   	pop    edi
  bf08ae:	5e                   	pop    esi
  bf08af:	5b                   	pop    ebx
  bf08b0:	59                   	pop    ecx
  bf08b1:	5d                   	pop    ebp
  bf08b2:	c3                   	ret
  bf08b3:	90                   	nop
  bf08b4:	55                   	push   ebp
  bf08b5:	8b ec                	mov    ebp,esp
  bf08b7:	53                   	push   ebx
  bf08b8:	56                   	push   esi
  bf08b9:	57                   	push   edi
  bf08ba:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf08bd:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf08c0:	57                   	push   edi
  bf08c1:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf08c5:	50                   	push   eax
  bf08c6:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf08ca:	52                   	push   edx
  bf08cb:	e8 b4 e1 ff ff       	call   0xbeea84
  bf08d0:	83 c4 0c             	add    esp,0xc
  bf08d3:	8b d8                	mov    ebx,eax
  bf08d5:	83 fb ff             	cmp    ebx,0xffffffff
  bf08d8:	75 05                	jne    0xbf08df
  bf08da:	83 c8 ff             	or     eax,0xffffffff
  bf08dd:	eb 27                	jmp    0xbf0906
  bf08df:	57                   	push   edi
  bf08e0:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  bf08e3:	52                   	push   edx
  bf08e4:	53                   	push   ebx
  bf08e5:	56                   	push   esi
  bf08e6:	e8 09 ff ff ff       	call   0xbf07f4
  bf08eb:	83 c4 10             	add    esp,0x10
  bf08ee:	8b f0                	mov    esi,eax
  bf08f0:	85 f6                	test   esi,esi
  bf08f2:	74 0a                	je     0xbf08fe
  bf08f4:	53                   	push   ebx
  bf08f5:	e8 1a 16 0a 00       	call   0xc91f14
  bf08fa:	8b c6                	mov    eax,esi
  bf08fc:	eb 08                	jmp    0xbf0906
  bf08fe:	53                   	push   ebx
  bf08ff:	e8 10 16 0a 00       	call   0xc91f14
  bf0904:	33 c0                	xor    eax,eax
  bf0906:	5f                   	pop    edi
  bf0907:	5e                   	pop    esi
  bf0908:	5b                   	pop    ebx
  bf0909:	5d                   	pop    ebp
  bf090a:	c3                   	ret
  bf090b:	90                   	nop
  bf090c:	55                   	push   ebp
  bf090d:	8b ec                	mov    ebp,esp
  bf090f:	51                   	push   ecx
  bf0910:	53                   	push   ebx
  bf0911:	56                   	push   esi
  bf0912:	57                   	push   edi
  bf0913:	8b 7d 20             	mov    edi,DWORD PTR [ebp+0x20]
  bf0916:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0919:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf091c:	33 c0                	xor    eax,eax
  bf091e:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
  bf0921:	83 f8 07             	cmp    eax,0x7
  bf0924:	0f 87 a5 00 00 00    	ja     0xbf09cf
  bf092a:	ff 24 85 31 09 bf 00 	jmp    DWORD PTR [eax*4+0xbf0931]
  bf0931:	cf                   	iret
  bf0932:	09 bf 00 51 09 bf    	or     DWORD PTR [edi-0x40f6af00],edi
  bf0938:	00 63 09             	add    BYTE PTR [ebx+0x9],ah
  bf093b:	bf 00 75 09 bf       	mov    edi,0xbf097500
  bf0940:	00 87 09 bf 00 99    	add    BYTE PTR [edi-0x66ff40f7],al
  bf0946:	09 bf 00 ab 09 bf    	or     DWORD PTR [edi-0x40f65500],edi
  bf094c:	00 bd 09 bf 00 66    	add    BYTE PTR [ebp+0x6600bf09],bh
  bf0952:	c7 45 fe 3b 04 66 c7 	mov    DWORD PTR [ebp-0x2],0xc766043b
  bf0959:	45                   	inc    ebp
  bf095a:	fc                   	cld
  bf095b:	3c 04                	cmp    al,0x4
  bf095d:	66 b8 3a 04          	mov    ax,0x43a
  bf0961:	eb 71                	jmp    0xbf09d4
  bf0963:	66 c7 45 fe 3e 04    	mov    WORD PTR [ebp-0x2],0x43e
  bf0969:	66 c7 45 fc 3f 04    	mov    WORD PTR [ebp-0x4],0x43f
  bf096f:	66 b8 3d 04          	mov    ax,0x43d
  bf0973:	eb 5f                	jmp    0xbf09d4
  bf0975:	66 c7 45 fe 41 04    	mov    WORD PTR [ebp-0x2],0x441
  bf097b:	66 c7 45 fc 42 04    	mov    WORD PTR [ebp-0x4],0x442
  bf0981:	66 b8 40 04          	mov    ax,0x440
  bf0985:	eb 4d                	jmp    0xbf09d4
  bf0987:	66 c7 45 fe 44 04    	mov    WORD PTR [ebp-0x2],0x444
  bf098d:	66 c7 45 fc 45 04    	mov    WORD PTR [ebp-0x4],0x445
  bf0993:	66 b8 43 04          	mov    ax,0x443
  bf0997:	eb 3b                	jmp    0xbf09d4
  bf0999:	66 c7 45 fe 47 04    	mov    WORD PTR [ebp-0x2],0x447
  bf099f:	66 c7 45 fc 48 04    	mov    WORD PTR [ebp-0x4],0x448
  bf09a5:	66 b8 46 04          	mov    ax,0x446
  bf09a9:	eb 29                	jmp    0xbf09d4
  bf09ab:	66 c7 45 fe 4a 04    	mov    WORD PTR [ebp-0x2],0x44a
  bf09b1:	66 c7 45 fc 4b 04    	mov    WORD PTR [ebp-0x4],0x44b
  bf09b7:	66 b8 49 04          	mov    ax,0x449
  bf09bb:	eb 17                	jmp    0xbf09d4
  bf09bd:	66 c7 45 fe 4d 04    	mov    WORD PTR [ebp-0x2],0x44d
  bf09c3:	66 c7 45 fc 4e 04    	mov    WORD PTR [ebp-0x4],0x44e
  bf09c9:	66 b8 4c 04          	mov    ax,0x44c
  bf09cd:	eb 05                	jmp    0xbf09d4
  bf09cf:	83 c8 ff             	or     eax,0xffffffff
  bf09d2:	eb 61                	jmp    0xbf0a35
  bf09d4:	57                   	push   edi
  bf09d5:	8d 55 14             	lea    edx,[ebp+0x14]
  bf09d8:	6a 01                	push   0x1
  bf09da:	52                   	push   edx
  bf09db:	50                   	push   eax
  bf09dc:	56                   	push   esi
  bf09dd:	53                   	push   ebx
  bf09de:	e8 c5 e7 ff ff       	call   0xbef1a8
  bf09e3:	83 c4 18             	add    esp,0x18
  bf09e6:	85 c0                	test   eax,eax
  bf09e8:	74 07                	je     0xbf09f1
  bf09ea:	05 e8 03 00 00       	add    eax,0x3e8
  bf09ef:	eb 44                	jmp    0xbf0a35
  bf09f1:	57                   	push   edi
  bf09f2:	8d 55 18             	lea    edx,[ebp+0x18]
  bf09f5:	6a 01                	push   0x1
  bf09f7:	52                   	push   edx
  bf09f8:	66 8b 4d fe          	mov    cx,WORD PTR [ebp-0x2]
  bf09fc:	51                   	push   ecx
  bf09fd:	56                   	push   esi
  bf09fe:	53                   	push   ebx
  bf09ff:	e8 a4 e7 ff ff       	call   0xbef1a8
  bf0a04:	83 c4 18             	add    esp,0x18
  bf0a07:	85 c0                	test   eax,eax
  bf0a09:	74 07                	je     0xbf0a12
  bf0a0b:	05 d0 07 00 00       	add    eax,0x7d0
  bf0a10:	eb 23                	jmp    0xbf0a35
  bf0a12:	57                   	push   edi
  bf0a13:	8d 55 1c             	lea    edx,[ebp+0x1c]
  bf0a16:	6a 01                	push   0x1
  bf0a18:	52                   	push   edx
  bf0a19:	66 8b 4d fc          	mov    cx,WORD PTR [ebp-0x4]
  bf0a1d:	51                   	push   ecx
  bf0a1e:	56                   	push   esi
  bf0a1f:	53                   	push   ebx
  bf0a20:	e8 83 e7 ff ff       	call   0xbef1a8
  bf0a25:	83 c4 18             	add    esp,0x18
  bf0a28:	85 c0                	test   eax,eax
  bf0a2a:	74 07                	je     0xbf0a33
  bf0a2c:	05 b8 0b 00 00       	add    eax,0xbb8
  bf0a31:	eb 02                	jmp    0xbf0a35
  bf0a33:	33 c0                	xor    eax,eax
  bf0a35:	5f                   	pop    edi
  bf0a36:	5e                   	pop    esi
  bf0a37:	5b                   	pop    ebx
  bf0a38:	59                   	pop    ecx
  bf0a39:	5d                   	pop    ebp
  bf0a3a:	c3                   	ret
  bf0a3b:	90                   	nop
  bf0a3c:	55                   	push   ebp
  bf0a3d:	8b ec                	mov    ebp,esp
  bf0a3f:	53                   	push   ebx
  bf0a40:	56                   	push   esi
  bf0a41:	57                   	push   edi
  bf0a42:	8b 7d 24             	mov    edi,DWORD PTR [ebp+0x24]
  bf0a45:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0a48:	57                   	push   edi
  bf0a49:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0a4d:	50                   	push   eax
  bf0a4e:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0a52:	52                   	push   edx
  bf0a53:	e8 2c e0 ff ff       	call   0xbeea84
  bf0a58:	83 c4 0c             	add    esp,0xc
  bf0a5b:	8b d8                	mov    ebx,eax
  bf0a5d:	83 fb ff             	cmp    ebx,0xffffffff
  bf0a60:	75 05                	jne    0xbf0a67
  bf0a62:	83 c8 ff             	or     eax,0xffffffff
  bf0a65:	eb 33                	jmp    0xbf0a9a
  bf0a67:	57                   	push   edi
  bf0a68:	8a 55 20             	mov    dl,BYTE PTR [ebp+0x20]
  bf0a6b:	52                   	push   edx
  bf0a6c:	8a 4d 1c             	mov    cl,BYTE PTR [ebp+0x1c]
  bf0a6f:	51                   	push   ecx
  bf0a70:	8a 4d 18             	mov    cl,BYTE PTR [ebp+0x18]
  bf0a73:	51                   	push   ecx
  bf0a74:	8a 45 14             	mov    al,BYTE PTR [ebp+0x14]
  bf0a77:	50                   	push   eax
  bf0a78:	53                   	push   ebx
  bf0a79:	56                   	push   esi
  bf0a7a:	e8 8d fe ff ff       	call   0xbf090c
  bf0a7f:	83 c4 1c             	add    esp,0x1c
  bf0a82:	8b f0                	mov    esi,eax
  bf0a84:	85 f6                	test   esi,esi
  bf0a86:	74 0a                	je     0xbf0a92
  bf0a88:	53                   	push   ebx
  bf0a89:	e8 86 14 0a 00       	call   0xc91f14
  bf0a8e:	8b c6                	mov    eax,esi
  bf0a90:	eb 08                	jmp    0xbf0a9a
  bf0a92:	53                   	push   ebx
  bf0a93:	e8 7c 14 0a 00       	call   0xc91f14
  bf0a98:	33 c0                	xor    eax,eax
  bf0a9a:	5f                   	pop    edi
  bf0a9b:	5e                   	pop    esi
  bf0a9c:	5b                   	pop    ebx
  bf0a9d:	5d                   	pop    ebp
  bf0a9e:	c3                   	ret
  bf0a9f:	90                   	nop
  bf0aa0:	55                   	push   ebp
  bf0aa1:	8b ec                	mov    ebp,esp
  bf0aa3:	51                   	push   ecx
  bf0aa4:	53                   	push   ebx
  bf0aa5:	56                   	push   esi
  bf0aa6:	57                   	push   edi
  bf0aa7:	8b 75 2c             	mov    esi,DWORD PTR [ebp+0x2c]
  bf0aaa:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  bf0aad:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf0ab0:	33 db                	xor    ebx,ebx
  bf0ab2:	8a da                	mov    bl,dl
  bf0ab4:	81 fb a2 00 00 00    	cmp    ebx,0xa2
  bf0aba:	75 0f                	jne    0xbf0acb
  bf0abc:	c6 45 ff 28          	mov    BYTE PTR [ebp-0x1],0x28
  bf0ac0:	c6 45 fe 29          	mov    BYTE PTR [ebp-0x2],0x29
  bf0ac4:	b1 27                	mov    cl,0x27
  bf0ac6:	e9 76 01 00 00       	jmp    0xbf0c41
  bf0acb:	81 fb a3 00 00 00    	cmp    ebx,0xa3
  bf0ad1:	75 0f                	jne    0xbf0ae2
  bf0ad3:	c6 45 ff 2b          	mov    BYTE PTR [ebp-0x1],0x2b
  bf0ad7:	c6 45 fe 2c          	mov    BYTE PTR [ebp-0x2],0x2c
  bf0adb:	b1 2a                	mov    cl,0x2a
  bf0add:	e9 5f 01 00 00       	jmp    0xbf0c41
  bf0ae2:	81 fb a4 00 00 00    	cmp    ebx,0xa4
  bf0ae8:	75 0f                	jne    0xbf0af9
  bf0aea:	c6 45 ff 2e          	mov    BYTE PTR [ebp-0x1],0x2e
  bf0aee:	c6 45 fe 2f          	mov    BYTE PTR [ebp-0x2],0x2f
  bf0af2:	b1 2d                	mov    cl,0x2d
  bf0af4:	e9 48 01 00 00       	jmp    0xbf0c41
  bf0af9:	81 fb a5 00 00 00    	cmp    ebx,0xa5
  bf0aff:	75 3f                	jne    0xbf0b40
  bf0b01:	33 c9                	xor    ecx,ecx
  bf0b03:	8a c8                	mov    cl,al
  bf0b05:	83 f9 05             	cmp    ecx,0x5
  bf0b08:	7f 1b                	jg     0xbf0b25
  bf0b0a:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0b0d:	8b ca                	mov    ecx,edx
  bf0b0f:	8b da                	mov    ebx,edx
  bf0b11:	80 c3 2f             	add    bl,0x2f
  bf0b14:	80 c1 2e             	add    cl,0x2e
  bf0b17:	80 c2 30             	add    dl,0x30
  bf0b1a:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0b1d:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0b20:	e9 1c 01 00 00       	jmp    0xbf0c41
  bf0b25:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0b28:	8b ca                	mov    ecx,edx
  bf0b2a:	8b da                	mov    ebx,edx
  bf0b2c:	80 c3 30             	add    bl,0x30
  bf0b2f:	80 c1 2f             	add    cl,0x2f
  bf0b32:	80 c2 31             	add    dl,0x31
  bf0b35:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0b38:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0b3b:	e9 01 01 00 00       	jmp    0xbf0c41
  bf0b40:	33 db                	xor    ebx,ebx
  bf0b42:	8a da                	mov    bl,dl
  bf0b44:	81 fb a6 00 00 00    	cmp    ebx,0xa6
  bf0b4a:	75 3f                	jne    0xbf0b8b
  bf0b4c:	33 c9                	xor    ecx,ecx
  bf0b4e:	8a c8                	mov    cl,al
  bf0b50:	83 f9 05             	cmp    ecx,0x5
  bf0b53:	7f 1b                	jg     0xbf0b70
  bf0b55:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0b58:	8b ca                	mov    ecx,edx
  bf0b5a:	8b da                	mov    ebx,edx
  bf0b5c:	80 c3 0f             	add    bl,0xf
  bf0b5f:	80 c1 0e             	add    cl,0xe
  bf0b62:	80 c2 10             	add    dl,0x10
  bf0b65:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0b68:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0b6b:	e9 d1 00 00 00       	jmp    0xbf0c41
  bf0b70:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0b73:	8b ca                	mov    ecx,edx
  bf0b75:	8b da                	mov    ebx,edx
  bf0b77:	80 c3 10             	add    bl,0x10
  bf0b7a:	80 c1 0f             	add    cl,0xf
  bf0b7d:	80 c2 11             	add    dl,0x11
  bf0b80:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0b83:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0b86:	e9 b6 00 00 00       	jmp    0xbf0c41
  bf0b8b:	33 db                	xor    ebx,ebx
  bf0b8d:	8a da                	mov    bl,dl
  bf0b8f:	81 fb a7 00 00 00    	cmp    ebx,0xa7
  bf0b95:	75 0f                	jne    0xbf0ba6
  bf0b97:	b8 01 00 00 00       	mov    eax,0x1
  bf0b9c:	e9 65 01 00 00       	jmp    0xbf0d06
  bf0ba1:	e9 9b 00 00 00       	jmp    0xbf0c41
  bf0ba6:	81 fb a8 00 00 00    	cmp    ebx,0xa8
  bf0bac:	75 0f                	jne    0xbf0bbd
  bf0bae:	b8 02 00 00 00       	mov    eax,0x2
  bf0bb3:	e9 4e 01 00 00       	jmp    0xbf0d06
  bf0bb8:	e9 84 00 00 00       	jmp    0xbf0c41
  bf0bbd:	81 fb a9 00 00 00    	cmp    ebx,0xa9
  bf0bc3:	75 0c                	jne    0xbf0bd1
  bf0bc5:	b8 03 00 00 00       	mov    eax,0x3
  bf0bca:	e9 37 01 00 00       	jmp    0xbf0d06
  bf0bcf:	eb 70                	jmp    0xbf0c41
  bf0bd1:	81 fb aa 00 00 00    	cmp    ebx,0xaa
  bf0bd7:	75 0c                	jne    0xbf0be5
  bf0bd9:	b8 04 00 00 00       	mov    eax,0x4
  bf0bde:	e9 23 01 00 00       	jmp    0xbf0d06
  bf0be3:	eb 5c                	jmp    0xbf0c41
  bf0be5:	81 fb ab 00 00 00    	cmp    ebx,0xab
  bf0beb:	75 54                	jne    0xbf0c41
  bf0bed:	33 c9                	xor    ecx,ecx
  bf0bef:	8a c8                	mov    cl,al
  bf0bf1:	83 f9 05             	cmp    ecx,0x5
  bf0bf4:	7f 18                	jg     0xbf0c0e
  bf0bf6:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0bf9:	8b ca                	mov    ecx,edx
  bf0bfb:	8b da                	mov    ebx,edx
  bf0bfd:	80 c3 4f             	add    bl,0x4f
  bf0c00:	80 c1 4e             	add    cl,0x4e
  bf0c03:	80 c2 50             	add    dl,0x50
  bf0c06:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0c09:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0c0c:	eb 33                	jmp    0xbf0c41
  bf0c0e:	83 f9 0a             	cmp    ecx,0xa
  bf0c11:	7f 18                	jg     0xbf0c2b
  bf0c13:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0c16:	8b ca                	mov    ecx,edx
  bf0c18:	8b da                	mov    ebx,edx
  bf0c1a:	80 c3 50             	add    bl,0x50
  bf0c1d:	80 c1 4f             	add    cl,0x4f
  bf0c20:	80 c2 51             	add    dl,0x51
  bf0c23:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0c26:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0c29:	eb 16                	jmp    0xbf0c41
  bf0c2b:	8d 14 49             	lea    edx,[ecx+ecx*2]
  bf0c2e:	8b ca                	mov    ecx,edx
  bf0c30:	8b da                	mov    ebx,edx
  bf0c32:	80 c3 54             	add    bl,0x54
  bf0c35:	80 c1 53             	add    cl,0x53
  bf0c38:	80 c2 55             	add    dl,0x55
  bf0c3b:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  bf0c3e:	88 55 fe             	mov    BYTE PTR [ebp-0x2],dl
  bf0c41:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  bf0c44:	8d 5d 1c             	lea    ebx,[ebp+0x1c]
  bf0c47:	50                   	push   eax
  bf0c48:	56                   	push   esi
  bf0c49:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  bf0c4c:	52                   	push   edx
  bf0c4d:	6a 01                	push   0x1
  bf0c4f:	53                   	push   ebx
  bf0c50:	6a 01                	push   0x1
  bf0c52:	6a 00                	push   0x0
  bf0c54:	51                   	push   ecx
  bf0c55:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
  bf0c58:	50                   	push   eax
  bf0c59:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bf0c5c:	52                   	push   edx
  bf0c5d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  bf0c60:	51                   	push   ecx
  bf0c61:	e8 82 ee ff ff       	call   0xbefae8
  bf0c66:	83 c4 2c             	add    esp,0x2c
  bf0c69:	85 c0                	test   eax,eax
  bf0c6b:	74 0a                	je     0xbf0c77
  bf0c6d:	05 e8 03 00 00       	add    eax,0x3e8
  bf0c72:	e9 8f 00 00 00       	jmp    0xbf0d06
  bf0c77:	85 f6                	test   esi,esi
  bf0c79:	74 07                	je     0xbf0c82
  bf0c7b:	56                   	push   esi
  bf0c7c:	e8 93 dd ff ff       	call   0xbeea14
  bf0c81:	59                   	pop    ecx
  bf0c82:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  bf0c85:	8d 7d 20             	lea    edi,[ebp+0x20]
  bf0c88:	52                   	push   edx
  bf0c89:	56                   	push   esi
  bf0c8a:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  bf0c8d:	51                   	push   ecx
  bf0c8e:	6a 01                	push   0x1
  bf0c90:	57                   	push   edi
  bf0c91:	6a 01                	push   0x1
  bf0c93:	6a 00                	push   0x0
  bf0c95:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  bf0c98:	50                   	push   eax
  bf0c99:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
  bf0c9c:	52                   	push   edx
  bf0c9d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bf0ca0:	51                   	push   ecx
  bf0ca1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf0ca4:	50                   	push   eax
  bf0ca5:	e8 3e ee ff ff       	call   0xbefae8
  bf0caa:	83 c4 2c             	add    esp,0x2c
  bf0cad:	85 c0                	test   eax,eax
  bf0caf:	74 07                	je     0xbf0cb8
  bf0cb1:	05 d0 07 00 00       	add    eax,0x7d0
  bf0cb6:	eb 4e                	jmp    0xbf0d06
  bf0cb8:	85 f6                	test   esi,esi
  bf0cba:	74 07                	je     0xbf0cc3
  bf0cbc:	56                   	push   esi
  bf0cbd:	e8 52 dd ff ff       	call   0xbeea14
  bf0cc2:	59                   	pop    ecx
  bf0cc3:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  bf0cc6:	8d 7d 24             	lea    edi,[ebp+0x24]
  bf0cc9:	52                   	push   edx
  bf0cca:	56                   	push   esi
  bf0ccb:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  bf0cce:	51                   	push   ecx
  bf0ccf:	6a 01                	push   0x1
  bf0cd1:	57                   	push   edi
  bf0cd2:	6a 01                	push   0x1
  bf0cd4:	6a 00                	push   0x0
  bf0cd6:	8a 45 fe             	mov    al,BYTE PTR [ebp-0x2]
  bf0cd9:	50                   	push   eax
  bf0cda:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
  bf0cdd:	52                   	push   edx
  bf0cde:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bf0ce1:	51                   	push   ecx
  bf0ce2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf0ce5:	50                   	push   eax
  bf0ce6:	e8 fd ed ff ff       	call   0xbefae8
  bf0ceb:	83 c4 2c             	add    esp,0x2c
  bf0cee:	85 c0                	test   eax,eax
  bf0cf0:	74 07                	je     0xbf0cf9
  bf0cf2:	05 b8 0b 00 00       	add    eax,0xbb8
  bf0cf7:	eb 0d                	jmp    0xbf0d06
  bf0cf9:	85 f6                	test   esi,esi
  bf0cfb:	74 07                	je     0xbf0d04
  bf0cfd:	56                   	push   esi
  bf0cfe:	e8 11 dd ff ff       	call   0xbeea14
  bf0d03:	59                   	pop    ecx
  bf0d04:	33 c0                	xor    eax,eax
  bf0d06:	5f                   	pop    edi
  bf0d07:	5e                   	pop    esi
  bf0d08:	5b                   	pop    ebx
  bf0d09:	59                   	pop    ecx
  bf0d0a:	5d                   	pop    ebp
  bf0d0b:	c3                   	ret
  bf0d0c:	55                   	push   ebp
  bf0d0d:	8b ec                	mov    ebp,esp
  bf0d0f:	53                   	push   ebx
  bf0d10:	56                   	push   esi
  bf0d11:	57                   	push   edi
  bf0d12:	8b 7d 34             	mov    edi,DWORD PTR [ebp+0x34]
  bf0d15:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0d18:	57                   	push   edi
  bf0d19:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0d1d:	50                   	push   eax
  bf0d1e:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0d22:	52                   	push   edx
  bf0d23:	e8 5c dd ff ff       	call   0xbeea84
  bf0d28:	83 c4 0c             	add    esp,0xc
  bf0d2b:	8b d8                	mov    ebx,eax
  bf0d2d:	83 fb ff             	cmp    ebx,0xffffffff
  bf0d30:	75 05                	jne    0xbf0d37
  bf0d32:	83 c8 ff             	or     eax,0xffffffff
  bf0d35:	eb 43                	jmp    0xbf0d7a
  bf0d37:	57                   	push   edi
  bf0d38:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  bf0d3b:	52                   	push   edx
  bf0d3c:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  bf0d3f:	51                   	push   ecx
  bf0d40:	8a 4d 28             	mov    cl,BYTE PTR [ebp+0x28]
  bf0d43:	51                   	push   ecx
  bf0d44:	8a 45 24             	mov    al,BYTE PTR [ebp+0x24]
  bf0d47:	50                   	push   eax
  bf0d48:	8a 55 20             	mov    dl,BYTE PTR [ebp+0x20]
  bf0d4b:	52                   	push   edx
  bf0d4c:	8a 4d 1c             	mov    cl,BYTE PTR [ebp+0x1c]
  bf0d4f:	51                   	push   ecx
  bf0d50:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
  bf0d53:	50                   	push   eax
  bf0d54:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  bf0d57:	52                   	push   edx
  bf0d58:	53                   	push   ebx
  bf0d59:	56                   	push   esi
  bf0d5a:	e8 41 fd ff ff       	call   0xbf0aa0
  bf0d5f:	83 c4 2c             	add    esp,0x2c
  bf0d62:	8b f0                	mov    esi,eax
  bf0d64:	85 f6                	test   esi,esi
  bf0d66:	74 0a                	je     0xbf0d72
  bf0d68:	53                   	push   ebx
  bf0d69:	e8 a6 11 0a 00       	call   0xc91f14
  bf0d6e:	8b c6                	mov    eax,esi
  bf0d70:	eb 08                	jmp    0xbf0d7a
  bf0d72:	53                   	push   ebx
  bf0d73:	e8 9c 11 0a 00       	call   0xc91f14
  bf0d78:	33 c0                	xor    eax,eax
  bf0d7a:	5f                   	pop    edi
  bf0d7b:	5e                   	pop    esi
  bf0d7c:	5b                   	pop    ebx
  bf0d7d:	5d                   	pop    ebp
  bf0d7e:	c3                   	ret
  bf0d7f:	90                   	nop
  bf0d80:	55                   	push   ebp
  bf0d81:	8b ec                	mov    ebp,esp
  bf0d83:	33 d2                	xor    edx,edx
  bf0d85:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  bf0d88:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf0d8b:	81 c2 5f ff ff ff    	add    edx,0xffffff5f
  bf0d91:	83 fa 0a             	cmp    edx,0xa
  bf0d94:	77 6b                	ja     0xbf0e01
  bf0d96:	ff 24 95 9d 0d bf 00 	jmp    DWORD PTR [edx*4+0xbf0d9d]
  bf0d9d:	c9                   	leave
  bf0d9e:	0d bf 00 cd 0d       	or     eax,0xdcd00bf
  bf0da3:	bf 00 d1 0d bf       	mov    edi,0xbf0dd100
  bf0da8:	00 d5                	add    ch,dl
  bf0daa:	0d bf 00 d9 0d       	or     eax,0xdd900bf
  bf0daf:	bf 00 dd 0d bf       	mov    edi,0xbf0ddd00
  bf0db4:	00 e1                	add    cl,ah
  bf0db6:	0d bf 00 e8 0d       	or     eax,0xde800bf
  bf0dbb:	bf 00 ef 0d bf       	mov    edi,0xbf0def00
  bf0dc0:	00 f6                	add    dh,dh
  bf0dc2:	0d bf 00 fd 0d       	or     eax,0xdfd00bf
  bf0dc7:	bf 00 b2 a1 eb       	mov    edi,0xeba1b200
  bf0dcc:	3b b2 a2 eb 37 b2    	cmp    esi,DWORD PTR [edx-0x4dc8145e]
  bf0dd2:	a3 eb 33 b2 a4       	mov    ds:0xa4b233eb,eax
  bf0dd7:	eb 2f                	jmp    0xbf0e08
  bf0dd9:	b2 a5                	mov    dl,0xa5
  bf0ddb:	eb 2b                	jmp    0xbf0e08
  bf0ddd:	b2 a6                	mov    dl,0xa6
  bf0ddf:	eb 27                	jmp    0xbf0e08
  bf0de1:	b8 02 00 00 00       	mov    eax,0x2
  bf0de6:	5d                   	pop    ebp
  bf0de7:	c3                   	ret
  bf0de8:	b8 03 00 00 00       	mov    eax,0x3
  bf0ded:	5d                   	pop    ebp
  bf0dee:	c3                   	ret
  bf0def:	b8 04 00 00 00       	mov    eax,0x4
  bf0df4:	5d                   	pop    ebp
  bf0df5:	c3                   	ret
  bf0df6:	b8 05 00 00 00       	mov    eax,0x5
  bf0dfb:	5d                   	pop    ebp
  bf0dfc:	c3                   	ret
  bf0dfd:	b2 ab                	mov    dl,0xab
  bf0dff:	eb 07                	jmp    0xbf0e08
  bf0e01:	b8 06 00 00 00       	mov    eax,0x6
  bf0e06:	5d                   	pop    ebp
  bf0e07:	c3                   	ret
  bf0e08:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  bf0e0b:	51                   	push   ecx
  bf0e0c:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  bf0e0f:	51                   	push   ecx
  bf0e10:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  bf0e13:	51                   	push   ecx
  bf0e14:	6a 01                	push   0x1
  bf0e16:	8d 4d 18             	lea    ecx,[ebp+0x18]
  bf0e19:	51                   	push   ecx
  bf0e1a:	6a 01                	push   0x1
  bf0e1c:	6a 00                	push   0x0
  bf0e1e:	52                   	push   edx
  bf0e1f:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
  bf0e22:	52                   	push   edx
  bf0e23:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bf0e26:	52                   	push   edx
  bf0e27:	50                   	push   eax
  bf0e28:	e8 bb ec ff ff       	call   0xbefae8
  bf0e2d:	83 c4 2c             	add    esp,0x2c
  bf0e30:	85 c0                	test   eax,eax
  bf0e32:	74 07                	je     0xbf0e3b
  bf0e34:	05 e8 03 00 00       	add    eax,0x3e8
  bf0e39:	5d                   	pop    ebp
  bf0e3a:	c3                   	ret
  bf0e3b:	33 c0                	xor    eax,eax
  bf0e3d:	5d                   	pop    ebp
  bf0e3e:	c3                   	ret
  bf0e3f:	90                   	nop
  bf0e40:	55                   	push   ebp
  bf0e41:	8b ec                	mov    ebp,esp
  bf0e43:	53                   	push   ebx
  bf0e44:	56                   	push   esi
  bf0e45:	57                   	push   edi
  bf0e46:	8b 7d 28             	mov    edi,DWORD PTR [ebp+0x28]
  bf0e49:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0e4c:	57                   	push   edi
  bf0e4d:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0e51:	50                   	push   eax
  bf0e52:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0e56:	52                   	push   edx
  bf0e57:	e8 28 dc ff ff       	call   0xbeea84
  bf0e5c:	83 c4 0c             	add    esp,0xc
  bf0e5f:	8b d8                	mov    ebx,eax
  bf0e61:	83 fb ff             	cmp    ebx,0xffffffff
  bf0e64:	75 05                	jne    0xbf0e6b
  bf0e66:	83 c8 ff             	or     eax,0xffffffff
  bf0e69:	eb 37                	jmp    0xbf0ea2
  bf0e6b:	57                   	push   edi
  bf0e6c:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  bf0e6f:	52                   	push   edx
  bf0e70:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  bf0e73:	51                   	push   ecx
  bf0e74:	8a 4d 1c             	mov    cl,BYTE PTR [ebp+0x1c]
  bf0e77:	51                   	push   ecx
  bf0e78:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
  bf0e7b:	50                   	push   eax
  bf0e7c:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  bf0e7f:	52                   	push   edx
  bf0e80:	53                   	push   ebx
  bf0e81:	56                   	push   esi
  bf0e82:	e8 f9 fe ff ff       	call   0xbf0d80
  bf0e87:	83 c4 20             	add    esp,0x20
  bf0e8a:	8b f0                	mov    esi,eax
  bf0e8c:	85 f6                	test   esi,esi
  bf0e8e:	74 0a                	je     0xbf0e9a
  bf0e90:	53                   	push   ebx
  bf0e91:	e8 7e 10 0a 00       	call   0xc91f14
  bf0e96:	8b c6                	mov    eax,esi
  bf0e98:	eb 08                	jmp    0xbf0ea2
  bf0e9a:	53                   	push   ebx
  bf0e9b:	e8 74 10 0a 00       	call   0xc91f14
  bf0ea0:	33 c0                	xor    eax,eax
  bf0ea2:	5f                   	pop    edi
  bf0ea3:	5e                   	pop    esi
  bf0ea4:	5b                   	pop    ebx
  bf0ea5:	5d                   	pop    ebp
  bf0ea6:	c3                   	ret
  bf0ea7:	90                   	nop
  bf0ea8:	55                   	push   ebp
  bf0ea9:	8b ec                	mov    ebp,esp
  bf0eab:	51                   	push   ecx
  bf0eac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf0eaf:	c6 45 ff 01          	mov    BYTE PTR [ebp-0x1],0x1
  bf0eb3:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  bf0eb6:	52                   	push   edx
  bf0eb7:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  bf0eba:	51                   	push   ecx
  bf0ebb:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf0ebe:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf0ec1:	52                   	push   edx
  bf0ec2:	6a 01                	push   0x1
  bf0ec4:	51                   	push   ecx
  bf0ec5:	6a 01                	push   0x1
  bf0ec7:	6a 00                	push   0x0
  bf0ec9:	68 f7 00 00 00       	push   0xf7
  bf0ece:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
  bf0ed1:	52                   	push   edx
  bf0ed2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bf0ed5:	51                   	push   ecx
  bf0ed6:	50                   	push   eax
  bf0ed7:	e8 0c ec ff ff       	call   0xbefae8
  bf0edc:	83 c4 2c             	add    esp,0x2c
  bf0edf:	85 c0                	test   eax,eax
  bf0ee1:	74 03                	je     0xbf0ee6
  bf0ee3:	59                   	pop    ecx
  bf0ee4:	5d                   	pop    ebp
  bf0ee5:	c3                   	ret
  bf0ee6:	33 c0                	xor    eax,eax
  bf0ee8:	59                   	pop    ecx
  bf0ee9:	5d                   	pop    ebp
  bf0eea:	c3                   	ret
  bf0eeb:	90                   	nop
  bf0eec:	55                   	push   ebp
  bf0eed:	8b ec                	mov    ebp,esp
  bf0eef:	53                   	push   ebx
  bf0ef0:	56                   	push   esi
  bf0ef1:	57                   	push   edi
  bf0ef2:	8b 7d 20             	mov    edi,DWORD PTR [ebp+0x20]
  bf0ef5:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf0ef8:	57                   	push   edi
  bf0ef9:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf0efd:	50                   	push   eax
  bf0efe:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf0f02:	52                   	push   edx
  bf0f03:	e8 7c db ff ff       	call   0xbeea84
  bf0f08:	83 c4 0c             	add    esp,0xc
  bf0f0b:	8b d8                	mov    ebx,eax
  bf0f0d:	83 fb ff             	cmp    ebx,0xffffffff
  bf0f10:	75 05                	jne    0xbf0f17
  bf0f12:	83 c8 ff             	or     eax,0xffffffff
  bf0f15:	eb 2f                	jmp    0xbf0f46
  bf0f17:	57                   	push   edi
  bf0f18:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  bf0f1b:	52                   	push   edx
  bf0f1c:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  bf0f1f:	51                   	push   ecx
  bf0f20:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  bf0f23:	51                   	push   ecx
  bf0f24:	53                   	push   ebx
  bf0f25:	56                   	push   esi
  bf0f26:	e8 7d ff ff ff       	call   0xbf0ea8
  bf0f2b:	83 c4 18             	add    esp,0x18
  bf0f2e:	8b f0                	mov    esi,eax
  bf0f30:	85 f6                	test   esi,esi
  bf0f32:	74 0a                	je     0xbf0f3e
  bf0f34:	53                   	push   ebx
  bf0f35:	e8 da 0f 0a 00       	call   0xc91f14
  bf0f3a:	8b c6                	mov    eax,esi
  bf0f3c:	eb 08                	jmp    0xbf0f46
  bf0f3e:	53                   	push   ebx
  bf0f3f:	e8 d0 0f 0a 00       	call   0xc91f14
  bf0f44:	33 c0                	xor    eax,eax
  bf0f46:	5f                   	pop    edi
  bf0f47:	5e                   	pop    esi
  bf0f48:	5b                   	pop    ebx
  bf0f49:	5d                   	pop    ebp
  bf0f4a:	c3                   	ret
  bf0f4b:	90                   	nop
  bf0f4c:	55                   	push   ebp
  bf0f4d:	8b ec                	mov    ebp,esp
  bf0f4f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf0f52:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bf0f55:	89 90 81 00 00 00    	mov    DWORD PTR [eax+0x81],edx
  bf0f5b:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  bf0f5e:	89 88 85 00 00 00    	mov    DWORD PTR [eax+0x85],ecx
  bf0f64:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf0f67:	89 90 89 00 00 00    	mov    DWORD PTR [eax+0x89],edx
  bf0f6d:	33 c0                	xor    eax,eax
  bf0f6f:	5d                   	pop    ebp
  bf0f70:	c3                   	ret
  bf0f71:	90                   	nop
  bf0f72:	90                   	nop
  bf0f73:	90                   	nop
  bf0f74:	55                   	push   ebp
  bf0f75:	8b ec                	mov    ebp,esp
  bf0f77:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf0f7a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bf0f7d:	89 50 55             	mov    DWORD PTR [eax+0x55],edx
  bf0f80:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  bf0f83:	89 48 59             	mov    DWORD PTR [eax+0x59],ecx
  bf0f86:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf0f89:	89 50 5d             	mov    DWORD PTR [eax+0x5d],edx
  bf0f8c:	33 c0                	xor    eax,eax
  bf0f8e:	5d                   	pop    ebp
  bf0f8f:	c3                   	ret
  bf0f90:	55                   	push   ebp
  bf0f91:	8b ec                	mov    ebp,esp
  bf0f93:	51                   	push   ecx
  bf0f94:	53                   	push   ebx
  bf0f95:	56                   	push   esi
  bf0f96:	57                   	push   edi
  bf0f97:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bf0f9a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf0f9d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bf0fa0:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0fa3:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf0fa7:	57                   	push   edi
  bf0fa8:	6a 01                	push   0x1
  bf0faa:	50                   	push   eax
  bf0fab:	68 00 02 00 00       	push   0x200
  bf0fb0:	56                   	push   esi
  bf0fb1:	53                   	push   ebx
  bf0fb2:	e8 bd e3 ff ff       	call   0xbef374
  bf0fb7:	83 c4 18             	add    esp,0x18
  bf0fba:	85 c0                	test   eax,eax
  bf0fbc:	74 07                	je     0xbf0fc5
  bf0fbe:	05 e8 03 00 00       	add    eax,0x3e8
  bf0fc3:	eb 3a                	jmp    0xbf0fff
  bf0fc5:	83 7d 10 01          	cmp    DWORD PTR [ebp+0x10],0x1
  bf0fc9:	75 08                	jne    0xbf0fd3
  bf0fcb:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf0fce:	80 ca 02             	or     dl,0x2
  bf0fd1:	eb 06                	jmp    0xbf0fd9
  bf0fd3:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  bf0fd6:	80 e2 fd             	and    dl,0xfd
  bf0fd9:	88 55 ff             	mov    BYTE PTR [ebp-0x1],dl
  bf0fdc:	57                   	push   edi
  bf0fdd:	6a 01                	push   0x1
  bf0fdf:	8d 45 ff             	lea    eax,[ebp-0x1]
  bf0fe2:	50                   	push   eax
  bf0fe3:	68 00 02 00 00       	push   0x200
  bf0fe8:	56                   	push   esi
  bf0fe9:	53                   	push   ebx
  bf0fea:	e8 b9 e1 ff ff       	call   0xbef1a8
  bf0fef:	83 c4 18             	add    esp,0x18
  bf0ff2:	85 c0                	test   eax,eax
  bf0ff4:	74 07                	je     0xbf0ffd
  bf0ff6:	05 d0 07 00 00       	add    eax,0x7d0
  bf0ffb:	eb 02                	jmp    0xbf0fff
  bf0ffd:	33 c0                	xor    eax,eax
  bf0fff:	5f                   	pop    edi
  bf1000:	5e                   	pop    esi
  bf1001:	5b                   	pop    ebx
  bf1002:	59                   	pop    ecx
  bf1003:	5d                   	pop    ebp
  bf1004:	c3                   	ret
  bf1005:	90                   	nop
  bf1006:	90                   	nop
  bf1007:	90                   	nop
  bf1008:	55                   	push   ebp
  bf1009:	8b ec                	mov    ebp,esp
  bf100b:	53                   	push   ebx
  bf100c:	56                   	push   esi
  bf100d:	57                   	push   edi
  bf100e:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bf1011:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf1014:	57                   	push   edi
  bf1015:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bf1019:	50                   	push   eax
  bf101a:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bf101e:	52                   	push   edx
  bf101f:	e8 60 da ff ff       	call   0xbeea84
  bf1024:	83 c4 0c             	add    esp,0xc
  bf1027:	8b d8                	mov    ebx,eax
  bf1029:	83 fb ff             	cmp    ebx,0xffffffff
  bf102c:	75 05                	jne    0xbf1033
  bf102e:	83 c8 ff             	or     eax,0xffffffff
  bf1031:	eb 27                	jmp    0xbf105a
  bf1033:	57                   	push   edi
  bf1034:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bf1037:	52                   	push   edx
  bf1038:	53                   	push   ebx
  bf1039:	56                   	push   esi
  bf103a:	e8 51 ff ff ff       	call   0xbf0f90
  bf103f:	83 c4 10             	add    esp,0x10
  bf1042:	8b f0                	mov    esi,eax
  bf1044:	85 f6                	test   esi,esi
  bf1046:	74 0a                	je     0xbf1052
  bf1048:	53                   	push   ebx
  bf1049:	e8 c6 0e 0a 00       	call   0xc91f14
  bf104e:	8b c6                	mov    eax,esi
  bf1050:	eb 08                	jmp    0xbf105a
  bf1052:	53                   	push   ebx
  bf1053:	e8 bc 0e 0a 00       	call   0xc91f14
  bf1058:	33 c0                	xor    eax,eax
  bf105a:	5f                   	pop    edi
  bf105b:	5e                   	pop    esi
  bf105c:	5b                   	pop    ebx
  bf105d:	5d                   	pop    ebp
  bf105e:	c3                   	ret
  bf105f:	90                   	nop
  bf1060:	55                   	push   ebp
  bf1061:	8b ec                	mov    ebp,esp
  bf1063:	51                   	push   ecx
  bf1064:	53                   	push   ebx
  bf1065:	56                   	push   esi
  bf1066:	57                   	push   edi
  bf1067:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
  bf106a:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  bf106d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bf1070:	84 db                	test   bl,bl
  bf1072:	74 07                	je     0xbf107b
  bf1074:	33 c0                	xor    eax,eax
  bf1076:	8a c3                	mov    al,bl
  bf1078:	48                   	dec    eax
  bf1079:	75 5b                	jne    0xbf10d6
  bf107b:	c6 45 ff 00          	mov    BYTE PTR [ebp-0x1],0x0
  bf107f:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  bf1082:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf1085:	52                   	push   edx
  bf1086:	6a 01                	push   0x1
  bf1088:	51                   	push   ecx
  bf1089:	68 26 02 00 00       	push   0x226
  bf108e:	57                   	push   edi
  bf108f:	56                   	push   esi
  bf1090:	e8 df e2 ff ff       	call   0xbef374
  bf1095:	83 c4 18             	add    esp,0x18
  bf1098:	85 c0                	test   eax,eax
  bf109a:	74 0a                	je     0xbf10a6
  bf109c:	05 e8 03 00 00       	add    eax,0x3e8
  bf10a1:	e9 97 00 00 00       	jmp    0xbf113d
  bf10a6:	80 65 ff c1          	and    BYTE PTR [ebp-0x1],0xc1
  bf10aa:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
  bf10ad:	03 d2                	add    edx,edx
  bf10af:	08 55 ff             	or     BYTE PTR [ebp-0x1],dl
  bf10b2:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  bf10b5:	51                   	push   ecx
  bf10b6:	8d 4d ff             	lea    ecx,[ebp-0x1]
  bf10b9:	6a 01                	push   0x1
  bf10bb:	51                   	push   ecx
  bf10bc:	68 26 02 00 00       	push   0x226
  bf10c1:	57                   	push   edi
  bf10c2:	56                   	push   esi
  bf10c3:	e8 e0 e0 ff ff       	call   0xbef1a8
  bf10c8:	83 c4 18             	add    esp,0x18
  bf10cb:	85 c0                	test   eax,eax
  bf10cd:	74 07                	je     0xbf10d6
  bf10cf:	05 d0 07 00 00       	add    eax,0x7d0
  bf10d4:	eb 67                	jmp    0xbf113d
  bf10d6:	84 db                	test   bl,bl
  bf10d8:	74 09                	je     0xbf10e3
  bf10da:	33 d2                	xor    edx,edx
  bf10dc:	8a d3                	mov    dl,bl
  bf10de:	83 fa 02             	cmp    edx,0x2
  bf10e1:	75 58                	jne    0xbf113b
  bf10e3:	c6 45 fe 00          	mov    BYTE PTR [ebp-0x2],0x0
  bf10e7:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  bf10ea:	8d 55 fe             	lea    edx,[ebp-0x2]
  bf10ed:	50                   	push   eax
  bf10ee:	6a 01                	push   0x1
  bf10f0:	52                   	push   edx
  bf10f1:	68 27 02 00 00       	push   0x227
  bf10f6:	57                   	push   edi
  bf10f7:	56                   	push   esi
  bf10f8:	e8 77 e2 ff ff       	call   0xbef374
  bf10fd:	83 c4 18             	add    esp,0x18
