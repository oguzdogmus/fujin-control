
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bed774 <.text+0x7ec774>:
  bed774:	55                   	push   ebp
  bed775:	8b ec                	mov    ebp,esp
  bed777:	53                   	push   ebx
  bed778:	56                   	push   esi
  bed779:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bed77c:	6a 01                	push   0x1
  bed77e:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bed782:	50                   	push   eax
  bed783:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bed787:	52                   	push   edx
  bed788:	e8 ef e4 ff ff       	call   0xbebc7c
  bed78d:	83 c4 0c             	add    esp,0xc
  bed790:	8b d8                	mov    ebx,eax
  bed792:	83 fb ff             	cmp    ebx,0xffffffff
  bed795:	75 05                	jne    0xbed79c
  bed797:	83 c8 ff             	or     eax,0xffffffff
  bed79a:	eb 2a                	jmp    0xbed7c6
  bed79c:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  bed79f:	52                   	push   edx
  bed7a0:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  bed7a3:	51                   	push   ecx
  bed7a4:	53                   	push   ebx
  bed7a5:	56                   	push   esi
  bed7a6:	e8 3d ff ff ff       	call   0xbed6e8
  bed7ab:	83 c4 10             	add    esp,0x10
  bed7ae:	8b f0                	mov    esi,eax
  bed7b0:	85 f6                	test   esi,esi
  bed7b2:	74 0a                	je     0xbed7be
  bed7b4:	53                   	push   ebx
  bed7b5:	e8 5a 47 0a 00       	call   0xc91f14
  bed7ba:	8b c6                	mov    eax,esi
  bed7bc:	eb 08                	jmp    0xbed7c6
  bed7be:	53                   	push   ebx
  bed7bf:	e8 50 47 0a 00       	call   0xc91f14
  bed7c4:	33 c0                	xor    eax,eax
  bed7c6:	5e                   	pop    esi
  bed7c7:	5b                   	pop    ebx
  bed7c8:	5d                   	pop    ebp
  bed7c9:	c3                   	ret
  bed7ca:	90                   	nop
  bed7cb:	90                   	nop
  bed7cc:	55                   	push   ebp
  bed7cd:	8b ec                	mov    ebp,esp
  bed7cf:	81 c4 b8 fe ff ff    	add    esp,0xfffffeb8
  bed7d5:	b8 ac 82 f7 00       	mov    eax,0xf782ac
  bed7da:	53                   	push   ebx
  bed7db:	56                   	push   esi
  bed7dc:	57                   	push   edi
  bed7dd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bed7e0:	e8 2b d0 ed ff       	call   0xaca810
  bed7e5:	8d bd b8 fe ff ff    	lea    edi,[ebp-0x148]
  bed7eb:	be 06 75 f7 00       	mov    esi,0xf77506
  bed7f0:	b9 47 00 00 00       	mov    ecx,0x47
  bed7f5:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  bed7f7:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
  bed7f9:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
  bed7fc:	88 85 b8 fe ff ff    	mov    BYTE PTR [ebp-0x148],al
  bed802:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  bed808:	c6 85 b9 fe ff ff 02 	mov    BYTE PTR [ebp-0x147],0x2
  bed80f:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  bed812:	83 c0 02             	add    eax,0x2
  bed815:	52                   	push   edx
  bed816:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bed819:	51                   	push   ecx
  bed81a:	50                   	push   eax
  bed81b:	e8 90 0e ed ff       	call   0xabe6b0
  bed820:	83 c4 0c             	add    esp,0xc
  bed823:	8d 4d d8             	lea    ecx,[ebp-0x28]
  bed826:	c7 45 d8 1e 01 00 00 	mov    DWORD PTR [ebp-0x28],0x11e
  bed82d:	51                   	push   ecx
  bed82e:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  bed834:	50                   	push   eax
  bed835:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bed838:	52                   	push   edx
  bed839:	53                   	push   ebx
  bed83a:	e8 15 fe ff ff       	call   0xbed654
  bed83f:	83 c4 10             	add    esp,0x10
  bed842:	85 c0                	test   eax,eax
  bed844:	74 0c                	je     0xbed852
  bed846:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bed849:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bed850:	eb 0c                	jmp    0xbed85e
  bed852:	33 c0                	xor    eax,eax
  bed854:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  bed857:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  bed85e:	5f                   	pop    edi
  bed85f:	5e                   	pop    esi
  bed860:	5b                   	pop    ebx
  bed861:	8b e5                	mov    esp,ebp
  bed863:	5d                   	pop    ebp
  bed864:	c3                   	ret
  bed865:	90                   	nop
  bed866:	90                   	nop
  bed867:	90                   	nop
  bed868:	55                   	push   ebp
  bed869:	8b ec                	mov    ebp,esp
  bed86b:	53                   	push   ebx
  bed86c:	56                   	push   esi
  bed86d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bed870:	6a 01                	push   0x1
  bed872:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bed876:	50                   	push   eax
  bed877:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bed87b:	52                   	push   edx
  bed87c:	e8 fb e3 ff ff       	call   0xbebc7c
  bed881:	83 c4 0c             	add    esp,0xc
  bed884:	8b d8                	mov    ebx,eax
  bed886:	83 fb ff             	cmp    ebx,0xffffffff
  bed889:	75 05                	jne    0xbed890
  bed88b:	83 c8 ff             	or     eax,0xffffffff
  bed88e:	eb 2e                	jmp    0xbed8be
  bed890:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  bed893:	52                   	push   edx
  bed894:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  bed897:	51                   	push   ecx
  bed898:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  bed89b:	51                   	push   ecx
  bed89c:	53                   	push   ebx
  bed89d:	56                   	push   esi
  bed89e:	e8 29 ff ff ff       	call   0xbed7cc
  bed8a3:	83 c4 14             	add    esp,0x14
  bed8a6:	8b f0                	mov    esi,eax
  bed8a8:	85 f6                	test   esi,esi
  bed8aa:	74 0a                	je     0xbed8b6
  bed8ac:	53                   	push   ebx
  bed8ad:	e8 62 46 0a 00       	call   0xc91f14
  bed8b2:	8b c6                	mov    eax,esi
  bed8b4:	eb 08                	jmp    0xbed8be
  bed8b6:	53                   	push   ebx
  bed8b7:	e8 58 46 0a 00       	call   0xc91f14
  bed8bc:	33 c0                	xor    eax,eax
  bed8be:	5e                   	pop    esi
  bed8bf:	5b                   	pop    ebx
  bed8c0:	5d                   	pop    ebp
  bed8c1:	c3                   	ret
  bed8c2:	90                   	nop
  bed8c3:	90                   	nop
  bed8c4:	55                   	push   ebp
  bed8c5:	8b ec                	mov    ebp,esp
  bed8c7:	81 c4 b8 fe ff ff    	add    esp,0xfffffeb8
  bed8cd:	b8 c4 82 f7 00       	mov    eax,0xf782c4
  bed8d2:	53                   	push   ebx
  bed8d3:	56                   	push   esi
  bed8d4:	57                   	push   edi
  bed8d5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  bed8d8:	e8 33 cf ed ff       	call   0xaca810
  bed8dd:	8d bd b8 fe ff ff    	lea    edi,[ebp-0x148]
  bed8e3:	be 60 78 f7 00       	mov    esi,0xf77860
  bed8e8:	b9 47 00 00 00       	mov    ecx,0x47
  bed8ed:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  bed8ef:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
  bed8f1:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
  bed8f4:	88 85 b8 fe ff ff    	mov    BYTE PTR [ebp-0x148],al
  bed8fa:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  bed900:	c6 85 b9 fe ff ff 05 	mov    BYTE PTR [ebp-0x147],0x5
  bed907:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  bed90a:	05 86 00 00 00       	add    eax,0x86
  bed90f:	52                   	push   edx
  bed910:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  bed913:	51                   	push   ecx
  bed914:	50                   	push   eax
  bed915:	e8 96 0d ed ff       	call   0xabe6b0
  bed91a:	83 c4 0c             	add    esp,0xc
  bed91d:	8d 4d d8             	lea    ecx,[ebp-0x28]
  bed920:	c7 45 d8 1e 01 00 00 	mov    DWORD PTR [ebp-0x28],0x11e
  bed927:	51                   	push   ecx
  bed928:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  bed92e:	50                   	push   eax
  bed92f:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  bed932:	52                   	push   edx
  bed933:	53                   	push   ebx
  bed934:	e8 1b fd ff ff       	call   0xbed654
  bed939:	83 c4 10             	add    esp,0x10
  bed93c:	85 c0                	test   eax,eax
  bed93e:	74 0c                	je     0xbed94c
  bed940:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bed943:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bed94a:	eb 0c                	jmp    0xbed958
  bed94c:	33 c0                	xor    eax,eax
  bed94e:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  bed951:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  bed958:	5f                   	pop    edi
  bed959:	5e                   	pop    esi
  bed95a:	5b                   	pop    ebx
  bed95b:	8b e5                	mov    esp,ebp
  bed95d:	5d                   	pop    ebp
  bed95e:	c3                   	ret
  bed95f:	90                   	nop
  bed960:	55                   	push   ebp
  bed961:	8b ec                	mov    ebp,esp
  bed963:	53                   	push   ebx
  bed964:	56                   	push   esi
  bed965:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bed968:	6a 01                	push   0x1
  bed96a:	66 8b 45 10          	mov    ax,WORD PTR [ebp+0x10]
  bed96e:	50                   	push   eax
  bed96f:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  bed973:	52                   	push   edx
  bed974:	e8 03 e3 ff ff       	call   0xbebc7c
  bed979:	83 c4 0c             	add    esp,0xc
  bed97c:	8b d8                	mov    ebx,eax
  bed97e:	83 fb ff             	cmp    ebx,0xffffffff
  bed981:	75 05                	jne    0xbed988
  bed983:	83 c8 ff             	or     eax,0xffffffff
  bed986:	eb 2e                	jmp    0xbed9b6
  bed988:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  bed98b:	52                   	push   edx
  bed98c:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  bed98f:	51                   	push   ecx
  bed990:	8a 4d 14             	mov    cl,BYTE PTR [ebp+0x14]
  bed993:	51                   	push   ecx
  bed994:	53                   	push   ebx
  bed995:	56                   	push   esi
  bed996:	e8 29 ff ff ff       	call   0xbed8c4
  bed99b:	83 c4 14             	add    esp,0x14
  bed99e:	8b f0                	mov    esi,eax
  bed9a0:	85 f6                	test   esi,esi
  bed9a2:	74 0a                	je     0xbed9ae
  bed9a4:	53                   	push   ebx
  bed9a5:	e8 6a 45 0a 00       	call   0xc91f14
  bed9aa:	8b c6                	mov    eax,esi
  bed9ac:	eb 08                	jmp    0xbed9b6
  bed9ae:	53                   	push   ebx
  bed9af:	e8 60 45 0a 00       	call   0xc91f14
  bed9b4:	33 c0                	xor    eax,eax
  bed9b6:	5e                   	pop    esi
  bed9b7:	5b                   	pop    ebx
  bed9b8:	5d                   	pop    ebp
  bed9b9:	c3                   	ret
  bed9ba:	90                   	nop
  bed9bb:	90                   	nop
  bed9bc:	55                   	push   ebp
  bed9bd:	8b ec                	mov    ebp,esp
  bed9bf:	81 c4 b8 fe ff ff    	add    esp,0xfffffeb8
  bed9c5:	b8 dc 82 f7 00       	mov    eax,0xf782dc
  bed9ca:	53                   	push   ebx
  bed9cb:	56                   	push   esi
  bed9cc:	57                   	push   edi
  bed9cd:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  bed9d0:	e8 3b ce ed ff       	call   0xaca810
  bed9d5:	8d bd b8 fe ff ff    	lea    edi,[ebp-0x148]
  bed9db:	be 14 7f f7 00       	mov    esi,0xf77f14
  bed9e0:	b9 47 00 00 00       	mov    ecx,0x47
  bed9e5:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  bed9eb:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  bed9ed:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
  bed9ef:	33 d2                	xor    edx,edx
  bed9f1:	88 9d b8 fe ff ff    	mov    BYTE PTR [ebp-0x148],bl
  bed9f7:	8a d3                	mov    dl,bl
  bed9f9:	05 86 00 00 00       	add    eax,0x86
  bed9fe:	c6 85 b9 fe ff ff 0d 	mov    BYTE PTR [ebp-0x147],0xd
  beda05:	83 fa 02             	cmp    edx,0x2
  beda08:	75 0a                	jne    0xbeda14
  beda0a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  beda0d:	8b 11                	mov    edx,DWORD PTR [ecx]
  beda0f:	89 50 60             	mov    DWORD PTR [eax+0x60],edx
  beda12:	eb 3e                	jmp    0xbeda52
  beda14:	83 fa 04             	cmp    edx,0x4
  beda17:	75 0a                	jne    0xbeda23
  beda19:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  beda1c:	8b 11                	mov    edx,DWORD PTR [ecx]
  beda1e:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  beda21:	eb 2f                	jmp    0xbeda52
  beda23:	83 fa 0e             	cmp    edx,0xe
  beda26:	75 19                	jne    0xbeda41
  beda28:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  beda2b:	8b 08                	mov    ecx,DWORD PTR [eax]
  beda2d:	89 8d be fe ff ff    	mov    DWORD PTR [ebp-0x142],ecx
  beda33:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  beda36:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  beda39:	89 95 c2 fe ff ff    	mov    DWORD PTR [ebp-0x13e],edx
  beda3f:	eb 11                	jmp    0xbeda52
  beda41:	b8 02 00 00 00       	mov    eax,0x2
  beda46:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  beda49:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  beda50:	eb 3e                	jmp    0xbeda90
  beda52:	c7 45 d8 1e 01 00 00 	mov    DWORD PTR [ebp-0x28],0x11e
  beda59:	8d 4d d8             	lea    ecx,[ebp-0x28]
  beda5c:	8d 85 b8 fe ff ff    	lea    eax,[ebp-0x148]
  beda62:	51                   	push   ecx
  beda63:	50                   	push   eax
  beda64:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  beda67:	52                   	push   edx
  beda68:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  beda6b:	51                   	push   ecx
  beda6c:	e8 e3 fb ff ff       	call   0xbed654
  beda71:	83 c4 10             	add    esp,0x10
  beda74:	85 c0                	test   eax,eax
  beda76:	74 0c                	je     0xbeda84
  beda78:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  beda7b:	64                   	fs
  beda7c:	89                   	.byte 0x89
  beda7d:	15                   	.byte 0x15
	...
