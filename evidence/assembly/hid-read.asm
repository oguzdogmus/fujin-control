
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bef374 <.text+0x7ee374>:
  bef374:	55                   	push   ebp
  bef375:	8b ec                	mov    ebp,esp
  bef377:	83 c4 d4             	add    esp,0xffffffd4
  bef37a:	53                   	push   ebx
  bef37b:	56                   	push   esi
  bef37c:	8b 5d 1c             	mov    ebx,DWORD PTR [ebp+0x1c]
  bef37f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  bef382:	b8 90 10 f8 00       	mov    eax,0xf81090
  bef387:	e8 84 b4 ed ff       	call   0xaca810
  bef38c:	8b 15 3c 09 f8 00    	mov    edx,DWORD PTR ds:0xf8093c
  bef392:	89 55 d4             	mov    DWORD PTR [ebp-0x2c],edx
  bef395:	8b 15 40 09 f8 00    	mov    edx,DWORD PTR ds:0xf80940
  bef39b:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
  bef39e:	33 c0                	xor    eax,eax
  bef3a0:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef3a3:	83 f8 04             	cmp    eax,0x4
  bef3a6:	75 1a                	jne    0xbef3c2
  bef3a8:	8a 53 04             	mov    dl,BYTE PTR [ebx+0x4]
  bef3ab:	8b ce                	mov    ecx,esi
  bef3ad:	88 55 d4             	mov    BYTE PTR [ebp-0x2c],dl
  bef3b0:	88 4d d5             	mov    BYTE PTR [ebp-0x2b],cl
  bef3b3:	0f b7 ce             	movzx  ecx,si
  bef3b6:	c1 f9 08             	sar    ecx,0x8
  bef3b9:	88 4d d6             	mov    BYTE PTR [ebp-0x2a],cl
  bef3bc:	c6 45 d7 90          	mov    BYTE PTR [ebp-0x29],0x90
  bef3c0:	eb 3b                	jmp    0xbef3fd
  bef3c2:	83 f8 08             	cmp    eax,0x8
  bef3c5:	75 1a                	jne    0xbef3e1
  bef3c7:	0f b7 ce             	movzx  ecx,si
  bef3ca:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
  bef3cd:	8b d6                	mov    edx,esi
  bef3cf:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
  bef3d2:	88 55 d5             	mov    BYTE PTR [ebp-0x2b],dl
  bef3d5:	c1 f9 08             	sar    ecx,0x8
  bef3d8:	88 4d d6             	mov    BYTE PTR [ebp-0x2a],cl
  bef3db:	c6 45 db 80          	mov    BYTE PTR [ebp-0x25],0x80
  bef3df:	eb 1c                	jmp    0xbef3fd
  bef3e1:	0f b7 ce             	movzx  ecx,si
  bef3e4:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
  bef3e7:	8b d6                	mov    edx,esi
  bef3e9:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
  bef3ec:	c6 45 d5 60          	mov    BYTE PTR [ebp-0x2b],0x60
  bef3f0:	c1 f9 08             	sar    ecx,0x8
  bef3f3:	88 55 d6             	mov    BYTE PTR [ebp-0x2a],dl
  bef3f6:	88 4d d7             	mov    BYTE PTR [ebp-0x29],cl
  bef3f9:	c6 45 d8 10          	mov    BYTE PTR [ebp-0x28],0x10
  bef3fd:	8a 43 05             	mov    al,BYTE PTR [ebx+0x5]
  bef400:	8d 55 d4             	lea    edx,[ebp-0x2c]
  bef403:	50                   	push   eax
  bef404:	52                   	push   edx
  bef405:	6a 00                	push   0x0
  bef407:	e8 78 33 00 00       	call   0xbf2784
  bef40c:	83 c4 0c             	add    esp,0xc
  bef40f:	33 c9                	xor    ecx,ecx
  bef411:	8a 4b 05             	mov    cl,BYTE PTR [ebx+0x5]
  bef414:	8d 45 d4             	lea    eax,[ebp-0x2c]
  bef417:	51                   	push   ecx
  bef418:	50                   	push   eax
  bef419:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bef41c:	52                   	push   edx
  bef41d:	e8 cc 39 0a 00       	call   0xc92dee
  bef422:	25 ff 00 00 00       	and    eax,0xff
  bef427:	85 c0                	test   eax,eax
  bef429:	75 14                	jne    0xbef43f
  bef42b:	b8 01 00 00 00       	mov    eax,0x1
  bef430:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef433:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef43a:	e9 b0 00 00 00       	jmp    0xbef4ef
  bef43f:	6a 08                	push   0x8
  bef441:	6a 00                	push   0x0
  bef443:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  bef446:	51                   	push   ecx
  bef447:	e8 2f f4 ec ff       	call   0xabe87b
  bef44c:	83 c4 0c             	add    esp,0xc
  bef44f:	8a 4b 06             	mov    cl,BYTE PTR [ebx+0x6]
  bef452:	88 4d d4             	mov    BYTE PTR [ebp-0x2c],cl
  bef455:	33 c0                	xor    eax,eax
  bef457:	8a 43 07             	mov    al,BYTE PTR [ebx+0x7]
  bef45a:	8d 55 d4             	lea    edx,[ebp-0x2c]
  bef45d:	50                   	push   eax
  bef45e:	52                   	push   edx
  bef45f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bef462:	51                   	push   ecx
  bef463:	e8 7a 39 0a 00       	call   0xc92de2
  bef468:	25 ff 00 00 00       	and    eax,0xff
  bef46d:	85 c0                	test   eax,eax
  bef46f:	75 11                	jne    0xbef482
  bef471:	b8 02 00 00 00       	mov    eax,0x2
  bef476:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef479:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef480:	eb 6d                	jmp    0xbef4ef
  bef482:	8a 4b 07             	mov    cl,BYTE PTR [ebx+0x7]
  bef485:	51                   	push   ecx
  bef486:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  bef489:	51                   	push   ecx
  bef48a:	6a 01                	push   0x1
  bef48c:	e8 f3 32 00 00       	call   0xbf2784
  bef491:	83 c4 0c             	add    esp,0xc
  bef494:	33 c0                	xor    eax,eax
  bef496:	8a 43 07             	mov    al,BYTE PTR [ebx+0x7]
  bef499:	83 f8 04             	cmp    eax,0x4
  bef49c:	75 0a                	jne    0xbef4a8
  bef49e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bef4a1:	8a 45 d5             	mov    al,BYTE PTR [ebp-0x2b]
  bef4a4:	88 02                	mov    BYTE PTR [edx],al
  bef4a6:	eb 3b                	jmp    0xbef4e3
  bef4a8:	33 d2                	xor    edx,edx
  bef4aa:	8a 53 07             	mov    dl,BYTE PTR [ebx+0x7]
  bef4ad:	83 fa 08             	cmp    edx,0x8
  bef4b0:	75 29                	jne    0xbef4db
  bef4b2:	33 c9                	xor    ecx,ecx
  bef4b4:	8a 4d 18             	mov    cl,BYTE PTR [ebp+0x18]
  bef4b7:	83 f9 04             	cmp    ecx,0x4
  bef4ba:	7c 07                	jl     0xbef4c3
  bef4bc:	b8 04 00 00 00       	mov    eax,0x4
  bef4c1:	eb 05                	jmp    0xbef4c8
  bef4c3:	33 c0                	xor    eax,eax
  bef4c5:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
  bef4c8:	50                   	push   eax
  bef4c9:	8d 55 d7             	lea    edx,[ebp-0x29]
  bef4cc:	52                   	push   edx
  bef4cd:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bef4d0:	51                   	push   ecx
  bef4d1:	e8 da f1 ec ff       	call   0xabe6b0
  bef4d6:	83 c4 0c             	add    esp,0xc
  bef4d9:	eb 08                	jmp    0xbef4e3
  bef4db:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  bef4de:	8a 55 d6             	mov    dl,BYTE PTR [ebp-0x2a]
  bef4e1:	88 10                	mov    BYTE PTR [eax],dl
  bef4e3:	33 c0                	xor    eax,eax
  bef4e5:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bef4e8:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bef4ef:	5e                   	pop    esi
  bef4f0:	5b                   	pop    ebx
  bef4f1:	8b e5                	mov    esp,ebp
  bef4f3:	5d                   	pop    ebp
  bef4f4:	c3                   	ret
  bef4f5:	90                   	nop
  bef4f6:	90                   	nop
  bef4f7:	90                   	nop
  bef4f8:	55                   	push   ebp
  bef4f9:	8b ec                	mov    ebp,esp
  bef4fb:	51                   	push   ecx
  bef4fc:	53                   	push   ebx
  bef4fd:	56                   	push   esi
  bef4fe:	57                   	push   edi
  bef4ff:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  bef502:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  bef505:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bef508:	66 c7 03 00 00       	mov    WORD PTR [ebx],0x0
  bef50d:	33 c0                	xor    eax,eax
  bef50f:	8a 47 07             	mov    al,BYTE PTR [edi+0x7]
  bef512:	83 f8 08             	cmp    eax,0x8
  bef515:	75 3c                	jne    0xbef553
  bef517:	57                   	push   edi
  bef518:	6a 02                	push   0x2
  bef51a:	8d 55 fe             	lea    edx,[ebp-0x2]
  bef51d:	52                   	push   edx
  bef51e:	68 f2 7f 00 00       	push   0x7ff2
  bef523:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bef526:	51                   	push   ecx
  bef527:	56                   	push   esi
  bef528:	e8 47 fe ff ff       	call   0xbef374
  bef52d:	83 c4 18             	add    esp,0x18
  bef530:	85 c0                	test   eax,eax
  bef532:	74 07                	je     0xbef53b
  bef534:	05 e8 03 00 00       	add    eax,0x3e8
  bef539:	eb 7e                	jmp    0xbef5b9
  bef53b:	33 d2                	xor    edx,edx
  bef53d:	33 c9                	xor    ecx,ecx
  bef53f:	8a 55 fe             	mov    dl,BYTE PTR [ebp-0x2]
  bef542:	66 89 13             	mov    WORD PTR [ebx],dx
  bef545:	66 c1 23 08          	shl    WORD PTR [ebx],0x8
  bef549:	8a 4d ff             	mov    cl,BYTE PTR [ebp-0x1]
  bef54c:	66 09 0b             	or     WORD PTR [ebx],cx
  bef54f:	33 c0                	xor    eax,eax
  bef551:	eb 66                	jmp    0xbef5b9
  bef553:	c6 45 fd 00          	mov    BYTE PTR [ebp-0x3],0x0
  bef557:	57                   	push   edi
  bef558:	6a 01                	push   0x1
  bef55a:	8d 55 fd             	lea    edx,[ebp-0x3]
  bef55d:	52                   	push   edx
  bef55e:	68 f2 7f 00 00       	push   0x7ff2
  bef563:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bef566:	51                   	push   ecx
  bef567:	56                   	push   esi
  bef568:	e8 07 fe ff ff       	call   0xbef374
  bef56d:	83 c4 18             	add    esp,0x18
  bef570:	85 c0                	test   eax,eax
  bef572:	74 07                	je     0xbef57b
  bef574:	05 e8 03 00 00       	add    eax,0x3e8
  bef579:	eb 3e                	jmp    0xbef5b9
  bef57b:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  bef57f:	57                   	push   edi
  bef580:	6a 01                	push   0x1
  bef582:	8d 55 fc             	lea    edx,[ebp-0x4]
  bef585:	52                   	push   edx
  bef586:	68 f3 7f 00 00       	push   0x7ff3
  bef58b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  bef58e:	51                   	push   ecx
  bef58f:	56                   	push   esi
  bef590:	e8 df fd ff ff       	call   0xbef374
  bef595:	83 c4 18             	add    esp,0x18
  bef598:	85 c0                	test   eax,eax
  bef59a:	74 07                	je     0xbef5a3
  bef59c:	05 d0 07 00 00       	add    eax,0x7d0
  bef5a1:	eb 16                	jmp    0xbef5b9
  bef5a3:	33 d2                	xor    edx,edx
  bef5a5:	33 c9                	xor    ecx,ecx
  bef5a7:	8a 55 fd             	mov    dl,BYTE PTR [ebp-0x3]
  bef5aa:	66 89 13             	mov    WORD PTR [ebx],dx
  bef5ad:	66 c1 23 08          	shl    WORD PTR [ebx],0x8
  bef5b1:	8a 4d fc             	mov    cl,BYTE PTR [ebp-0x4]
  bef5b4:	66 09 0b             	or     WORD PTR [ebx],cx
  bef5b7:	33 c0                	xor    eax,eax
  bef5b9:	5f                   	pop    edi
  bef5ba:	5e                   	pop    esi
  bef5bb:	5b                   	pop    ebx
  bef5bc:	59                   	pop    ecx
  bef5bd:	5d                   	pop    ebp
  bef5be:	c3                   	ret
  bef5bf:	90                   	nop
  bef5c0:	55                   	push   ebp
  bef5c1:	8b ec                	mov    ebp,esp
  bef5c3:	53                   	push   ebx
  bef5c4:	56                   	push   esi
  bef5c5:	57                   	push   edi
  bef5c6:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  bef5c9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bef5cc:	57                   	push   edi
  bef5cd:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bef5d1:	50                   	push   eax
  bef5d2:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bef5d6:	52                   	push   edx
  bef5d7:	e8 a8 f4 ff ff       	call   0xbeea84
  bef5dc:	83 c4 0c             	add    esp,0xc
  bef5df:	8b d8                	mov    ebx,eax
  bef5e1:	83 fb ff             	cmp    ebx,0xffffffff
  bef5e4:	75 05                	jne    0xbef5eb
  bef5e6:	83 c8 ff             	or     eax,0xffffffff
  bef5e9:	eb 27                	jmp    0xbef612
  bef5eb:	57                   	push   edi
  bef5ec:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bef5ef:	52                   	push   edx
