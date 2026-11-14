
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bef1a8 <.text+0x7ee1a8>:
  bef1a8:	55                   	push   ebp
  bef1a9:	8b ec                	mov    ebp,esp
  bef1ab:	83 c4 d4             	add    esp,0xffffffd4
  bef1ae:	53                   	push   ebx
  bef1af:	56                   	push   esi
  bef1b0:	8b 5d 1c             	mov    ebx,DWORD PTR [ebp+0x1c]
  bef1b3:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  bef1b6:	b8 78 10 f8 00       	mov    eax,0xf81078
  bef1bb:	e8 50 b6 ed ff       	call   0xaca810
  bef1c0:	8b 15 34 09 f8 00    	mov    edx,DWORD PTR ds:0xf80934
  bef1c6:	89 55 d4             	mov    DWORD PTR [ebp-0x2c],edx
  bef1c9:	8b 15 38 09 f8 00    	mov    edx,DWORD PTR ds:0xf80938
  bef1cf:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
  bef1d2:	33 c0                	xor    eax,eax
  bef1d4:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef1d7:	83 f8 04             	cmp    eax,0x4
  bef1da:	75 1a                	jne    0xbef1f6
  bef1dc:	8a 53 04             	mov    dl,BYTE PTR [ebx+0x4]
  bef1df:	8b ce                	mov    ecx,esi
  bef1e1:	88 55 d4             	mov    BYTE PTR [ebp-0x2c],dl
  bef1e4:	88 4d d5             	mov    BYTE PTR [ebp-0x2b],cl
  bef1e7:	0f b7 ce             	movzx  ecx,si
  bef1ea:	c1 f9 08             	sar    ecx,0x8
  bef1ed:	88 4d d6             	mov    BYTE PTR [ebp-0x2a],cl
  bef1f0:	c6 45 d7 90          	mov    BYTE PTR [ebp-0x29],0x90
  bef1f4:	eb 67                	jmp    0xbef25d
  bef1f6:	83 f8 08             	cmp    eax,0x8
  bef1f9:	75 46                	jne    0xbef241
  bef1fb:	0f b7 ce             	movzx  ecx,si
  bef1fe:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
  bef201:	8b d6                	mov    edx,esi
  bef203:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
  bef206:	88 55 d5             	mov    BYTE PTR [ebp-0x2b],dl
  bef209:	c1 f9 08             	sar    ecx,0x8
  bef20c:	33 c0                	xor    eax,eax
  bef20e:	88 4d d6             	mov    BYTE PTR [ebp-0x2a],cl
  bef211:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
  bef214:	83 f8 04             	cmp    eax,0x4
  bef217:	7c 07                	jl     0xbef220
  bef219:	ba 04 00 00 00       	mov    edx,0x4
  bef21e:	eb 05                	jmp    0xbef225
  bef220:	33 d2                	xor    edx,edx
  bef222:	8a 55 18             	mov    dl,BYTE PTR [ebp+0x18]
  bef225:	52                   	push   edx
  bef226:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  bef229:	50                   	push   eax
  bef22a:	8d 4d d7             	lea    ecx,[ebp-0x29]
  bef22d:	51                   	push   ecx
  bef22e:	e8 7d f4 ec ff       	call   0xabe6b0
  bef233:	83 c4 0c             	add    esp,0xc
  bef236:	8a 4d 18             	mov    cl,BYTE PTR [ebp+0x18]
  bef239:	80 c9 80             	or     cl,0x80
  bef23c:	88 4d db             	mov    BYTE PTR [ebp-0x25],cl
  bef23f:	eb 1c                	jmp    0xbef25d
  bef241:	0f b7 ce             	movzx  ecx,si
  bef244:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
  bef247:	8b d6                	mov    edx,esi
  bef249:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
  bef24c:	c6 45 d5 60          	mov    BYTE PTR [ebp-0x2b],0x60
  bef250:	c1 f9 08             	sar    ecx,0x8
  bef253:	88 55 d6             	mov    BYTE PTR [ebp-0x2a],dl
  bef256:	88 4d d7             	mov    BYTE PTR [ebp-0x29],cl
  bef259:	c6 45 d8 10          	mov    BYTE PTR [ebp-0x28],0x10
  bef25d:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef260:	8d 55 d4             	lea    edx,[ebp-0x2c]
  bef263:	50                   	push   eax
  bef264:	52                   	push   edx
  bef265:	6a 00                	push   0x0
  bef267:	e8 18 35 00 00       	call   0xbf2784
  bef26c:	83 c4 0c             	add    esp,0xc
  bef26f:	33 c9                	xor    ecx,ecx
  bef271:	8a 4b 05             	mov    cl,BYTE PTR [ebx+0x5]
  bef274:	8d 45 d4             	lea    eax,[ebp-0x2c]
  bef277:	51                   	push   ecx
  bef278:	50                   	push   eax
  bef279:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bef27c:	52                   	push   edx
  bef27d:	e8 6c 3b 0a 00       	call   0xc92dee
  bef282:	25 ff 00 00 00       	and    eax,0xff
  bef287:	85 c0                	test   eax,eax
  bef289:	75 14                	jne    0xbef29f
  bef28b:	b8 01 00 00 00       	mov    eax,0x1
  bef290:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef293:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef29a:	e9 cd 00 00 00       	jmp    0xbef36c
  bef29f:	33 c9                	xor    ecx,ecx
  bef2a1:	8a 4b 05             	mov    cl,BYTE PTR [ebx+0x5]
  bef2a4:	83 f9 08             	cmp    ecx,0x8
  bef2a7:	75 11                	jne    0xbef2ba
  bef2a9:	33 c0                	xor    eax,eax
  bef2ab:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef2ae:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef2b5:	e9 b2 00 00 00       	jmp    0xbef36c
  bef2ba:	6a 08                	push   0x8
  bef2bc:	6a 00                	push   0x0
  bef2be:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  bef2c1:	51                   	push   ecx
  bef2c2:	e8 b4 f5 ec ff       	call   0xabe87b
  bef2c7:	83 c4 0c             	add    esp,0xc
  bef2ca:	33 c0                	xor    eax,eax
  bef2cc:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef2cf:	83 f8 04             	cmp    eax,0x4
  bef2d2:	75 18                	jne    0xbef2ec
  bef2d4:	8a 53 04             	mov    dl,BYTE PTR [ebx+0x4]
  bef2d7:	88 55 d4             	mov    BYTE PTR [ebp-0x2c],dl
  bef2da:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bef2dd:	8a 09                	mov    cl,BYTE PTR [ecx]
  bef2df:	88 4d d5             	mov    BYTE PTR [ebp-0x2b],cl
  bef2e2:	c6 45 d6 01          	mov    BYTE PTR [ebp-0x2a],0x1
  bef2e6:	c6 45 d7 a0          	mov    BYTE PTR [ebp-0x29],0xa0
  bef2ea:	eb 35                	jmp    0xbef321
  bef2ec:	83 f8 08             	cmp    eax,0x8
  bef2ef:	75 16                	jne    0xbef307
  bef2f1:	0f b7 ce             	movzx  ecx,si
  bef2f4:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
  bef2f7:	8b d6                	mov    edx,esi
  bef2f9:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
  bef2fc:	88 55 d5             	mov    BYTE PTR [ebp-0x2b],dl
  bef2ff:	c1 f9 08             	sar    ecx,0x8
  bef302:	88 4d d6             	mov    BYTE PTR [ebp-0x2a],cl
  bef305:	eb 1a                	jmp    0xbef321
  bef307:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
  bef30a:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
  bef30d:	c6 45 d5 60          	mov    BYTE PTR [ebp-0x2b],0x60
  bef311:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bef314:	8a 0a                	mov    cl,BYTE PTR [edx]
  bef316:	88 4d d6             	mov    BYTE PTR [ebp-0x2a],cl
  bef319:	c6 45 d7 01          	mov    BYTE PTR [ebp-0x29],0x1
  bef31d:	c6 45 d8 20          	mov    BYTE PTR [ebp-0x28],0x20
  bef321:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef324:	8d 55 d4             	lea    edx,[ebp-0x2c]
  bef327:	50                   	push   eax
  bef328:	52                   	push   edx
  bef329:	6a 00                	push   0x0
  bef32b:	e8 54 34 00 00       	call   0xbf2784
  bef330:	83 c4 0c             	add    esp,0xc
  bef333:	33 c0                	xor    eax,eax
  bef335:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef338:	8d 55 d4             	lea    edx,[ebp-0x2c]
  bef33b:	50                   	push   eax
  bef33c:	52                   	push   edx
  bef33d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bef340:	51                   	push   ecx
  bef341:	e8 a8 3a 0a 00       	call   0xc92dee
  bef346:	25 ff 00 00 00       	and    eax,0xff
  bef34b:	85 c0                	test   eax,eax
  bef34d:	75 11                	jne    0xbef360
  bef34f:	b8 02 00 00 00       	mov    eax,0x2
  bef354:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef357:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef35e:	eb 0c                	jmp    0xbef36c
  bef360:	33 c0                	xor    eax,eax
  bef362:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef365:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef36c:	5e                   	pop    esi
  bef36d:	5b                   	pop    ebx
  bef36e:	8b e5                	mov    esp,ebp
  bef370:	5d                   	pop    ebp
  bef371:	c3                   	ret
  bef372:	90                   	nop
  bef373:	90                   	nop
