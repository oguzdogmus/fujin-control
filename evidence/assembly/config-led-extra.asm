  5f23de:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  5f23e1:	83 b9 f0 00 00 00 00 	cmp    DWORD PTR [ecx+0xf0],0x0
  5f23e8:	75 50                	jne    0x5f243a
  5f23ea:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  5f23f0:	50                   	push   eax
  5f23f1:	6a 01                	push   0x1
  5f23f3:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  5f23fa:	52                   	push   edx
  5f23fb:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  5f2402:	51                   	push   ecx
  5f2403:	8d 83 f8 08 00 00    	lea    eax,[ebx+0x8f8]
  5f2409:	50                   	push   eax
  5f240a:	e8 95 8c 5f 00       	call   0xbeb0a4
  5f240f:	83 c4 14             	add    esp,0x14
  5f2412:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  5f2418:	52                   	push   edx
  5f2419:	6a 32                	push   0x32
  5f241b:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  5f2422:	51                   	push   ecx
  5f2423:	66 8b 83 98 32 00 00 	mov    ax,WORD PTR [ebx+0x3298]
  5f242a:	50                   	push   eax
  5f242b:	8d 93 f8 08 00 00    	lea    edx,[ebx+0x8f8]
  5f2431:	52                   	push   edx
  5f2432:	e8 d9 8c 5f 00       	call   0xbeb110
  5f2437:	83 c4 14             	add    esp,0x14
  5f243a:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  5f243d:	83 b9 00 01 00 00 01 	cmp    DWORD PTR [ecx+0x100],0x1
  5f2444:	75 24                	jne    0x5f246a
  5f2446:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  5f2449:	83 c0 24             	add    eax,0x24
  5f244c:	83 c9 ff             	or     ecx,0xffffffff
  5f244f:	50                   	push   eax
  5f2450:	8b c3                	mov    eax,ebx
  5f2452:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  5f2455:	e8 76 fe 00 00       	call   0x6022d0
  5f245a:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  5f245d:	83 c1 08             	add    ecx,0x8
  5f2460:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  5f2463:	8b c3                	mov    eax,ebx
  5f2465:	e8 ea 01 01 00       	call   0x602654
  5f246a:	b0 01                	mov    al,0x1
  5f246c:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  5f246f:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  5f2476:	5f                   	pop    edi
  5f2477:	5e                   	pop    esi
  5f2478:	5b                   	pop    ebx
  5f2479:	8b e5                	mov    esp,ebp
  5f247b:	5d                   	pop    ebp
  5f247c:	c3                   	ret
  5f4100:	05 28 3f 00 00       	add    eax,0x3f28
  5f4105:	83 b8 00 01 00 00 01 	cmp    DWORD PTR [eax+0x100],0x1
  5f410c:	75 29                	jne    0x5f4137
  5f410e:	83 ea 01             	sub    edx,0x1
  5f4111:	72 0e                	jb     0x5f4121
  5f4113:	83 ea 03             	sub    edx,0x3
  5f4116:	72 0c                	jb     0x5f4124
  5f4118:	83 ea 02             	sub    edx,0x2
  5f411b:	72 0d                	jb     0x5f412a
  5f411d:	74 11                	je     0x5f4130
  5f411f:	eb 16                	jmp    0x5f4137
  5f4121:	33 c0                	xor    eax,eax
  5f4123:	c3                   	ret
  5f4124:	b8 01 00 00 00       	mov    eax,0x1
  5f4129:	c3                   	ret
  5f412a:	b8 07 00 00 00       	mov    eax,0x7
  5f412f:	c3                   	ret
  5f4130:	8b 80 04 01 00 00    	mov    eax,DWORD PTR [eax+0x104]
  5f4136:	c3                   	ret
  5f4137:	33 c0                	xor    eax,eax
  5f4139:	c3                   	ret
  5f413a:	90                   	nop
  5f413b:	90                   	nop
  5f413c:	83 fa 06             	cmp    edx,0x6
  5f413f:	77 4d                	ja     0x5f418e
  5f4141:	ff 24 95 48 41 5f 00 	jmp    DWORD PTR [edx*4+0x5f4148]
  5f4148:	64 41                	fs inc ecx
  5f414a:	5f                   	pop    edi
  5f414b:	00 6a 41             	add    BYTE PTR [edx+0x41],ch
  5f414e:	5f                   	pop    edi
  5f414f:	00 70 41             	add    BYTE PTR [eax+0x41],dh
  5f4152:	5f                   	pop    edi
  5f4153:	00 76 41             	add    BYTE PTR [esi+0x41],dh
  5f4156:	5f                   	pop    edi
  5f4157:	00 7c 41 5f          	add    BYTE PTR [ecx+eax*2+0x5f],bh
  5f415b:	00 82 41 5f 00 88    	add    BYTE PTR [edx-0x77ffa0bf],al
  5f4161:	41                   	inc    ecx
  5f4162:	5f                   	pop    edi
  5f4163:	00 b8 a1 00 00 00    	add    BYTE PTR [eax+0xa1],bh
  5f4169:	c3                   	ret
  5f416a:	b8 a2 00 00 00       	mov    eax,0xa2
  5f416f:	c3                   	ret
  5f4170:	b8 a3 00 00 00       	mov    eax,0xa3
  5f4175:	c3                   	ret
  5f4176:	b8 a4 00 00 00       	mov    eax,0xa4
  5f417b:	c3                   	ret
  5f417c:	b8 a5 00 00 00       	mov    eax,0xa5
  5f4181:	c3                   	ret
  5f4182:	b8 a6 00 00 00       	mov    eax,0xa6
  5f4187:	c3                   	ret
  5f4188:	b8 ab 00 00 00       	mov    eax,0xab
  5f418d:	c3                   	ret
  5f418e:	b8 a1 00 00 00       	mov    eax,0xa1
  5f4193:	c3                   	ret
  5f4194:	b8 a1 00 00 00       	mov    eax,0xa1
  5f4199:	c3                   	ret
  600ca4:	53                   	push   ebx
  600ca5:	8b d8                	mov    ebx,eax
  600ca7:	56                   	push   esi
  600ca8:	57                   	push   edi
  600ca9:	8d 83 28 3f 00 00    	lea    eax,[ebx+0x3f28]
  600caf:	8b fa                	mov    edi,edx
  600cb1:	8d b3 a0 42 00 00    	lea    esi,[ebx+0x42a0]
  600cb7:	83 b8 f0 00 00 00 00 	cmp    DWORD PTR [eax+0xf0],0x0
  600cbe:	75 14                	jne    0x600cd4
  600cc0:	83 c6 24             	add    esi,0x24
  600cc3:	83 c9 ff             	or     ecx,0xffffffff
  600cc6:	56                   	push   esi
  600cc7:	8b d7                	mov    edx,edi
  600cc9:	8b c3                	mov    eax,ebx
  600ccb:	e8 0c 14 00 00       	call   0x6020dc
  600cd0:	33 c0                	xor    eax,eax
  600cd2:	eb 27                	jmp    0x600cfb
  600cd4:	83 b8 00 01 00 00 01 	cmp    DWORD PTR [eax+0x100],0x1
  600cdb:	75 1c                	jne    0x600cf9
  600cdd:	8d 56 24             	lea    edx,[esi+0x24]
  600ce0:	83 c9 ff             	or     ecx,0xffffffff
  600ce3:	52                   	push   edx
  600ce4:	8b d7                	mov    edx,edi
  600ce6:	8b c3                	mov    eax,ebx
  600ce8:	e8 e3 15 00 00       	call   0x6022d0
  600ced:	8d 4e 08             	lea    ecx,[esi+0x8]
  600cf0:	8b d7                	mov    edx,edi
  600cf2:	8b c3                	mov    eax,ebx
  600cf4:	e8 5b 19 00 00       	call   0x602654
  600cf9:	33 c0                	xor    eax,eax
  600cfb:	5f                   	pop    edi
  600cfc:	5e                   	pop    esi
  600cfd:	5b                   	pop    ebx
  600cfe:	c3                   	ret
  602230:	53                   	push   ebx
  602231:	8b d8                	mov    ebx,eax
  602233:	56                   	push   esi
  602234:	57                   	push   edi
  602235:	8d 83 28 3f 00 00    	lea    eax,[ebx+0x3f28]
  60223b:	55                   	push   ebp
  60223c:	83 b8 f0 00 00 00 00 	cmp    DWORD PTR [eax+0xf0],0x0
  602243:	8b 90 f8 00 00 00    	mov    edx,DWORD PTR [eax+0xf8]
  602249:	8b b0 fc 00 00 00    	mov    esi,DWORD PTR [eax+0xfc]
  60224f:	75 04                	jne    0x602255
  602251:	33 c0                	xor    eax,eax
  602253:	eb 73                	jmp    0x6022c8
  602255:	8d ab 9e 32 00 00    	lea    ebp,[ebx+0x329e]
  60225b:	55                   	push   ebp
  60225c:	56                   	push   esi
  60225d:	52                   	push   edx
  60225e:	8a 80 f4 00 00 00    	mov    al,BYTE PTR [eax+0xf4]
  602264:	50                   	push   eax
  602265:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  60226c:	52                   	push   edx
  60226d:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602274:	51                   	push   ecx
  602275:	8d bb f8 08 00 00    	lea    edi,[ebx+0x8f8]
  60227b:	57                   	push   edi
  60227c:	e8 bb 91 5e 00       	call   0xbeb43c
  602281:	83 c4 1c             	add    esp,0x1c
  602284:	8b f0                	mov    esi,eax
  602286:	85 f6                	test   esi,esi
  602288:	74 22                	je     0x6022ac
  60228a:	55                   	push   ebp
  60228b:	66 8b 83 9a 32 00 00 	mov    ax,WORD PTR [ebx+0x329a]
  602292:	50                   	push   eax
  602293:	66 8b 93 98 32 00 00 	mov    dx,WORD PTR [ebx+0x3298]
  60229a:	52                   	push   edx
  60229b:	57                   	push   edi
  60229c:	e8 3f 8a 5e 00       	call   0xbeace0
  6022a1:	83 c4 10             	add    esp,0x10
  6022a4:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
  6022aa:	eb 1c                	jmp    0x6022c8
  6022ac:	55                   	push   ebp
  6022ad:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6022b4:	52                   	push   edx
  6022b5:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6022bc:	51                   	push   ecx
  6022bd:	57                   	push   edi
  6022be:	e8 1d 8a 5e 00       	call   0xbeace0
  6022c3:	83 c4 10             	add    esp,0x10
  6022c6:	33 c0                	xor    eax,eax
  6022c8:	5d                   	pop    ebp
  6022c9:	5f                   	pop    edi
  6022ca:	5e                   	pop    esi
  6022cb:	5b                   	pop    ebx
  6022cc:	c3                   	ret
  602654:	53                   	push   ebx
  602655:	56                   	push   esi
  602656:	8b d8                	mov    ebx,eax
  602658:	57                   	push   edi
  602659:	55                   	push   ebp
  60265a:	83 c4 f4             	add    esp,0xfffffff4
  60265d:	8d b3 28 3f 00 00    	lea    esi,[ebx+0x3f28]
  602663:	8b fa                	mov    edi,edx
  602665:	89 0c 24             	mov    DWORD PTR [esp],ecx
  602668:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  60266e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  602672:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
  602678:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  60267c:	83 be f0 00 00 00 00 	cmp    DWORD PTR [esi+0xf0],0x0
  602683:	75 07                	jne    0x60268c
  602685:	33 c0                	xor    eax,eax
  602687:	e9 c9 00 00 00       	jmp    0x602755
  60268c:	83 ff ff             	cmp    edi,0xffffffff
  60268f:	75 30                	jne    0x6026c1
  602691:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  602697:	52                   	push   edx
  602698:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  60269f:	51                   	push   ecx
  6026a0:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6026a7:	51                   	push   ecx
  6026a8:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  6026ae:	53                   	push   ebx
  6026af:	e8 2c 86 5e 00       	call   0xbeace0
  6026b4:	83 c4 10             	add    esp,0x10
  6026b7:	b8 01 00 00 00       	mov    eax,0x1
  6026bc:	e9 94 00 00 00       	jmp    0x602755
  6026c1:	8b d7                	mov    edx,edi
  6026c3:	8b c3                	mov    eax,ebx
  6026c5:	e8 72 1a ff ff       	call   0x5f413c
  6026ca:	85 ff                	test   edi,edi
  6026cc:	75 04                	jne    0x6026d2
  6026ce:	b2 01                	mov    dl,0x1
  6026d0:	eb 06                	jmp    0x6026d8
  6026d2:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
  6026d5:	8a 14 b9             	mov    dl,BYTE PTR [ecx+edi*4]
  6026d8:	8d ab 9e 32 00 00    	lea    ebp,[ebx+0x329e]
  6026de:	55                   	push   ebp
  6026df:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  6026e3:	51                   	push   ecx
  6026e4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  6026e8:	51                   	push   ecx
  6026e9:	52                   	push   edx
  6026ea:	50                   	push   eax
  6026eb:	8a 86 f4 00 00 00    	mov    al,BYTE PTR [esi+0xf4]
  6026f1:	50                   	push   eax
  6026f2:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6026f9:	52                   	push   edx
  6026fa:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602701:	51                   	push   ecx
  602702:	8d bb f8 08 00 00    	lea    edi,[ebx+0x8f8]
  602708:	57                   	push   edi
  602709:	e8 b2 8c 5e 00       	call   0xbeb3c0
  60270e:	83 c4 24             	add    esp,0x24
  602711:	8b f0                	mov    esi,eax
  602713:	85 f6                	test   esi,esi
  602715:	74 22                	je     0x602739
  602717:	55                   	push   ebp
  602718:	66 8b 83 9a 32 00 00 	mov    ax,WORD PTR [ebx+0x329a]
  60271f:	50                   	push   eax
  602720:	66 8b 93 98 32 00 00 	mov    dx,WORD PTR [ebx+0x3298]
  602727:	52                   	push   edx
  602728:	57                   	push   edi
  602729:	e8 b2 85 5e 00       	call   0xbeace0
  60272e:	83 c4 10             	add    esp,0x10
  602731:	8d 86 d0 07 00 00    	lea    eax,[esi+0x7d0]
  602737:	eb 1c                	jmp    0x602755
  602739:	55                   	push   ebp
  60273a:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  602741:	52                   	push   edx
  602742:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602749:	51                   	push   ecx
  60274a:	57                   	push   edi
  60274b:	e8 90 85 5e 00       	call   0xbeace0
  602750:	83 c4 10             	add    esp,0x10
  602753:	33 c0                	xor    eax,eax
  602755:	83 c4 0c             	add    esp,0xc
  602758:	5d                   	pop    ebp
  602759:	5f                   	pop    edi
  60275a:	5e                   	pop    esi
  60275b:	5b                   	pop    ebx
  60275c:	c3                   	ret
  6028ac:	81 c4 00 fe ff ff    	add    esp,0xfffffe00
  6028b2:	8d 90 28 3f 00 00    	lea    edx,[eax+0x3f28]
  6028b8:	83 ba f0 00 00 00 00 	cmp    DWORD PTR [edx+0xf0],0x0
  6028bf:	75 04                	jne    0x6028c5
  6028c1:	33 c0                	xor    eax,eax
  6028c3:	eb 34                	jmp    0x6028f9
  6028c5:	83 ba 00 01 00 00 01 	cmp    DWORD PTR [edx+0x100],0x1
  6028cc:	75 29                	jne    0x6028f7
  6028ce:	e8 5d f9 ff ff       	call   0x602230
  6028d3:	85 c0                	test   eax,eax
  6028d5:	74 20                	je     0x6028f7
  6028d7:	50                   	push   eax
  6028d8:	68 0c 93 ca 00       	push   0xca930c
  6028dd:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  6028e1:	51                   	push   ecx
  6028e2:	e8 f1 e8 4b 00       	call   0xac11d8
  6028e7:	83 c4 0c             	add    esp,0xc
  6028ea:	54                   	push   esp
  6028eb:	e8 dc f8 68 00       	call   0xc921cc
  6028f0:	b8 01 00 00 00       	mov    eax,0x1
  6028f5:	eb 02                	jmp    0x6028f9
  6028f7:	33 c0                	xor    eax,eax
  6028f9:	81 c4 00 02 00 00    	add    esp,0x200
  6028ff:	c3                   	ret
  bef0d0:	55                   	push   ebp
  bef0d1:	8b ec                	mov    ebp,esp
  bef0d3:	83 c4 f8             	add    esp,0xfffffff8
  bef0d6:	53                   	push   ebx
  bef0d7:	56                   	push   esi
  bef0d8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  bef0db:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bef0de:	6a 08                	push   0x8
  bef0e0:	6a 00                	push   0x0
  bef0e2:	8d 45 f8             	lea    eax,[ebp-0x8]
  bef0e5:	50                   	push   eax
  bef0e6:	e8 90 f7 ec ff       	call   0xabe87b
  bef0eb:	83 c4 0c             	add    esp,0xc
  bef0ee:	8a 56 04             	mov    dl,BYTE PTR [esi+0x4]
  bef0f1:	88 55 f8             	mov    BYTE PTR [ebp-0x8],dl
  bef0f4:	8d 4d f8             	lea    ecx,[ebp-0x8]
  bef0f7:	56                   	push   esi
  bef0f8:	51                   	push   ecx
  bef0f9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bef0fc:	51                   	push   ecx
  bef0fd:	53                   	push   ebx
  bef0fe:	e8 65 00 00 00       	call   0xbef168
  bef103:	83 c4 10             	add    esp,0x10
  bef106:	85 c0                	test   eax,eax
  bef108:	74 02                	je     0xbef10c
  bef10a:	eb 02                	jmp    0xbef10e
  bef10c:	33 c0                	xor    eax,eax
  bef10e:	5e                   	pop    esi
  bef10f:	5b                   	pop    ebx
  bef110:	59                   	pop    ecx
  bef111:	59                   	pop    ecx
  bef112:	5d                   	pop    ebp
  bef113:	c3                   	ret
  bef114:	55                   	push   ebp
  bef115:	8b ec                	mov    ebp,esp
  bef117:	53                   	push   ebx
  bef118:	56                   	push   esi
  bef119:	57                   	push   edi
  bef11a:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bef11d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bef120:	57                   	push   edi
  bef121:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bef125:	50                   	push   eax
  bef126:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bef12a:	52                   	push   edx
  bef12b:	e8 54 f9 ff ff       	call   0xbeea84
  bef130:	83 c4 0c             	add    esp,0xc
  bef133:	8b d8                	mov    ebx,eax
  bef135:	83 fb ff             	cmp    ebx,0xffffffff
  bef138:	75 05                	jne    0xbef13f
  bef13a:	83 c8 ff             	or     eax,0xffffffff
  bef13d:	eb 23                	jmp    0xbef162
  bef13f:	57                   	push   edi
  bef140:	53                   	push   ebx
  bef141:	56                   	push   esi
  bef142:	e8 89 ff ff ff       	call   0xbef0d0
  bef147:	83 c4 0c             	add    esp,0xc
  bef14a:	8b f0                	mov    esi,eax
  bef14c:	85 f6                	test   esi,esi
  bef14e:	74 0a                	je     0xbef15a
  bef150:	53                   	push   ebx
  bef151:	e8 be 2d 0a 00       	call   0xc91f14
  bef156:	8b c6                	mov    eax,esi
  bef158:	eb 08                	jmp    0xbef162
  bef15a:	53                   	push   ebx
  bef15b:	e8 b4 2d 0a 00       	call   0xc91f14
  bef160:	33 c0                	xor    eax,eax
  bef162:	5f                   	pop    edi
  bef163:	5e                   	pop    esi
  bef164:	5b                   	pop    ebx
  bef165:	5d                   	pop    ebp
  bef166:	c3                   	ret
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
