
fujin-vendor/main_app_106.exe:     file format pei-i386


Disassembly of section .text:

00bf0d80 <.text+0x7efd80>:
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
