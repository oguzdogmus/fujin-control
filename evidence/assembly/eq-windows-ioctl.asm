
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bed654 <.text+0x7ec654>:
  bed654:	55                   	push   ebp
  bed655:	8b ec                	mov    ebp,esp
  bed657:	51                   	push   ecx
  bed658:	53                   	push   ebx
  bed659:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  bed65c:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bed65f:	33 c9                	xor    ecx,ecx
  bed661:	8d 5d fc             	lea    ebx,[ebp-0x4]
  bed664:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  bed667:	6a 00                	push   0x0
  bed669:	53                   	push   ebx
  bed66a:	8b 0a                	mov    ecx,DWORD PTR [edx]
  bed66c:	51                   	push   ecx
  bed66d:	50                   	push   eax
  bed66e:	51                   	push   ecx
  bed66f:	50                   	push   eax
  bed670:	68 00 28 23 08       	push   0x8232800
  bed675:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  bed678:	50                   	push   eax
  bed679:	e8 d8 48 0a 00       	call   0xc91f56
  bed67e:	85 c0                	test   eax,eax
  bed680:	75 07                	jne    0xbed689
  bed682:	b8 01 00 00 00       	mov    eax,0x1
  bed687:	eb 02                	jmp    0xbed68b
  bed689:	33 c0                	xor    eax,eax
  bed68b:	5b                   	pop    ebx
  bed68c:	59                   	pop    ecx
  bed68d:	5d                   	pop    ebp
  bed68e:	c3                   	ret
  bed68f:	90                   	nop
  bed690:	55                   	push   ebp
  bed691:	8b ec                	mov    ebp,esp
  bed693:	53                   	push   ebx
  bed694:	56                   	push   esi
  bed695:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bed698:	6a 01                	push   0x1
  bed69a:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bed69e:	50                   	push   eax
  bed69f:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bed6a3:	52                   	push   edx
  bed6a4:	e8 d3 e5 ff ff       	call   0xbebc7c
  bed6a9:	83 c4 0c             	add    esp,0xc
  bed6ac:	8b d8                	mov    ebx,eax
  bed6ae:	83 fb ff             	cmp    ebx,0xffffffff
  bed6b1:	75 05                	jne    0xbed6b8
  bed6b3:	83 c8 ff             	or     eax,0xffffffff
  bed6b6:	eb 2a                	jmp    0xbed6e2
  bed6b8:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  bed6bb:	52                   	push   edx
  bed6bc:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bed6bf:	51                   	push   ecx
  bed6c0:	53                   	push   ebx
  bed6c1:	56                   	push   esi
  bed6c2:	e8 8d ff ff ff       	call   0xbed654
  bed6c7:	83 c4 10             	add    esp,0x10
  bed6ca:	8b f0                	mov    esi,eax
  bed6cc:	85 f6                	test   esi,esi
  bed6ce:	74 0a                	je     0xbed6da
  bed6d0:	53                   	push   ebx
  bed6d1:	e8 3e 48 0a 00       	call   0xc91f14
  bed6d6:	8b c6                	mov    eax,esi
  bed6d8:	eb 08                	jmp    0xbed6e2
  bed6da:	53                   	push   ebx
  bed6db:	e8 34 48 0a 00       	call   0xc91f14
  bed6e0:	33 c0                	xor    eax,eax
  bed6e2:	5e                   	pop    esi
  bed6e3:	5b                   	pop    ebx
  bed6e4:	5d                   	pop    ebp
  bed6e5:	c3                   	ret
  bed6e6:	90                   	nop
  bed6e7:	90                   	nop
  bed6e8:	55                   	push   ebp
  bed6e9:	8b ec                	mov    ebp,esp
  bed6eb:	81 c4 b8 fe ff ff    	add    esp,0xfffffeb8
  bed6f1:	b8 94 82 f7 00       	mov    eax,0xf78294
  bed6f6:	53                   	push   ebx
  bed6f7:	56                   	push   esi
  bed6f8:	57                   	push   edi
  bed6f9:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bed6fc:	e8 0f d1 ed ff       	call   0xaca810
  bed701:	8d bd b8 fe ff ff    	lea    edi,[ebp-0x148]
  bed707:	be ca 72 f7 00       	mov    esi,0xf772ca
  bed70c:	b9 47 00 00 00       	mov    ecx,0x47
  bed711:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  bed713:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
  bed715:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
  bed718:	8d 4d d8             	lea    ecx,[ebp-0x28]
  bed71b:	88 85 b8 fe ff ff    	mov    BYTE PTR [ebp-0x148],al
  bed721:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  bed727:	c6 85 b9 fe ff ff 00 	mov    BYTE PTR [ebp-0x147],0x0
  bed72e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  bed731:	89 50 02             	mov    DWORD PTR [eax+0x2],edx
  bed734:	c7 45 d8 1e 01 00 00 	mov    DWORD PTR [ebp-0x28],0x11e
  bed73b:	51                   	push   ecx
  bed73c:	8d 8d b8 fe ff ff    	lea    ecx,[ebp-0x148]
  bed742:	51                   	push   ecx
  bed743:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  bed746:	50                   	push   eax
  bed747:	53                   	push   ebx
  bed748:	e8 07 ff ff ff       	call   0xbed654
  bed74d:	83 c4 10             	add    esp,0x10
  bed750:	85 c0                	test   eax,eax
  bed752:	74 0c                	je     0xbed760
  bed754:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bed757:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bed75e:	eb 0c                	jmp    0xbed76c
  bed760:	33 c0                	xor    eax,eax
  bed762:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bed765:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bed76c:	5f                   	pop    edi
  bed76d:	5e                   	pop    esi
  bed76e:	5b                   	pop    ebx
  bed76f:	8b e5                	mov    esp,ebp
  bed771:	5d                   	pop    ebp
  bed772:	c3                   	ret
  bed773:	90                   	nop
