lbl_8053E3B0:
/* 8053E3B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053E3B4  7C 08 02 A6 */	mflr r0
/* 8053E3B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053E3BC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8053E3C0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8053E3C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E3C8  A8 03 09 82 */	lha r0, 0x982(r3)
/* 8053E3CC  7C 04 00 00 */	cmpw r4, r0
/* 8053E3D0  40 82 00 58 */	bne lbl_8053E428
/* 8053E3D4  83 E3 09 84 */	lwz r31, 0x984(r3)
/* 8053E3D8  28 1F 00 00 */	cmplwi r31, 0
/* 8053E3DC  41 82 00 4C */	beq lbl_8053E428
/* 8053E3E0  3C 80 80 65 */	lis r4, lit_1606@ha /* 0x806493C0@ha */
/* 8053E3E4  3C A0 80 65 */	lis r5, lit_796@ha /* 0x8064937C@ha */
/* 8053E3E8  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8053E3EC  C0 24 93 C0 */	lfs f1, lit_1606@l(r4)  /* 0x806493C0@l */
/* 8053E3F0  C0 45 93 7C */	lfs f2, lit_796@l(r5)  /* 0x8064937C@l */
/* 8053E3F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8053E3F8  EF E2 00 24 */	fdivs f31, f2, f0
/* 8053E3FC  4B EC DD D9 */	bl Matrix_push
/* 8053E400  FC 20 F8 90 */	fmr f1, f31
/* 8053E404  38 60 00 01 */	li r3, 1
/* 8053E408  FC 40 F8 90 */	fmr f2, f31
/* 8053E40C  FC 60 F8 90 */	fmr f3, f31
/* 8053E410  4B EC DF DD */	bl Matrix_scale
/* 8053E414  38 7F 01 78 */	addi r3, r31, 0x178
/* 8053E418  4B EC DE 15 */	bl Matrix_get
/* 8053E41C  38 00 00 01 */	li r0, 1
/* 8053E420  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 8053E424  4B EC DD F1 */	bl Matrix_pull
lbl_8053E428:
/* 8053E428  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8053E42C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053E430  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8053E434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E438  7C 08 03 A6 */	mtlr r0
/* 8053E43C  38 21 00 20 */	addi r1, r1, 0x20
/* 8053E440  4E 80 00 20 */	blr 
