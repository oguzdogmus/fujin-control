
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bf2784 <.text+0x7f1784>:
  bf2784:	55                   	push   ebp
  bf2785:	8b ec                	mov    ebp,esp
  bf2787:	83 c4 90             	add    esp,0xffffff90
  bf278a:	80 3d 1c 17 f8 00 00 	cmp    BYTE PTR ds:0xf8171c,0x0
  bf2791:	53                   	push   ebx
  bf2792:	56                   	push   esi
  bf2793:	57                   	push   edi
  bf2794:	be 20 17 f8 00       	mov    esi,0xf81720
  bf2799:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  bf279c:	75 05                	jne    0xbf27a3
  bf279e:	e9 5c 01 00 00       	jmp    0xbf28ff
  bf27a3:	6a 42                	push   0x42
  bf27a5:	e8 ca 4b ec ff       	call   0xab7374
  bf27aa:	59                   	pop    ecx
  bf27ab:	50                   	push   eax
  bf27ac:	8b f8                	mov    edi,eax
  bf27ae:	33 c0                	xor    eax,eax
  bf27b0:	b9 42 00 00 00       	mov    ecx,0x42
  bf27b5:	f3 aa                	rep stos BYTE PTR es:[edi],al
  bf27b7:	58                   	pop    eax
  bf27b8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  bf27bb:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
  bf27bf:	75 05                	jne    0xbf27c6
  bf27c1:	e9 39 01 00 00       	jmp    0xbf28ff
  bf27c6:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  bf27c9:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  bf27cc:	33 c9                	xor    ecx,ecx
  bf27ce:	8a cb                	mov    cl,bl
  bf27d0:	88 02                	mov    BYTE PTR [edx],al
  bf27d2:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  bf27d5:	88 5a 01             	mov    BYTE PTR [edx+0x1],bl
  bf27d8:	51                   	push   ecx
  bf27d9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  bf27dc:	50                   	push   eax
  bf27dd:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  bf27e0:	83 c2 02             	add    edx,0x2
  bf27e3:	52                   	push   edx
  bf27e4:	e8 c7 be ec ff       	call   0xabe6b0
  bf27e9:	83 c4 0c             	add    esp,0xc
  bf27ec:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  bf27f0:	75 04                	jne    0xbf27f6
  bf27f2:	33 c9                	xor    ecx,ecx
  bf27f4:	eb 10                	jmp    0xbf2806
  bf27f6:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  bf27f9:	2b 4e 10             	sub    ecx,DWORD PTR [esi+0x10]
  bf27fc:	85 c9                	test   ecx,ecx
  bf27fe:	79 03                	jns    0xbf2803
  bf2800:	83 c1 03             	add    ecx,0x3
  bf2803:	c1 f9 02             	sar    ecx,0x2
  bf2806:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  bf280a:	75 04                	jne    0xbf2810
  bf280c:	33 c0                	xor    eax,eax
  bf280e:	eb 10                	jmp    0xbf2820
  bf2810:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  bf2813:	2b 46 10             	sub    eax,DWORD PTR [esi+0x10]
  bf2816:	85 c0                	test   eax,eax
  bf2818:	79 03                	jns    0xbf281d
  bf281a:	83 c0 03             	add    eax,0x3
  bf281d:	c1 f8 02             	sar    eax,0x2
  bf2820:	3b c8                	cmp    ecx,eax
  bf2822:	73 35                	jae    0xbf2859
  bf2824:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
  bf2827:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  bf282a:	8d 4d f4             	lea    ecx,[ebp-0xc]
  bf282d:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
  bf2830:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  bf2833:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
  bf2836:	8d 56 08             	lea    edx,[esi+0x8]
  bf2839:	ff 71 04             	push   DWORD PTR [ecx+0x4]
  bf283c:	ff 31                	push   DWORD PTR [ecx]
  bf283e:	8d 4d fc             	lea    ecx,[ebp-0x4]
  bf2841:	52                   	push   edx
  bf2842:	51                   	push   ecx
  bf2843:	6a 01                	push   0x1
  bf2845:	53                   	push   ebx
  bf2846:	e8 bd 00 00 00       	call   0xbf2908
  bf284b:	83 c4 18             	add    esp,0x18
  bf284e:	83 c3 04             	add    ebx,0x4
  bf2851:	89 5e 14             	mov    DWORD PTR [esi+0x14],ebx
  bf2854:	e9 a6 00 00 00       	jmp    0xbf28ff
  bf2859:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
  bf285c:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
  bf285f:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  bf2863:	75 04                	jne    0xbf2869
  bf2865:	33 c0                	xor    eax,eax
  bf2867:	eb 10                	jmp    0xbf2879
  bf2869:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  bf286c:	2b 46 10             	sub    eax,DWORD PTR [esi+0x10]
  bf286f:	85 c0                	test   eax,eax
  bf2871:	79 03                	jns    0xbf2876
  bf2873:	83 c0 03             	add    eax,0x3
  bf2876:	c1 f8 02             	sar    eax,0x2
  bf2879:	85 c0                	test   eax,eax
  bf287b:	75 04                	jne    0xbf2881
  bf287d:	33 ff                	xor    edi,edi
  bf287f:	eb 1c                	jmp    0xbf289d
  bf2881:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  bf2884:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  bf2887:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  bf288a:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  bf288d:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
  bf2890:	2b 7d c8             	sub    edi,DWORD PTR [ebp-0x38]
  bf2893:	85 ff                	test   edi,edi
  bf2895:	79 03                	jns    0xbf289a
  bf2897:	83 c7 03             	add    edi,0x3
  bf289a:	c1 ff 02             	sar    edi,0x2
  bf289d:	8d 45 fc             	lea    eax,[ebp-0x4]
  bf28a0:	50                   	push   eax
  bf28a1:	6a 01                	push   0x1
  bf28a3:	83 c4 f0             	add    esp,0xfffffff0
  bf28a6:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  bf28a9:	89 14 24             	mov    DWORD PTR [esp],edx
  bf28ac:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
  bf28af:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  bf28b3:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  bf28b6:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  bf28ba:	56                   	push   esi
  bf28bb:	e8 d4 00 00 00       	call   0xbf2994
  bf28c0:	83 c4 1c             	add    esp,0x1c
  bf28c3:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  bf28c6:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  bf28c9:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  bf28cc:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  bf28cf:	89 55 b8             	mov    DWORD PTR [ebp-0x48],edx
  bf28d2:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  bf28d5:	89 4d a0             	mov    DWORD PTR [ebp-0x60],ecx
  bf28d8:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  bf28db:	89 4d a4             	mov    DWORD PTR [ebp-0x5c],ecx
  bf28de:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
  bf28e1:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
  bf28e4:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  bf28e7:	c1 e2 02             	shl    edx,0x2
  bf28ea:	01 55 a8             	add    DWORD PTR [ebp-0x58],edx
  bf28ed:	8b 4d a0             	mov    ecx,DWORD PTR [ebp-0x60]
  bf28f0:	89 4d 90             	mov    DWORD PTR [ebp-0x70],ecx
  bf28f3:	8b 4d a4             	mov    ecx,DWORD PTR [ebp-0x5c]
  bf28f6:	89 4d 94             	mov    DWORD PTR [ebp-0x6c],ecx
  bf28f9:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  bf28fc:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
  bf28ff:	5f                   	pop    edi
  bf2900:	5e                   	pop    esi
  bf2901:	5b                   	pop    ebx
  bf2902:	8b e5                	mov    esp,ebp
  bf2904:	5d                   	pop    ebp
  bf2905:	c3                   	ret
  bf2906:	90                   	nop
  bf2907:	90                   	nop
  bf2908:	55                   	push   ebp
  bf2909:	8b ec                	mov    ebp,esp
  bf290b:	83 c4 d8             	add    esp,0xffffffd8
  bf290e:	53                   	push   ebx
  bf290f:	56                   	push   esi
  bf2910:	57                   	push   edi
  bf2911:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  bf2914:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  bf2917:	b8 64 17 f8 00       	mov    eax,0xf81764
  bf291c:	e8 ef 7e ed ff       	call   0xaca810
  bf2921:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  bf2924:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
  bf2927:	66 c7 45 ec 0c 00    	mov    WORD PTR [ebp-0x14],0xc
  bf292d:	85 f6                	test   esi,esi
  bf292f:	76 1d                	jbe    0xbf294e
  bf2931:	8b df                	mov    ebx,edi
  bf2933:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf2936:	50                   	push   eax
  bf2937:	6a 04                	push   0x4
  bf2939:	e8 7e f8 86 ff       	call   0x4621bc
  bf293e:	83 c4 08             	add    esp,0x8
  bf2941:	8b 13                	mov    edx,DWORD PTR [ebx]
  bf2943:	89 10                	mov    DWORD PTR [eax],edx
  bf2945:	4e                   	dec    esi
  bf2946:	83 45 08 04          	add    DWORD PTR [ebp+0x8],0x4
  bf294a:	85 f6                	test   esi,esi
  bf294c:	77 e3                	ja     0xbf2931
  bf294e:	66 c7 45 ec 00 00    	mov    WORD PTR [ebp-0x14],0x0
  bf2954:	eb 2b                	jmp    0xbf2981
  bf2956:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  bf2959:	3b 4d 08             	cmp    ecx,DWORD PTR [ebp+0x8]
  bf295c:	74 0c                	je     0xbf296a
  bf295e:	83 45 d8 04          	add    DWORD PTR [ebp-0x28],0x4
  bf2962:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  bf2965:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  bf2968:	75 f4                	jne    0xbf295e
  bf296a:	6a 00                	push   0x0
  bf296c:	6a 00                	push   0x0
  bf296e:	e8 65 a9 ed ff       	call   0xacd2d8
  bf2973:	83 c4 08             	add    esp,0x8
  bf2976:	66 c7 45 ec 14 00    	mov    WORD PTR [ebp-0x14],0x14
  bf297c:	e8 4b aa ed ff       	call   0xacd3cc
  bf2981:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  bf2984:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  bf298b:	5f                   	pop    edi
  bf298c:	5e                   	pop    esi
  bf298d:	5b                   	pop    ebx
  bf298e:	8b e5                	mov    esp,ebp
  bf2990:	5d                   	pop    ebp
  bf2991:	c3                   	ret
  bf2992:	90                   	nop
  bf2993:	90                   	nop
  bf2994:	55                   	push   ebp
  bf2995:	8b ec                	mov    ebp,esp
  bf2997:	81 c4 a0 fd ff ff    	add    esp,0xfffffda0
  bf299d:	b8 f4 17 f8 00       	mov    eax,0xf817f4
  bf29a2:	53                   	push   ebx
  bf29a3:	56                   	push   esi
  bf29a4:	57                   	push   edi
  bf29a5:	8d 5d a8             	lea    ebx,[ebp-0x58]
  bf29a8:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  bf29ab:	e8 60 7e ed ff       	call   0xaca810
  bf29b0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  bf29b3:	83 7a 10 00          	cmp    DWORD PTR [edx+0x10],0x0
  bf29b7:	75 04                	jne    0xbf29bd
  bf29b9:	33 c9                	xor    ecx,ecx
  bf29bb:	eb 16                	jmp    0xbf29d3
  bf29bd:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  bf29c0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  bf29c3:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
  bf29c6:	2b 48 10             	sub    ecx,DWORD PTR [eax+0x10]
  bf29c9:	85 c9                	test   ecx,ecx
  bf29cb:	79 03                	jns    0xbf29d0
  bf29cd:	83 c1 03             	add    ecx,0x3
  bf29d0:	c1 f9 02             	sar    ecx,0x2
  bf29d3:	89 4d 80             	mov    DWORD PTR [ebp-0x80],ecx
  bf29d6:	83 7d 1c 00          	cmp    DWORD PTR [ebp+0x1c],0x0
  bf29da:	0f 84 51 0d 00 00    	je     0xbf3731
  bf29e0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  bf29e3:	83 c2 08             	add    edx,0x8
  bf29e6:	52                   	push   edx
  bf29e7:	e8 e8 0d 00 00       	call   0xbf37d4
  bf29ec:	59                   	pop    ecx
  bf29ed:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  bf29f0:	83 7a 10 00          	cmp    DWORD PTR [edx+0x10],0x0
  bf29f4:	75 04                	jne    0xbf29fa
  bf29f6:	33 c9                	xor    ecx,ecx
  bf29f8:	eb 16                	jmp    0xbf2a10
  bf29fa:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  bf29fd:	8b 4a 14             	mov    ecx,DWORD PTR [edx+0x14]
  bf2a00:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  bf2a03:	2b 4a 10             	sub    ecx,DWORD PTR [edx+0x10]
  bf2a06:	85 c9                	test   ecx,ecx
  bf2a08:	79 03                	jns    0xbf2a0d
  bf2a0a:	83 c1 03             	add    ecx,0x3
  bf2a0d:	c1 f9 02             	sar    ecx,0x2
  bf2a10:	2b c1                	sub    eax,ecx
  bf2a12:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
  bf2a15:	0f 83 e6 06 00 00    	jae    0xbf3101
  bf2a1b:	8d 45 84             	lea    eax,[ebp-0x7c]
  bf2a1e:	8d 8d 78 ff ff ff    	lea    ecx,[ebp-0x88]
  bf2a24:	50                   	push   eax
  bf2a25:	6a 00                	push   0x0
  bf2a27:	6a 00                	push   0x0
  bf2a29:	6a 00                	push   0x0
  bf2a2b:	6a 01                	push   0x1
  bf2a2d:	68                   	.byte 0x68
  bf2a2e:	9c                   	pushf
  bf2a2f:	fb                   	sti
