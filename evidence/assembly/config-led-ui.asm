
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00601e00 <.text+0x200e00>:
  601e00:	83 c4 0c             	add    esp,0xc
  601e03:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  601e07:	2b 55 94             	sub    edx,DWORD PTR [ebp-0x6c]
  601e0a:	89 55 84             	mov    DWORD PTR [ebp-0x7c],edx
  601e0d:	8b 4d 84             	mov    ecx,DWORD PTR [ebp-0x7c]
  601e10:	89 4d 80             	mov    DWORD PTR [ebp-0x80],ecx
  601e13:	66 c7 85 7e ff ff ff 	mov    WORD PTR [ebp-0x82],0x0
  601e1a:	00 00
  601e1c:	8b 75 80             	mov    esi,DWORD PTR [ebp-0x80]
  601e1f:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  601e23:	03 f6                	add    esi,esi
  601e25:	83 7c 24 24 08       	cmp    DWORD PTR [esp+0x24],0x8
  601e2a:	72 06                	jb     0x601e32
  601e2c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  601e30:	eb 04                	jmp    0x601e36
  601e32:	8d 44 24 10          	lea    eax,[esp+0x10]
  601e36:	03 f0                	add    esi,eax
  601e38:	89 b5 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],esi
  601e3e:	8b 95 78 ff ff ff    	mov    edx,DWORD PTR [ebp-0x88]
  601e44:	66 8b 8d 7e ff ff ff 	mov    cx,WORD PTR [ebp-0x82]
  601e4b:	66 89 0a             	mov    WORD PTR [edx],cx
  601e4e:	e9 38 02 00 00       	jmp    0x60208b
  601e53:	8b 75 bc             	mov    esi,DWORD PTR [ebp-0x44]
  601e56:	89 b5 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],esi
  601e5c:	8d 44 24 08          	lea    eax,[esp+0x8]
  601e60:	50                   	push   eax
  601e61:	e8 7e 29 e0 ff       	call   0x4047e4
  601e66:	59                   	pop    ecx
  601e67:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
  601e6d:	83 bd 70 ff ff ff 01 	cmp    DWORD PTR [ebp-0x90],0x1
  601e74:	77 07                	ja     0x601e7d
  601e76:	ba 01 00 00 00       	mov    edx,0x1
  601e7b:	eb 07                	jmp    0x601e84
  601e7d:	8b 95 70 ff ff ff    	mov    edx,DWORD PTR [ebp-0x90]
  601e83:	4a                   	dec    edx
  601e84:	3b 95 74 ff ff ff    	cmp    edx,DWORD PTR [ebp-0x8c]
  601e8a:	73 07                	jae    0x601e93
  601e8c:	54                   	push   esp
  601e8d:	e8 de 55 4b 00       	call   0xab7470
  601e92:	59                   	pop    ecx
  601e93:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  601e97:	3b 85 74 ff ff ff    	cmp    eax,DWORD PTR [ebp-0x8c]
  601e9d:	0f 83 ef 00 00 00    	jae    0x601f92
  601ea3:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  601ea7:	51                   	push   ecx
  601ea8:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
  601eae:	50                   	push   eax
  601eaf:	8d 54 24 08          	lea    edx,[esp+0x8]
  601eb3:	52                   	push   edx
  601eb4:	e8 1f 27 e0 ff       	call   0x4045d8
  601eb9:	83 c4 0c             	add    esp,0xc
  601ebc:	e9 14 01 00 00       	jmp    0x601fd5
  601ec1:	e9 cc 00 00 00       	jmp    0x601f92
  601ec6:	83 bd 74 ff ff ff 08 	cmp    DWORD PTR [ebp-0x8c],0x8
  601ecd:	0f 83 bf 00 00 00    	jae    0x601f92
  601ed3:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  601ed7:	3b 8d 74 ff ff ff    	cmp    ecx,DWORD PTR [ebp-0x8c]
  601edd:	76 06                	jbe    0x601ee5
  601edf:	8b b5 74 ff ff ff    	mov    esi,DWORD PTR [ebp-0x8c]
  601ee5:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  601ee9:	89 b5 6c ff ff ff    	mov    DWORD PTR [ebp-0x94],esi
  601eef:	83 7c 24 24 08       	cmp    DWORD PTR [esp+0x24],0x8
  601ef4:	72 53                	jb     0x601f49
  601ef6:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  601efa:	89 85 68 ff ff ff    	mov    DWORD PTR [ebp-0x98],eax
  601f00:	83 bd 6c ff ff ff 00 	cmp    DWORD PTR [ebp-0x94],0x0
  601f07:	76 27                	jbe    0x601f30
  601f09:	8b 95 68 ff ff ff    	mov    edx,DWORD PTR [ebp-0x98]
  601f0f:	89 95 64 ff ff ff    	mov    DWORD PTR [ebp-0x9c],edx
  601f15:	8b 8d 6c ff ff ff    	mov    ecx,DWORD PTR [ebp-0x94]
  601f1b:	51                   	push   ecx
  601f1c:	8b 85 64 ff ff ff    	mov    eax,DWORD PTR [ebp-0x9c]
  601f22:	50                   	push   eax
  601f23:	8d 54 24 18          	lea    edx,[esp+0x18]
  601f27:	52                   	push   edx
  601f28:	e8 77 cc 4b 00       	call   0xabeba4
  601f2d:	83 c4 0c             	add    esp,0xc
  601f30:	8b 8d 68 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x98]
  601f36:	89 8d 60 ff ff ff    	mov    DWORD PTR [ebp-0xa0],ecx
  601f3c:	8b 85 60 ff ff ff    	mov    eax,DWORD PTR [ebp-0xa0]
  601f42:	50                   	push   eax
  601f43:	e8 f0 9f 4a 00       	call   0xaabf38
  601f48:	59                   	pop    ecx
  601f49:	ba 07 00 00 00       	mov    edx,0x7
  601f4e:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  601f52:	66 c7 85 5e ff ff ff 	mov    WORD PTR [ebp-0xa2],0x0
  601f59:	00 00
  601f5b:	8b 8d 6c ff ff ff    	mov    ecx,DWORD PTR [ebp-0x94]
  601f61:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  601f65:	03 c9                	add    ecx,ecx
  601f67:	83 7c 24 24 08       	cmp    DWORD PTR [esp+0x24],0x8
  601f6c:	72 06                	jb     0x601f74
  601f6e:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  601f72:	eb 04                	jmp    0x601f78
  601f74:	8d 44 24 10          	lea    eax,[esp+0x10]
  601f78:	03 c8                	add    ecx,eax
  601f7a:	89 8d 58 ff ff ff    	mov    DWORD PTR [ebp-0xa8],ecx
  601f80:	8b 95 58 ff ff ff    	mov    edx,DWORD PTR [ebp-0xa8]
  601f86:	66 8b 8d 5e ff ff ff 	mov    cx,WORD PTR [ebp-0xa2]
  601f8d:	66 89 0a             	mov    WORD PTR [edx],cx
  601f90:	eb 43                	jmp    0x601fd5
  601f92:	83 bd 74 ff ff ff 00 	cmp    DWORD PTR [ebp-0x8c],0x0
  601f99:	75 3a                	jne    0x601fd5
  601f9b:	66 c7 85 56 ff ff ff 	mov    WORD PTR [ebp-0xaa],0x0
  601fa2:	00 00
  601fa4:	33 f6                	xor    esi,esi
  601fa6:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  601faa:	03 f6                	add    esi,esi
  601fac:	83 7c 24 24 08       	cmp    DWORD PTR [esp+0x24],0x8
  601fb1:	72 06                	jb     0x601fb9
  601fb3:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  601fb7:	eb 04                	jmp    0x601fbd
  601fb9:	8d 44 24 10          	lea    eax,[esp+0x10]
  601fbd:	03 f0                	add    esi,eax
  601fbf:	89 b5 50 ff ff ff    	mov    DWORD PTR [ebp-0xb0],esi
  601fc5:	8b 95 50 ff ff ff    	mov    edx,DWORD PTR [ebp-0xb0]
  601fcb:	66 8b 8d 56 ff ff ff 	mov    cx,WORD PTR [ebp-0xaa]
  601fd2:	66 89 0a             	mov    WORD PTR [edx],cx
  601fd5:	83 bd 74 ff ff ff 00 	cmp    DWORD PTR [ebp-0x8c],0x0
  601fdc:	0f 97 c0             	seta   al
  601fdf:	83 e0 01             	and    eax,0x1
  601fe2:	84 c0                	test   al,al
  601fe4:	0f 84 a1 00 00 00    	je     0x60208b
  601fea:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  601fed:	89 95 4c ff ff ff    	mov    DWORD PTR [ebp-0xb4],edx
  601ff3:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  601ff6:	83 79 24 08          	cmp    DWORD PTR [ecx+0x24],0x8
  601ffa:	72 08                	jb     0x602004
  601ffc:	8b 75 d0             	mov    esi,DWORD PTR [ebp-0x30]
  601fff:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  602002:	eb 06                	jmp    0x60200a
  602004:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  602007:	83 c0 10             	add    eax,0x10
  60200a:	89 85 48 ff ff ff    	mov    DWORD PTR [ebp-0xb8],eax
  602010:	83 7c 24 24 08       	cmp    DWORD PTR [esp+0x24],0x8
  602015:	72 06                	jb     0x60201d
  602017:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  60201b:	eb 04                	jmp    0x602021
  60201d:	8d 54 24 10          	lea    edx,[esp+0x10]
  602021:	89 95 44 ff ff ff    	mov    DWORD PTR [ebp-0xbc],edx
  602027:	8b 85 4c ff ff ff    	mov    eax,DWORD PTR [ebp-0xb4]
  60202d:	50                   	push   eax
  60202e:	8b 8d 48 ff ff ff    	mov    ecx,DWORD PTR [ebp-0xb8]
  602034:	51                   	push   ecx
  602035:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [ebp-0xbc]
  60203b:	50                   	push   eax
  60203c:	e8 63 cb 4b 00       	call   0xabeba4
  602041:	83 c4 0c             	add    esp,0xc
  602044:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  602047:	89 95 40 ff ff ff    	mov    DWORD PTR [ebp-0xc0],edx
  60204d:	66 c7 85 3e ff ff ff 	mov    WORD PTR [ebp-0xc2],0x0
  602054:	00 00
  602056:	8b 8d 40 ff ff ff    	mov    ecx,DWORD PTR [ebp-0xc0]
  60205c:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  602060:	03 c9                	add    ecx,ecx
  602062:	83 7c 24 24 08       	cmp    DWORD PTR [esp+0x24],0x8
  602067:	72 06                	jb     0x60206f
  602069:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  60206d:	eb 04                	jmp    0x602073
  60206f:	8d 44 24 10          	lea    eax,[esp+0x10]
  602073:	03 c8                	add    ecx,eax
  602075:	89 8d 38 ff ff ff    	mov    DWORD PTR [ebp-0xc8],ecx
  60207b:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [ebp-0xc8]
  602081:	66 8b 8d 3e ff ff ff 	mov    cx,WORD PTR [ebp-0xc2]
  602088:	66 89 0a             	mov    WORD PTR [edx],cx
  60208b:	ff 45 f8             	inc    DWORD PTR [ebp-0x8]
  60208e:	81 c7 a8 14 00 00    	add    edi,0x14a8
  602094:	57                   	push   edi
  602095:	66 c7 45 ec 0c 00    	mov    WORD PTR [ebp-0x14],0xc
  60209b:	83 45 f8 fd          	add    DWORD PTR [ebp-0x8],0xfffffffd
  60209f:	e8 44 4c 56 00       	call   0xb66ce8
  6020a4:	83 c4 7c             	add    esp,0x7c
  6020a7:	85 c0                	test   eax,eax
  6020a9:	0f 95 c0             	setne  al
  6020ac:	83 e0 01             	and    eax,0x1
  6020af:	3c 01                	cmp    al,0x1
  6020b1:	75 16                	jne    0x6020c9
  6020b3:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  6020b6:	83 3a 00             	cmp    DWORD PTR [edx],0x0
  6020b9:	75 0e                	jne    0x6020c9
  6020bb:	33 c0                	xor    eax,eax
  6020bd:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  6020c0:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  6020c7:	eb 0c                	jmp    0x6020d5
  6020c9:	33 c0                	xor    eax,eax
  6020cb:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  6020ce:	64 89 15 00 00 00 00 	mov    DWORD PTR fs:0x0,edx
  6020d5:	5f                   	pop    edi
  6020d6:	5e                   	pop    esi
  6020d7:	5b                   	pop    ebx
  6020d8:	8b e5                	mov    esp,ebp
  6020da:	5d                   	pop    ebp
  6020db:	c3                   	ret
  6020dc:	55                   	push   ebp
  6020dd:	8b ec                	mov    ebp,esp
  6020df:	51                   	push   ecx
  6020e0:	53                   	push   ebx
  6020e1:	56                   	push   esi
  6020e2:	57                   	push   edi
  6020e3:	8b f1                	mov    esi,ecx
  6020e5:	8b fa                	mov    edi,edx
  6020e7:	8b d8                	mov    ebx,eax
  6020e9:	85 ff                	test   edi,edi
  6020eb:	75 07                	jne    0x6020f4
  6020ed:	33 c0                	xor    eax,eax
  6020ef:	e9 bf 00 00 00       	jmp    0x6021b3
  6020f4:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  6020fa:	8b ce                	mov    ecx,esi
  6020fc:	80 c1 ff             	add    cl,0xff
  6020ff:	52                   	push   edx
  602100:	51                   	push   ecx
  602101:	8d 93 f8 08 00 00    	lea    edx,[ebx+0x8f8]
  602107:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  60210e:	51                   	push   ecx
  60210f:	66 8b 83 98 32 00 00 	mov    ax,WORD PTR [ebx+0x3298]
  602116:	50                   	push   eax
  602117:	52                   	push   edx
  602118:	e8 37 91 5e 00       	call   0xbeb254
  60211d:	83 c4 14             	add    esp,0x14
  602120:	85 c0                	test   eax,eax
  602122:	74 0a                	je     0x60212e
  602124:	b8 01 00 00 00       	mov    eax,0x1
  602129:	e9 85 00 00 00       	jmp    0x6021b3
  60212e:	8b d7                	mov    edx,edi
  602130:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  602133:	c1 e2 04             	shl    edx,0x4
  602136:	03 d7                	add    edx,edi
  602138:	8d 0c 91             	lea    ecx,[ecx+edx*4]
  60213b:	8b d7                	mov    edx,edi
  60213d:	c1 e2 04             	shl    edx,0x4
  602140:	03 d7                	add    edx,edi
  602142:	8b 04 b1             	mov    eax,DWORD PTR [ecx+esi*4]
  602145:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  602148:	25 00 00 ff 00       	and    eax,0xff0000
  60214d:	c1 e8 10             	shr    eax,0x10
  602150:	8d 14 91             	lea    edx,[ecx+edx*4]
  602153:	8b cf                	mov    ecx,edi
  602155:	c1 e1 04             	shl    ecx,0x4
  602158:	8b 14 b2             	mov    edx,DWORD PTR [edx+esi*4]
  60215b:	81 e2 00 ff 00 00    	and    edx,0xff00
  602161:	03 cf                	add    ecx,edi
  602163:	c1 ea 08             	shr    edx,0x8
  602166:	88 55 ff             	mov    BYTE PTR [ebp-0x1],dl
  602169:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  60216c:	8d 0c 8a             	lea    ecx,[edx+ecx*4]
  60216f:	8a 14 b1             	mov    dl,BYTE PTR [ecx+esi*4]
  602172:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  602178:	80 e2 ff             	and    dl,0xff
  60217b:	51                   	push   ecx
  60217c:	52                   	push   edx
  60217d:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
  602180:	52                   	push   edx
  602181:	50                   	push   eax
  602182:	8b c6                	mov    eax,esi
  602184:	04 ff                	add    al,0xff
  602186:	50                   	push   eax
  602187:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  60218e:	51                   	push   ecx
  60218f:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602196:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  60219c:	51                   	push   ecx
  60219d:	53                   	push   ebx
  60219e:	e8 1d 91 5e 00       	call   0xbeb2c0
  6021a3:	83 c4 20             	add    esp,0x20
  6021a6:	85 c0                	test   eax,eax
  6021a8:	74 07                	je     0x6021b1
  6021aa:	b8 02 00 00 00       	mov    eax,0x2
  6021af:	eb 02                	jmp    0x6021b3
  6021b1:	33 c0                	xor    eax,eax
  6021b3:	5f                   	pop    edi
  6021b4:	5e                   	pop    esi
  6021b5:	5b                   	pop    ebx
  6021b6:	59                   	pop    ecx
  6021b7:	5d                   	pop    ebp
  6021b8:	c2 04 00             	ret    0x4
  6021bb:	90                   	nop
  6021bc:	53                   	push   ebx
  6021bd:	8b d8                	mov    ebx,eax
  6021bf:	56                   	push   esi
  6021c0:	57                   	push   edi
  6021c1:	8b f2                	mov    esi,edx
  6021c3:	55                   	push   ebp
  6021c4:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  6021ca:	8b ee                	mov    ebp,esi
  6021cc:	50                   	push   eax
  6021cd:	8b c5                	mov    eax,ebp
  6021cf:	03 c0                	add    eax,eax
  6021d1:	8d bb f8 08 00 00    	lea    edi,[ebx+0x8f8]
  6021d7:	50                   	push   eax
  6021d8:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6021df:	52                   	push   edx
  6021e0:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6021e7:	51                   	push   ecx
  6021e8:	57                   	push   edi
  6021e9:	e8 fa 8f 5e 00       	call   0xbeb1e8
  6021ee:	83 c4 14             	add    esp,0x14
  6021f1:	85 c0                	test   eax,eax
  6021f3:	74 07                	je     0x6021fc
  6021f5:	05 e8 03 00 00       	add    eax,0x3e8
  6021fa:	eb 2e                	jmp    0x60222a
  6021fc:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  602202:	52                   	push   edx
  602203:	55                   	push   ebp
  602204:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  60220b:	51                   	push   ecx
  60220c:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602213:	51                   	push   ecx
  602214:	57                   	push   edi
  602215:	e8 62 8f 5e 00       	call   0xbeb17c
  60221a:	83 c4 14             	add    esp,0x14
  60221d:	85 c0                	test   eax,eax
  60221f:	74 07                	je     0x602228
  602221:	05 d0 07 00 00       	add    eax,0x7d0
  602226:	eb 02                	jmp    0x60222a
  602228:	33 c0                	xor    eax,eax
  60222a:	5d                   	pop    ebp
  60222b:	5f                   	pop    edi
  60222c:	5e                   	pop    esi
  60222d:	5b                   	pop    ebx
  60222e:	c3                   	ret
  60222f:	90                   	nop
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
  6022cd:	90                   	nop
  6022ce:	90                   	nop
  6022cf:	90                   	nop
  6022d0:	55                   	push   ebp
  6022d1:	8b ec                	mov    ebp,esp
  6022d3:	83 c4 cc             	add    esp,0xffffffcc
  6022d6:	53                   	push   ebx
  6022d7:	8b d8                	mov    ebx,eax
  6022d9:	56                   	push   esi
  6022da:	57                   	push   edi
  6022db:	8d 83 28 3f 00 00    	lea    eax,[ebx+0x3f28]
  6022e1:	8b fa                	mov    edi,edx
  6022e3:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  6022e6:	8b f1                	mov    esi,ecx
  6022e8:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  6022eb:	8b 8a f8 00 00 00    	mov    ecx,DWORD PTR [edx+0xf8]
  6022f1:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  6022f4:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  6022f7:	8b 81 fc 00 00 00    	mov    eax,DWORD PTR [ecx+0xfc]
  6022fd:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  602300:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  602303:	83 ba f0 00 00 00 00 	cmp    DWORD PTR [edx+0xf0],0x0
  60230a:	75 07                	jne    0x602313
  60230c:	33 c0                	xor    eax,eax
  60230e:	e9 35 03 00 00       	jmp    0x602648
  602313:	83 ff ff             	cmp    edi,0xffffffff
  602316:	0f 85 33 01 00 00    	jne    0x60244f
  60231c:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  602323:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  602326:	8d 4a 48             	lea    ecx,[edx+0x48]
  602329:	89 4d d0             	mov    DWORD PTR [ebp-0x30],ecx
  60232c:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  60232f:	8b c3                	mov    eax,ebx
  602331:	e8 06 1e ff ff       	call   0x5f413c
  602336:	88 45 eb             	mov    BYTE PTR [ebp-0x15],al
  602339:	8b c3                	mov    eax,ebx
  60233b:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  60233e:	e8 bd 1d ff ff       	call   0x5f4100
  602343:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  602346:	be 01 00 00 00       	mov    esi,0x1
  60234b:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  60234e:	8b d0                	mov    edx,eax
  602350:	89 55 d4             	mov    DWORD PTR [ebp-0x2c],edx
  602353:	3b 75 e4             	cmp    esi,DWORD PTR [ebp-0x1c]
  602356:	0f 8f b5 00 00 00    	jg     0x602411
  60235c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  60235f:	8b c3                	mov    eax,ebx
  602361:	8b 11                	mov    edx,DWORD PTR [ecx]
  602363:	e8 24 9e ff ff       	call   0x5fc18c
  602368:	8b f8                	mov    edi,eax
  60236a:	8b c7                	mov    eax,edi
  60236c:	8b d7                	mov    edx,edi
  60236e:	81 e2 00 00 ff 00    	and    edx,0xff0000
  602374:	25 00 ff 00 00       	and    eax,0xff00
  602379:	c1 ea 10             	shr    edx,0x10
  60237c:	8b cf                	mov    ecx,edi
  60237e:	c1 e8 08             	shr    eax,0x8
  602381:	80 e1 ff             	and    cl,0xff
  602384:	88 4d f3             	mov    BYTE PTR [ebp-0xd],cl
  602387:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  60238d:	51                   	push   ecx
  60238e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  602391:	51                   	push   ecx
  602392:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  602395:	51                   	push   ecx
  602396:	8a 4d f3             	mov    cl,BYTE PTR [ebp-0xd]
  602399:	51                   	push   ecx
  60239a:	50                   	push   eax
  60239b:	8b c6                	mov    eax,esi
  60239d:	52                   	push   edx
  60239e:	50                   	push   eax
  60239f:	8a 55 eb             	mov    dl,BYTE PTR [ebp-0x15]
  6023a2:	52                   	push   edx
  6023a3:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  6023a6:	8a 81 f4 00 00 00    	mov    al,BYTE PTR [ecx+0xf4]
  6023ac:	50                   	push   eax
  6023ad:	8d 83 f8 08 00 00    	lea    eax,[ebx+0x8f8]
  6023b3:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6023ba:	52                   	push   edx
  6023bb:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6023c2:	51                   	push   ecx
  6023c3:	50                   	push   eax
  6023c4:	e8 6f 8f 5e 00       	call   0xbeb338
  6023c9:	83 c4 30             	add    esp,0x30
  6023cc:	8b f8                	mov    edi,eax
  6023ce:	85 ff                	test   edi,edi
  6023d0:	74 31                	je     0x602403
  6023d2:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  6023d8:	50                   	push   eax
  6023d9:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6023e0:	52                   	push   edx
  6023e1:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6023e8:	51                   	push   ecx
  6023e9:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  6023ef:	53                   	push   ebx
  6023f0:	e8 eb 88 5e 00       	call   0xbeace0
  6023f5:	83 c4 10             	add    esp,0x10
  6023f8:	8d 87 e8 03 00 00    	lea    eax,[edi+0x3e8]
  6023fe:	e9 45 02 00 00       	jmp    0x602648
  602403:	46                   	inc    esi
  602404:	83 45 d4 04          	add    DWORD PTR [ebp-0x2c],0x4
  602408:	3b 75 e4             	cmp    esi,DWORD PTR [ebp-0x1c]
  60240b:	0f 8e 4b ff ff ff    	jle    0x60235c
  602411:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
  602414:	83 45 d0 44          	add    DWORD PTR [ebp-0x30],0x44
  602418:	83 7d ec 07          	cmp    DWORD PTR [ebp-0x14],0x7
  60241c:	0f 8c 0a ff ff ff    	jl     0x60232c
  602422:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  602428:	52                   	push   edx
  602429:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  602430:	51                   	push   ecx
  602431:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602438:	51                   	push   ecx
  602439:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  60243f:	53                   	push   ebx
  602440:	e8 9b 88 5e 00       	call   0xbeace0
  602445:	83 c4 10             	add    esp,0x10
  602448:	33 c0                	xor    eax,eax
  60244a:	e9 f9 01 00 00       	jmp    0x602648
  60244f:	83 fe ff             	cmp    esi,0xffffffff
  602452:	0f 85 19 01 00 00    	jne    0x602571
  602458:	8b d7                	mov    edx,edi
  60245a:	8b c3                	mov    eax,ebx
  60245c:	e8 db 1c ff ff       	call   0x5f413c
  602461:	88 45 e3             	mov    BYTE PTR [ebp-0x1d],al
  602464:	8b d7                	mov    edx,edi
  602466:	8b c3                	mov    eax,ebx
  602468:	e8 93 1c ff ff       	call   0x5f4100
  60246d:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  602470:	be 01 00 00 00       	mov    esi,0x1
  602475:	8b c7                	mov    eax,edi
  602477:	c1 e0 04             	shl    eax,0x4
  60247a:	03 c7                	add    eax,edi
  60247c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  60247f:	8d 4c 82 04          	lea    ecx,[edx+eax*4+0x4]
  602483:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  602486:	3b 75 dc             	cmp    esi,DWORD PTR [ebp-0x24]
  602489:	0f 8f b5 00 00 00    	jg     0x602544
  60248f:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  602492:	8b c3                	mov    eax,ebx
  602494:	8b 11                	mov    edx,DWORD PTR [ecx]
  602496:	e8 f1 9c ff ff       	call   0x5fc18c
  60249b:	8b f8                	mov    edi,eax
  60249d:	8b c7                	mov    eax,edi
  60249f:	8b d7                	mov    edx,edi
  6024a1:	81 e2 00 00 ff 00    	and    edx,0xff0000
  6024a7:	25 00 ff 00 00       	and    eax,0xff00
  6024ac:	c1 ea 10             	shr    edx,0x10
  6024af:	8b cf                	mov    ecx,edi
  6024b1:	c1 e8 08             	shr    eax,0x8
  6024b4:	80 e1 ff             	and    cl,0xff
  6024b7:	88 4d f3             	mov    BYTE PTR [ebp-0xd],cl
  6024ba:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  6024c0:	51                   	push   ecx
  6024c1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  6024c4:	51                   	push   ecx
  6024c5:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  6024c8:	51                   	push   ecx
  6024c9:	8a 4d f3             	mov    cl,BYTE PTR [ebp-0xd]
  6024cc:	51                   	push   ecx
  6024cd:	50                   	push   eax
  6024ce:	8b c6                	mov    eax,esi
  6024d0:	52                   	push   edx
  6024d1:	50                   	push   eax
  6024d2:	8a 55 e3             	mov    dl,BYTE PTR [ebp-0x1d]
  6024d5:	52                   	push   edx
  6024d6:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  6024d9:	8a 81 f4 00 00 00    	mov    al,BYTE PTR [ecx+0xf4]
  6024df:	50                   	push   eax
  6024e0:	8d 83 f8 08 00 00    	lea    eax,[ebx+0x8f8]
  6024e6:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6024ed:	52                   	push   edx
  6024ee:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6024f5:	51                   	push   ecx
  6024f6:	50                   	push   eax
  6024f7:	e8 3c 8e 5e 00       	call   0xbeb338
  6024fc:	83 c4 30             	add    esp,0x30
  6024ff:	8b f8                	mov    edi,eax
  602501:	85 ff                	test   edi,edi
  602503:	74 31                	je     0x602536
  602505:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  60250b:	50                   	push   eax
  60250c:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  602513:	52                   	push   edx
  602514:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  60251b:	51                   	push   ecx
  60251c:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  602522:	53                   	push   ebx
  602523:	e8 b8 87 5e 00       	call   0xbeace0
  602528:	83 c4 10             	add    esp,0x10
  60252b:	8d 87 d0 07 00 00    	lea    eax,[edi+0x7d0]
  602531:	e9 12 01 00 00       	jmp    0x602648
  602536:	46                   	inc    esi
  602537:	83 45 cc 04          	add    DWORD PTR [ebp-0x34],0x4
  60253b:	3b 75 dc             	cmp    esi,DWORD PTR [ebp-0x24]
  60253e:	0f 8e 4b ff ff ff    	jle    0x60248f
  602544:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  60254a:	52                   	push   edx
  60254b:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  602552:	51                   	push   ecx
  602553:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  60255a:	51                   	push   ecx
  60255b:	81 c3 f8 08 00 00    	add    ebx,0x8f8
  602561:	53                   	push   ebx
  602562:	e8 79 87 5e 00       	call   0xbeace0
  602567:	83 c4 10             	add    esp,0x10
  60256a:	33 c0                	xor    eax,eax
  60256c:	e9 d7 00 00 00       	jmp    0x602648
  602571:	8b d7                	mov    edx,edi
  602573:	8b c3                	mov    eax,ebx
  602575:	e8 c2 1b ff ff       	call   0x5f413c
  60257a:	8b d7                	mov    edx,edi
  60257c:	88 45 db             	mov    BYTE PTR [ebp-0x25],al
  60257f:	c1 e2 04             	shl    edx,0x4
  602582:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  602585:	03 d7                	add    edx,edi
  602587:	8b c3                	mov    eax,ebx
  602589:	8d 0c 91             	lea    ecx,[ecx+edx*4]
  60258c:	8b 14 b1             	mov    edx,DWORD PTR [ecx+esi*4]
  60258f:	e8 f8 9b ff ff       	call   0x5fc18c
  602594:	8b f8                	mov    edi,eax
  602596:	8b c7                	mov    eax,edi
  602598:	8b d7                	mov    edx,edi
  60259a:	81 e2 00 00 ff 00    	and    edx,0xff0000
  6025a0:	25 00 ff 00 00       	and    eax,0xff00
  6025a5:	c1 ea 10             	shr    edx,0x10
  6025a8:	8b cf                	mov    ecx,edi
  6025aa:	c1 e8 08             	shr    eax,0x8
  6025ad:	80 e1 ff             	and    cl,0xff
  6025b0:	88 4d f3             	mov    BYTE PTR [ebp-0xd],cl
  6025b3:	8d 8b 9e 32 00 00    	lea    ecx,[ebx+0x329e]
  6025b9:	51                   	push   ecx
  6025ba:	8d bb f8 08 00 00    	lea    edi,[ebx+0x8f8]
  6025c0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  6025c3:	51                   	push   ecx
  6025c4:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  6025c7:	51                   	push   ecx
  6025c8:	8a 4d f3             	mov    cl,BYTE PTR [ebp-0xd]
  6025cb:	51                   	push   ecx
  6025cc:	50                   	push   eax
  6025cd:	8b c6                	mov    eax,esi
  6025cf:	52                   	push   edx
  6025d0:	50                   	push   eax
  6025d1:	8a 55 db             	mov    dl,BYTE PTR [ebp-0x25]
  6025d4:	52                   	push   edx
  6025d5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  6025d8:	8a 81 f4 00 00 00    	mov    al,BYTE PTR [ecx+0xf4]
  6025de:	50                   	push   eax
  6025df:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  6025e6:	52                   	push   edx
  6025e7:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  6025ee:	51                   	push   ecx
  6025ef:	57                   	push   edi
  6025f0:	e8 43 8d 5e 00       	call   0xbeb338
  6025f5:	83 c4 30             	add    esp,0x30
  6025f8:	8b f0                	mov    esi,eax
  6025fa:	85 f6                	test   esi,esi
  6025fc:	74 28                	je     0x602626
  6025fe:	8d 83 9e 32 00 00    	lea    eax,[ebx+0x329e]
  602604:	50                   	push   eax
  602605:	66 8b 93 9a 32 00 00 	mov    dx,WORD PTR [ebx+0x329a]
  60260c:	52                   	push   edx
  60260d:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  602614:	51                   	push   ecx
  602615:	57                   	push   edi
  602616:	e8 c5 86 5e 00       	call   0xbeace0
  60261b:	83 c4 10             	add    esp,0x10
  60261e:	8d 86 b8 0b 00 00    	lea    eax,[esi+0xbb8]
  602624:	eb 22                	jmp    0x602648
  602626:	8d 93 9e 32 00 00    	lea    edx,[ebx+0x329e]
  60262c:	52                   	push   edx
  60262d:	66 8b 8b 9a 32 00 00 	mov    cx,WORD PTR [ebx+0x329a]
  602634:	51                   	push   ecx
  602635:	66 8b 8b 98 32 00 00 	mov    cx,WORD PTR [ebx+0x3298]
  60263c:	51                   	push   ecx
  60263d:	57                   	push   edi
  60263e:	e8 9d 86 5e 00       	call   0xbeace0
  602643:	83 c4 10             	add    esp,0x10
  602646:	33 c0                	xor    eax,eax
  602648:	5f                   	pop    edi
  602649:	5e                   	pop    esi
  60264a:	5b                   	pop    ebx
  60264b:	8b e5                	mov    esp,ebp
  60264d:	5d                   	pop    ebp
  60264e:	c2 04 00             	ret    0x4
  602651:	90                   	nop
  602652:	90                   	nop
  602653:	90                   	nop
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
  6026fa:	66                   	data16
  6026fb:	8b                   	.byte 0x8b
  6026fc:	8b                   	.byte 0x8b
  6026fd:	98                   	cwde
  6026fe:	32 00                	xor    al,BYTE PTR [eax]
