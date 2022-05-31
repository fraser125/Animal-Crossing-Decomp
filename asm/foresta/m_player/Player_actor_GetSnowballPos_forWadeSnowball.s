lbl_804DD3B0:
/* 804DD3B0  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DD3B4  2C 00 00 68 */	cmpwi r0, 0x68
/* 804DD3B8  40 82 00 34 */	bne lbl_804DD3EC
/* 804DD3BC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 804DD3C0  C0 03 0D 38 */	lfs f0, 0xd38(r3)
/* 804DD3C4  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD3C8  D0 04 00 00 */	stfs f0, 0(r4)
/* 804DD3CC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 804DD3D0  C0 03 0D 3C */	lfs f0, 0xd3c(r3)
/* 804DD3D4  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD3D8  D0 04 00 04 */	stfs f0, 4(r4)
/* 804DD3DC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 804DD3E0  C0 03 0D 40 */	lfs f0, 0xd40(r3)
/* 804DD3E4  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD3E8  D0 04 00 08 */	stfs f0, 8(r4)
lbl_804DD3EC:
/* 804DD3EC  38 60 00 00 */	li r3, 0
/* 804DD3F0  4E 80 00 20 */	blr 
