
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00559400 <.text+0x158400>:
  559400:	da 3b                	fidivr DWORD PTR [ebx]
  559402:	7d 08                	jge    0x55940c
  559404:	7d 32                	jge    0x559438
  559406:	d9 03                	fld    DWORD PTR [ebx]
  559408:	d8 0d 44 94 55 00    	fmul   DWORD PTR ds:0x559444
  55940e:	e8 49 d2 56 00       	call   0xac665c
  559413:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  559416:	d9 06                	fld    DWORD PTR [esi]
  559418:	d8 0d 44 94 55 00    	fmul   DWORD PTR ds:0x559444
  55941e:	e8 39 d2 56 00       	call   0xac665c
  559423:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
  559426:	74 04                	je     0x55942c
  559428:	b0 01                	mov    al,0x1
  55942a:	eb 0e                	jmp    0x55943a
  55942c:	47                   	inc    edi
  55942d:	83 c6 04             	add    esi,0x4
  559430:	83 c3 04             	add    ebx,0x4
  559433:	3b 7d 08             	cmp    edi,DWORD PTR [ebp+0x8]
  559436:	7c ce                	jl     0x559406
  559438:	33 c0                	xor    eax,eax
  55943a:	5f                   	pop    edi
  55943b:	5e                   	pop    esi
  55943c:	5b                   	pop    ebx
  55943d:	59                   	pop    ecx
  55943e:	5d                   	pop    ebp
  55943f:	c2 04 00             	ret    0x4
  559442:	00 00                	add    BYTE PTR [eax],al
  559444:	00 00                	add    BYTE PTR [eax],al
  559446:	20 41 53             	and    BYTE PTR [ecx+0x53],al
  559449:	56                   	push   esi
  55944a:	57                   	push   edi
  55944b:	8b f9                	mov    edi,ecx
  55944d:	33 f6                	xor    esi,esi
  55944f:	8b da                	mov    ebx,edx
  559451:	3b fe                	cmp    edi,esi
  559453:	7e 1d                	jle    0x559472
  559455:	d9 03                	fld    DWORD PTR [ebx]
  559457:	d8 0d 84 94 55 00    	fmul   DWORD PTR ds:0x559484
  55945d:	e8 fa d1 56 00       	call   0xac665c
  559462:	85 c0                	test   eax,eax
  559464:	74 04                	je     0x55946a
  559466:	33 c0                	xor    eax,eax
  559468:	eb 14                	jmp    0x55947e
  55946a:	46                   	inc    esi
  55946b:	83 c3 04             	add    ebx,0x4
  55946e:	3b fe                	cmp    edi,esi
  559470:	7f e3                	jg     0x559455
  559472:	68 fc 22 ca 00       	push   0xca22fc
  559477:	e8 50 8d 73 00       	call   0xc921cc
  55947c:	b0 01                	mov    al,0x1
  55947e:	5f                   	pop    edi
  55947f:	5e                   	pop    esi
  559480:	5b                   	pop    ebx
  559481:	c3                   	ret
  559482:	00 00                	add    BYTE PTR [eax],al
  559484:	00 00                	add    BYTE PTR [eax],al
  559486:	20 41 53             	and    BYTE PTR [ecx+0x53],al
  559489:	56                   	push   esi
  55948a:	57                   	push   edi
  55948b:	8b f8                	mov    edi,eax
  55948d:	55                   	push   ebp
  55948e:	8b da                	mov    ebx,edx
  559490:	8d 87 c8 3a 00 00    	lea    eax,[edi+0x3ac8]
  559496:	8d b7 90 38 00 00    	lea    esi,[edi+0x3890]
  55949c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  55949f:	8b 8e 04 01 00 00    	mov    ecx,DWORD PTR [esi+0x104]
  5594a5:	c1 e2 03             	shl    edx,0x3
  5594a8:	8d 14 92             	lea    edx,[edx+edx*4]
  5594ab:	03 c2                	add    eax,edx
  5594ad:	83 c0 e0             	add    eax,0xffffffe0
  5594b0:	8b d0                	mov    edx,eax
  5594b2:	8b c7                	mov    eax,edi
  5594b4:	e8 8f ff ff ff       	call   0x559448
  5594b9:	3c 01                	cmp    al,0x1
  5594bb:	75 02                	jne    0x5594bf
  5594bd:	33 db                	xor    ebx,ebx
  5594bf:	83 be f8 00 00 00 01 	cmp    DWORD PTR [esi+0xf8],0x1
  5594c6:	0f 85 2a 01 00 00    	jne    0x5595f6
  5594cc:	83 be fc 00 00 00 01 	cmp    DWORD PTR [esi+0xfc],0x1
  5594d3:	0f 85 1d 01 00 00    	jne    0x5595f6
  5594d9:	80 fb 01             	cmp    bl,0x1
  5594dc:	0f 85 14 01 00 00    	jne    0x5595f6
  5594e2:	8d 87 9e 32 00 00    	lea    eax,[edi+0x329e]
  5594e8:	50                   	push   eax
  5594e9:	66 8b 97 9a 32 00 00 	mov    dx,WORD PTR [edi+0x329a]
  5594f0:	52                   	push   edx
  5594f1:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  5594f8:	51                   	push   ecx
  5594f9:	8d 8f f8 08 00 00    	lea    ecx,[edi+0x8f8]
  5594ff:	51                   	push   ecx
  559500:	e8 f7 19 69 00       	call   0xbeaefc
  559505:	83 c4 10             	add    esp,0x10
  559508:	8b e8                	mov    ebp,eax
  55950a:	85 ed                	test   ebp,ebp
  55950c:	74 37                	je     0x559545
  55950e:	68 46 23 ca 00       	push   0xca2346
  559513:	e8 b4 8c 73 00       	call   0xc921cc
  559518:	8d 87 9e 32 00 00    	lea    eax,[edi+0x329e]
  55951e:	50                   	push   eax
  55951f:	66 8b 97 9a 32 00 00 	mov    dx,WORD PTR [edi+0x329a]
  559526:	52                   	push   edx
  559527:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  55952e:	51                   	push   ecx
  55952f:	81 c7 f8 08 00 00    	add    edi,0x8f8
  559535:	57                   	push   edi
  559536:	e8 a5 17 69 00       	call   0xbeace0
  55953b:	83 c4 10             	add    esp,0x10
  55953e:	8b c5                	mov    eax,ebp
  559540:	e9 9a 01 00 00       	jmp    0x5596df
  559545:	8d 97 9e 32 00 00    	lea    edx,[edi+0x329e]
  55954b:	52                   	push   edx
  55954c:	6a 00                	push   0x0
  55954e:	66 8b 8f 9a 32 00 00 	mov    cx,WORD PTR [edi+0x329a]
  559555:	51                   	push   ecx
  559556:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  55955d:	51                   	push   ecx
  55955e:	8d 87 f8 08 00 00    	lea    eax,[edi+0x8f8]
  559564:	50                   	push   eax
  559565:	e8 62 1a 69 00       	call   0xbeafcc
  55956a:	83 c4 14             	add    esp,0x14
  55956d:	8b e8                	mov    ebp,eax
  55956f:	85 ed                	test   ebp,ebp
  559571:	74 5d                	je     0x5595d0
  559573:	68 80 23 ca 00       	push   0xca2380
  559578:	e8 4f 8c 73 00       	call   0xc921cc
  55957d:	8d 87 9e 32 00 00    	lea    eax,[edi+0x329e]
  559583:	50                   	push   eax
  559584:	66 8b 97 9a 32 00 00 	mov    dx,WORD PTR [edi+0x329a]
  55958b:	52                   	push   edx
  55958c:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  559593:	51                   	push   ecx
  559594:	8d b7 f8 08 00 00    	lea    esi,[edi+0x8f8]
  55959a:	56                   	push   esi
  55959b:	e8 c4 19 69 00       	call   0xbeaf64
  5595a0:	83 c4 10             	add    esp,0x10
  5595a3:	8d 87 9e 32 00 00    	lea    eax,[edi+0x329e]
  5595a9:	50                   	push   eax
  5595aa:	66 8b 97 9a 32 00 00 	mov    dx,WORD PTR [edi+0x329a]
  5595b1:	52                   	push   edx
  5595b2:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  5595b9:	51                   	push   ecx
  5595ba:	81 c7 f8 08 00 00    	add    edi,0x8f8
  5595c0:	57                   	push   edi
  5595c1:	e8 1a 17 69 00       	call   0xbeace0
  5595c6:	83 c4 10             	add    esp,0x10
  5595c9:	8b c5                	mov    eax,ebp
  5595cb:	e9 0f 01 00 00       	jmp    0x5596df
  5595d0:	8d 97 9e 32 00 00    	lea    edx,[edi+0x329e]
  5595d6:	52                   	push   edx
  5595d7:	66 8b 8f 9a 32 00 00 	mov    cx,WORD PTR [edi+0x329a]
  5595de:	51                   	push   ecx
  5595df:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  5595e6:	51                   	push   ecx
  5595e7:	8d 87 f8 08 00 00    	lea    eax,[edi+0x8f8]
  5595ed:	50                   	push   eax
  5595ee:	e8 ed 16 69 00       	call   0xbeace0
  5595f3:	83 c4 10             	add    esp,0x10
  5595f6:	33 d2                	xor    edx,edx
  5595f8:	8a d3                	mov    dl,bl
  5595fa:	52                   	push   edx
  5595fb:	6a 0b                	push   0xb
  5595fd:	66 8b 8f 9a 32 00 00 	mov    cx,WORD PTR [edi+0x329a]
  559604:	51                   	push   ecx
  559605:	66 8b 87 98 32 00 00 	mov    ax,WORD PTR [edi+0x3298]
  55960c:	50                   	push   eax
  55960d:	8d 97 f8 08 00 00    	lea    edx,[edi+0x8f8]
  559613:	52                   	push   edx
  559614:	e8 4b 11 69 00       	call   0xbea764
  559619:	83 c4 14             	add    esp,0x14
  55961c:	8b e8                	mov    ebp,eax
  55961e:	85 ed                	test   ebp,ebp
  559620:	74 11                	je     0x559633
  559622:	68 c0 23 ca 00       	push   0xca23c0
  559627:	e8 a0 8b 73 00       	call   0xc921cc
  55962c:	8b c5                	mov    eax,ebp
  55962e:	e9 ac 00 00 00       	jmp    0x5596df
  559633:	83 be f8 00 00 00 01 	cmp    DWORD PTR [esi+0xf8],0x1
  55963a:	0f 85 9d 00 00 00    	jne    0x5596dd
  559640:	83 be fc 00 00 00 01 	cmp    DWORD PTR [esi+0xfc],0x1
  559647:	0f 85 90 00 00 00    	jne    0x5596dd
  55964d:	84 db                	test   bl,bl
  55964f:	0f 85 88 00 00 00    	jne    0x5596dd
  559655:	8d b7 9e 32 00 00    	lea    esi,[edi+0x329e]
  55965b:	56                   	push   esi
  55965c:	66 8b 87 9a 32 00 00 	mov    ax,WORD PTR [edi+0x329a]
  559663:	50                   	push   eax
  559664:	66 8b 97 98 32 00 00 	mov    dx,WORD PTR [edi+0x3298]
  55966b:	52                   	push   edx
  55966c:	8d 9f f8 08 00 00    	lea    ebx,[edi+0x8f8]
  559672:	53                   	push   ebx
  559673:	e8 84 18 69 00       	call   0xbeaefc
  559678:	83 c4 10             	add    esp,0x10
  55967b:	8b e8                	mov    ebp,eax
  55967d:	85 ed                	test   ebp,ebp
  55967f:	74 28                	je     0x5596a9
  559681:	68 32 24 ca 00       	push   0xca2432
  559686:	e8 41 8b 73 00       	call   0xc921cc
  55968b:	56                   	push   esi
  55968c:	66 8b 87 9a 32 00 00 	mov    ax,WORD PTR [edi+0x329a]
  559693:	50                   	push   eax
  559694:	66 8b 97 98 32 00 00 	mov    dx,WORD PTR [edi+0x3298]
  55969b:	52                   	push   edx
  55969c:	53                   	push   ebx
  55969d:	e8 3e 16 69 00       	call   0xbeace0
  5596a2:	83 c4 10             	add    esp,0x10
  5596a5:	8b c5                	mov    eax,ebp
  5596a7:	eb 36                	jmp    0x5596df
  5596a9:	56                   	push   esi
  5596aa:	66 8b 97 9a 32 00 00 	mov    dx,WORD PTR [edi+0x329a]
  5596b1:	52                   	push   edx
  5596b2:	66 8b 8f 98 32 00 00 	mov    cx,WORD PTR [edi+0x3298]
  5596b9:	51                   	push   ecx
  5596ba:	53                   	push   ebx
  5596bb:	e8 a4 18 69 00       	call   0xbeaf64
  5596c0:	83 c4 10             	add    esp,0x10
  5596c3:	56                   	push   esi
  5596c4:	66 8b 8f 9a 32 00 00 	mov    cx,WORD PTR [edi+0x329a]
  5596cb:	51                   	push   ecx
  5596cc:	66 8b 87 98 32 00 00 	mov    ax,WORD PTR [edi+0x3298]
  5596d3:	50                   	push   eax
  5596d4:	53                   	push   ebx
  5596d5:	e8 06 16 69 00       	call   0xbeace0
  5596da:	83 c4 10             	add    esp,0x10
  5596dd:	33 c0                	xor    eax,eax
  5596df:	5d                   	pop    ebp
  5596e0:	5f                   	pop    edi
  5596e1:	5e                   	pop    esi
  5596e2:	5b                   	pop    ebx
  5596e3:	c3                   	ret
  5596e4:	53                   	push   ebx
  5596e5:	56                   	push   esi
  5596e6:	57                   	push   edi
  5596e7:	55                   	push   ebp
  5596e8:	8b da                	mov    ebx,edx
  5596ea:	8b e8                	mov    ebp,eax
  5596ec:	8d bd 90 38 00 00    	lea    edi,[ebp+0x3890]
  5596f2:	8d 85 c8 3a 00 00    	lea    eax,[ebp+0x3ac8]
  5596f8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  5596fb:	c1 e2 03             	shl    edx,0x3
  5596fe:	8d 14 92             	lea    edx,[edx+edx*4]
  559701:	03 c2                	add    eax,edx
  559703:	83 c0 e0             	add    eax,0xffffffe0
  559706:	8b 8f 04 01 00 00    	mov    ecx,DWORD PTR [edi+0x104]
  55970c:	8b d0                	mov    edx,eax
  55970e:	8b c5                	mov    eax,ebp
  559710:	e8 33 fd ff ff       	call   0x559448
  559715:	3c 01                	cmp    al,0x1
  559717:	75 02                	jne    0x55971b
  559719:	33 db                	xor    ebx,ebx
  55971b:	8d 85 9e 32 00 00    	lea    eax,[ebp+0x329e]
  559721:	50                   	push   eax
  559722:	66 8b 95 9a 32 00 00 	mov    dx,WORD PTR [ebp+0x329a]
  559729:	52                   	push   edx
  55972a:	66 8b 8d 98 32 00 00 	mov    cx,WORD PTR [ebp+0x3298]
  559731:	51                   	push   ecx
  559732:	8d 8d f8 08 00 00    	lea    ecx,[ebp+0x8f8]
  559738:	51                   	push   ecx
  559739:	e8 be 17 69 00       	call   0xbeaefc
  55973e:	83 c4 10             	add    esp,0x10
  559741:	8b f0                	mov    esi,eax
  559743:	85 f6                	test   esi,esi
  559745:	74 37                	je     0x55977e
  559747:	68 6c 24 ca 00       	push   0xca246c
  55974c:	e8 7b 8a 73 00       	call   0xc921cc
  559751:	8d 85 9e 32 00 00    	lea    eax,[ebp+0x329e]
  559757:	50                   	push   eax
  559758:	66 8b 95 9a 32 00 00 	mov    dx,WORD PTR [ebp+0x329a]
  55975f:	52                   	push   edx
  559760:	66 8b 8d 98 32 00 00 	mov    cx,WORD PTR [ebp+0x3298]
  559767:	51                   	push   ecx
  559768:	81 c5 f8 08 00 00    	add    ebp,0x8f8
  55976e:	55                   	push   ebp
  55976f:	e8 6c 15 69 00       	call   0xbeace0
  559774:	83 c4 10             	add    esp,0x10
  559777:	8b c6                	mov    eax,esi
  559779:	e9 f3 00 00 00       	jmp    0x559871
  55977e:	8d 95 9e 32 00 00    	lea    edx,[ebp+0x329e]
  559784:	33 c9                	xor    ecx,ecx
  559786:	8a cb                	mov    cl,bl
  559788:	52                   	push   edx
  559789:	51                   	push   ecx
  55978a:	8d 95 f8 08 00 00    	lea    edx,[ebp+0x8f8]
  559790:	66 8b 8d 9a 32 00 00 	mov    cx,WORD PTR [ebp+0x329a]
  559797:	51                   	push   ecx
  559798:	66 8b 85 98 32 00 00 	mov    ax,WORD PTR [ebp+0x3298]
  55979f:	50                   	push   eax
  5597a0:	52                   	push   edx
  5597a1:	e8 26 18 69 00       	call   0xbeafcc
  5597a6:	83 c4 14             	add    esp,0x14
  5597a9:	8b f0                	mov    esi,eax
  5597ab:	85 f6                	test   esi,esi
  5597ad:	74 67                	je     0x559816
  5597af:	68 a6 24 ca 00       	push   0xca24a6
  5597b4:	e8 13 8a 73 00       	call   0xc921cc
  5597b9:	83 bf f8 00 00 00 01 	cmp    DWORD PTR [edi+0xf8],0x1
  5597c0:	75 2a                	jne    0x5597ec
  5597c2:	84 db                	test   bl,bl
  5597c4:	75 26                	jne    0x5597ec
  5597c6:	8d 85 9e 32 00 00    	lea    eax,[ebp+0x329e]
  5597cc:	50                   	push   eax
  5597cd:	66 8b 95 9a 32 00 00 	mov    dx,WORD PTR [ebp+0x329a]
  5597d4:	52                   	push   edx
  5597d5:	66 8b 8d 98 32 00 00 	mov    cx,WORD PTR [ebp+0x3298]
  5597dc:	51                   	push   ecx
  5597dd:	8d bd f8 08 00 00    	lea    edi,[ebp+0x8f8]
  5597e3:	57                   	push   edi
  5597e4:	e8 7b 17 69 00       	call   0xbeaf64
  5597e9:	83 c4 10             	add    esp,0x10
  5597ec:	8d 85 9e 32 00 00    	lea    eax,[ebp+0x329e]
  5597f2:	50                   	push   eax
  5597f3:	66 8b 95 9a 32 00 00 	mov    dx,WORD PTR [ebp+0x329a]
  5597fa:	52                   	push   edx
  5597fb:	66 8b 8d 98 32 00 00 	mov    cx,WORD PTR [ebp+0x3298]
  559802:	51                   	push   ecx
  559803:	81 c5 f8 08 00 00    	add    ebp,0x8f8
  559809:	55                   	push   ebp
  55980a:	e8 d1 14 69 00       	call   0xbeace0
  55980f:	83 c4 10             	add    esp,0x10
  559812:	8b c6                	mov    eax,esi
  559814:	eb 5b                	jmp    0x559871
  559816:	83 bf f8 00 00 00 01 	cmp    DWORD PTR [edi+0xf8],0x1
  55981d:	75 2a                	jne    0x559849
  55981f:	84 db                	test   bl,bl
  559821:	75 26                	jne    0x559849
  559823:	8d 95 9e 32 00 00    	lea    edx,[ebp+0x329e]
  559829:	52                   	push   edx
  55982a:	66 8b 8d 9a 32 00 00 	mov    cx,WORD PTR [ebp+0x329a]
  559831:	51                   	push   ecx
  559832:	66 8b 85 98 32 00 00 	mov    ax,WORD PTR [ebp+0x3298]
  559839:	50                   	push   eax
  55983a:	8d 95 f8 08 00 00    	lea    edx,[ebp+0x8f8]
  559840:	52                   	push   edx
  559841:	e8 1e 17 69 00       	call   0xbeaf64
  559846:	83 c4 10             	add    esp,0x10
  559849:	8d 8d 9e 32 00 00    	lea    ecx,[ebp+0x329e]
  55984f:	51                   	push   ecx
  559850:	66 8b 85 9a 32 00 00 	mov    ax,WORD PTR [ebp+0x329a]
  559857:	50                   	push   eax
  559858:	66 8b 95 98 32 00 00 	mov    dx,WORD PTR [ebp+0x3298]
  55985f:	52                   	push   edx
  559860:	81 c5 f8 08 00 00    	add    ebp,0x8f8
  559866:	55                   	push   ebp
  559867:	e8 74 14 69 00       	call   0xbeace0
  55986c:	83 c4 10             	add    esp,0x10
  55986f:	33 c0                	xor    eax,eax
  559871:	5d                   	pop    ebp
  559872:	5f                   	pop    edi
  559873:	5e                   	pop    esi
  559874:	5b                   	pop    ebx
  559875:	c3                   	ret
  559876:	90                   	nop
  559877:	90                   	nop
  559878:	53                   	push   ebx
  559879:	8d 88 90 38 00 00    	lea    ecx,[eax+0x3890]
  55987f:	83 b9 f4 00 00 00 01 	cmp    DWORD PTR [ecx+0xf4],0x1
  559886:	75 1d                	jne    0x5598a5
  559888:	e8 fb fb ff ff       	call   0x559488
  55988d:	8b d8                	mov    ebx,eax
  55988f:	85 db                	test   ebx,ebx
  559891:	74 0e                	je     0x5598a1
  559893:	68 e6 24 ca 00       	push   0xca24e6
  559898:	e8 2f 89 73 00       	call   0xc921cc
  55989d:	8b c3                	mov    eax,ebx
  55989f:	5b                   	pop    ebx
  5598a0:	c3                   	ret
  5598a1:	33 c0                	xor    eax,eax
  5598a3:	5b                   	pop    ebx
  5598a4:	c3                   	ret
  5598a5:	e8 3a fe ff ff       	call   0x5596e4
  5598aa:	8b d8                	mov    ebx,eax
  5598ac:	85 db                	test   ebx,ebx
  5598ae:	74 0e                	je     0x5598be
  5598b0:	68 3c 25 ca 00       	push   0xca253c
  5598b5:	e8 12 89 73 00       	call   0xc921cc
  5598ba:	8b c3                	mov    eax,ebx
  5598bc:	5b                   	pop    ebx
  5598bd:	c3                   	ret
  5598be:	33 c0                	xor    eax,eax
  5598c0:	5b                   	pop    ebx
  5598c1:	c3                   	ret
  5598c2:	90                   	nop
  5598c3:	90                   	nop
  5598c4:	55                   	push   ebp
  5598c5:	8b ec                	mov    ebp,esp
  5598c7:	81 c4 4c ff ff ff    	add    esp,0xffffff4c
  5598cd:	53                   	push   ebx
  5598ce:	56                   	push   esi
  5598cf:	57                   	push   edi
  5598d0:	8b f1                	mov    esi,ecx
  5598d2:	8b fa                	mov    edi,edx
  5598d4:	8b d8                	mov    ebx,eax
  5598d6:	b8 b4 53 ca 00       	mov    eax,0xca53b4
  5598db:	e8 30 0f 57 00       	call   0xaca810
  5598e0:	8d 93 90 38 00 00    	lea    edx,[ebx+0x3890]
  5598e6:	8d 8b c8 3a 00 00    	lea    ecx,[ebx+0x3ac8]
  5598ec:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
  5598ef:	89 4d d4             	mov    DWORD PTR [ebp-0x2c],ecx
  5598f2:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  5598f5:	83 b9 f4 00 00 00 01 	cmp    DWORD PTR [ecx+0xf4],0x1
  5598fc:	0f 85 8a 00 00 00    	jne    0x55998c
  559902:	56                   	push   esi
  559903:	57                   	push   edi
  559904:	8d bd 4c ff ff ff    	lea    edi,[ebp-0xb4]
  55990a:	be 3a 0f ca 00       	mov    esi,0xca0f3a
  55990f:	b9 21 00 00 00       	mov    ecx,0x21
  559914:	8d 85 50 ff ff ff    	lea    eax,[ebp-0xb0]
  55991a:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  55991c:	5f                   	pop    edi
  55991d:	5e                   	pop    esi
  55991e:	c1 e6 02             	shl    esi,0x2
  559921:	56                   	push   esi
  559922:	57                   	push   edi
  559923:	50                   	push   eax
  559924:	e8 87 4d 56 00       	call   0xabe6b0
  559929:	83 c4 0c             	add    esp,0xc
  55992c:	68 84 00 00 00       	push   0x84
  559931:	8d 95 4c ff ff ff    	lea    edx,[ebp-0xb4]
  559937:	52                   	push   edx
  559938:	6a 0b                	push   0xb
  55993a:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  559941:	51                   	push   ecx
  559942:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  559949:	51                   	push   ecx
  55994a:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  559950:	53                   	push   ebx
  559951:	e8 6a 0e 69 00       	call   0xbea7c0
  559956:	83 c4 18             	add    esp,0x18
  559959:	85 c0                	test   eax,eax
  55995b:	74 1e                	je     0x55997b
  55995d:	68 92 25 ca 00       	push   0xca2592
  559962:	e8 65 88 73 00       	call   0xc921cc
  559967:	b8 01 00 00 00       	mov    eax,0x1
  55996c:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  55996f:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  559976:	e9 d9 02 00 00       	jmp    0x559c54
  55997b:	33 c0                	xor    eax,eax
  55997d:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  559980:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  559987:	e9 c8 02 00 00       	jmp    0x559c54
  55998c:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  559992:	51                   	push   ecx
  559993:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  55999a:	51                   	push   ecx
  55999b:	66 8b 83 98 32 00 00 	mov    ax,WORD PTR [ebx+0x3298]
  5599a2:	50                   	push   eax
  5599a3:	8d 93 f8 08 00 00    	lea    edx,[ebx+0x8f8]
  5599a9:	52                   	push   edx
  5599aa:	e8 4d 15 69 00       	call   0xbeaefc
  5599af:	83 c4 10             	add    esp,0x10
  5599b2:	8b f0                	mov    esi,eax
  5599b4:	85 f6                	test   esi,esi
  5599b6:	74 41                	je     0x5599f9
  5599b8:	68 00 26 ca 00       	push   0xca2600
  5599bd:	e8 0a 88 73 00       	call   0xc921cc
  5599c2:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  5599c8:	50                   	push   eax
  5599c9:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  5599d0:	52                   	push   edx
  5599d1:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  5599d8:	51                   	push   ecx
  5599d9:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  5599df:	53                   	push   ebx
  5599e0:	e8 fb 12 69 00       	call   0xbeace0
  5599e5:	83 c4 10             	add    esp,0x10
  5599e8:	8b c6                	mov    eax,esi
  5599ea:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  5599ed:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  5599f4:	e9 5b 02 00 00       	jmp    0x559c54
  5599f9:	83 7d 08 ff          	cmp    DWORD PTR [ebp+0x8],0xffffffff
  5599fd:	0f 84 23 01 00 00    	je     0x559b26
  559a03:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  559a09:	51                   	push   ecx
  559a0a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  559a0d:	ff 74 8f fc          	push   DWORD PTR [edi+ecx*4-0x4]
  559a11:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  559a14:	52                   	push   edx
  559a15:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  559a1c:	51                   	push   ecx
  559a1d:	66 8b 83 98 32 00 00 	mov    ax,WORD PTR [ebx+0x3298]
  559a24:	50                   	push   eax
  559a25:	8d 93 f8 08 00 00    	lea    edx,[ebx+0x8f8]
  559a2b:	52                   	push   edx
  559a2c:	e8 07 16 69 00       	call   0xbeb038
  559a31:	83 c4 18             	add    esp,0x18
  559a34:	8b f0                	mov    esi,eax
  559a36:	85 f6                	test   esi,esi
  559a38:	74 7b                	je     0x559ab5
  559a3a:	68 3a 26 ca 00       	push   0xca263a
  559a3f:	e8 88 87 73 00       	call   0xc921cc
  559a44:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  559a47:	83 b8 f8 00 00 00 01 	cmp    DWORD PTR [eax+0xf8],0x1
  559a4e:	75 2e                	jne    0x559a7e
  559a50:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
  559a53:	83 3a 00             	cmp    DWORD PTR [edx],0x0
  559a56:	75 26                	jne    0x559a7e
  559a58:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  559a5e:	51                   	push   ecx
  559a5f:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  559a66:	51                   	push   ecx
  559a67:	66 8b 83 98 32 00 00 	mov    ax,WORD PTR [ebx+0x3298]
  559a6e:	50                   	push   eax
  559a6f:	8d 93 f8 08 00 00    	lea    edx,[ebx+0x8f8]
  559a75:	52                   	push   edx
  559a76:	e8 e9 14 69 00       	call   0xbeaf64
  559a7b:	83 c4 10             	add    esp,0x10
  559a7e:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  559a84:	51                   	push   ecx
  559a85:	66 8b 83 9a 32 00 00 	mov    ax,WORD PTR [ebx+0x329a]
  559a8c:	50                   	push   eax
  559a8d:	66 8b 93 98 32 00 00 	mov    dx,WORD PTR [ebx+0x3298]
  559a94:	52                   	push   edx
  559a95:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  559a9b:	53                   	push   ebx
  559a9c:	e8 3f 12 69 00       	call   0xbeace0
  559aa1:	83 c4 10             	add    esp,0x10
  559aa4:	8b c6                	mov    eax,esi
  559aa6:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  559aa9:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  559ab0:	e9 9f 01 00 00       	jmp    0x559c54
  559ab5:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  559ab8:	83 b9 f8 00 00 00 01 	cmp    DWORD PTR [ecx+0xf8],0x1
  559abf:	75 2e                	jne    0x559aef
  559ac1:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  559ac4:	83 39 00             	cmp    DWORD PTR [ecx],0x0
  559ac7:	75 26                	jne    0x559aef
  559ac9:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  559acf:	50                   	push   eax
  559ad0:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  559ad7:	52                   	push   edx
  559ad8:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  559adf:	51                   	push   ecx
  559ae0:	8d 83 f8 08 00 00    	lea    eax,[ebx+0x8f8]
  559ae6:	50                   	push   eax
  559ae7:	e8 78 14 69 00       	call   0xbeaf64
  559aec:	83 c4 10             	add    esp,0x10
  559aef:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  559af5:	52                   	push   edx
  559af6:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  559afd:	51                   	push   ecx
  559afe:	66 8b 83 98 32 00 00 	mov    ax,WORD PTR [ebx+0x3298]
  559b05:	50                   	push   eax
  559b06:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  559b0c:	53                   	push   ebx
  559b0d:	e8 ce 11 69 00       	call   0xbeace0
  559b12:	83 c4 10             	add    esp,0x10
  559b15:	33 c0                	xor    eax,eax
  559b17:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  559b1a:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  559b21:	e9 2e 01 00 00       	jmp    0x559c54
  559b26:	be 01 00 00 00       	mov    esi,0x1
  559b2b:	8b c7                	mov    eax,edi
  559b2d:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
  559b30:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  559b36:	52                   	push   edx
  559b37:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  559b3a:	ff 31                	push   DWORD PTR [ecx]
  559b3c:	56                   	push   esi
  559b3d:	66                   	data16
  559b3e:	8b                   	.byte 0x8b
  559b3f:	93                   	xchg   ebx,eax
