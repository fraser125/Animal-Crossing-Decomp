lbl_803C5A14:
/* 803C5A14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803C5A18  7C 08 02 A6 */	mflr r0
/* 803C5A1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803C5A20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803C5A24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803C5A28  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803C5A2C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803C5A30  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 803C5A34  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 803C5A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C5A3C  93 C1 00 08 */	stw r30, 8(r1)
/* 803C5A40  3C E0 80 64 */	lis r7, lit_943@ha /* 0x80642620@ha */
/* 803C5A44  3C C0 80 64 */	lis r6, lit_2458@ha /* 0x80642834@ha */
/* 803C5A48  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 803C5A4C  3D 00 80 64 */	lis r8, lit_2457@ha /* 0x80642830@ha */
/* 803C5A50  C0 47 26 20 */	lfs f2, lit_943@l(r7)  /* 0x80642620@l */
/* 803C5A54  7C BF 2B 78 */	mr r31, r5
/* 803C5A58  C0 26 28 34 */	lfs f1, lit_2458@l(r6)  /* 0x80642834@l */
/* 803C5A5C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 803C5A60  EC 43 10 28 */	fsubs f2, f3, f2
/* 803C5A64  C0 68 28 30 */	lfs f3, lit_2457@l(r8)  /* 0x80642830@l */
/* 803C5A68  EC 01 00 28 */	fsubs f0, f1, f0
/* 803C5A6C  83 C4 00 00 */	lwz r30, 0(r4)
/* 803C5A70  EF C3 00 B2 */	fmuls f30, f3, f2
/* 803C5A74  C3 E3 04 24 */	lfs f31, 0x424(r3)
/* 803C5A78  EF A3 00 32 */	fmuls f29, f3, f0
/* 803C5A7C  48 04 67 59 */	bl Matrix_push
/* 803C5A80  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C5A84  FC 20 F0 90 */	fmr f1, f30
/* 803C5A88  C0 63 26 18 */	lfs f3, lit_725@l(r3)  /* 0x80642618@l */
/* 803C5A8C  FC 40 E8 90 */	fmr f2, f29
/* 803C5A90  38 60 00 01 */	li r3, 1
/* 803C5A94  48 04 68 6D */	bl Matrix_translate
/* 803C5A98  FC 20 F8 90 */	fmr f1, f31
/* 803C5A9C  38 60 00 01 */	li r3, 1
/* 803C5AA0  FC 40 F8 90 */	fmr f2, f31
/* 803C5AA4  FC 60 F8 90 */	fmr f3, f31
/* 803C5AA8  48 04 69 45 */	bl Matrix_scale
/* 803C5AAC  2C 1F 00 01 */	cmpwi r31, 1
/* 803C5AB0  40 82 00 2C */	bne lbl_803C5ADC
/* 803C5AB4  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 803C5AB8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803C5ABC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803C5AC0  7F C3 F3 78 */	mr r3, r30
/* 803C5AC4  38 9F 00 08 */	addi r4, r31, 8
/* 803C5AC8  90 9E 02 F0 */	stw r4, 0x2f0(r30)
/* 803C5ACC  90 1F 00 00 */	stw r0, 0(r31)
/* 803C5AD0  48 04 79 05 */	bl _Matrix_to_Mtx_new
/* 803C5AD4  90 7F 00 04 */	stw r3, 4(r31)
/* 803C5AD8  48 00 00 28 */	b lbl_803C5B00
lbl_803C5ADC:
/* 803C5ADC  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 803C5AE0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803C5AE4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803C5AE8  7F C3 F3 78 */	mr r3, r30
/* 803C5AEC  38 9F 00 08 */	addi r4, r31, 8
/* 803C5AF0  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 803C5AF4  90 1F 00 00 */	stw r0, 0(r31)
/* 803C5AF8  48 04 78 DD */	bl _Matrix_to_Mtx_new
/* 803C5AFC  90 7F 00 04 */	stw r3, 4(r31)
lbl_803C5B00:
/* 803C5B00  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803C5B04  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803C5B08  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803C5B0C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803C5B10  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 803C5B14  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 803C5B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C5B1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803C5B20  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C5B24  7C 08 03 A6 */	mtlr r0
/* 803C5B28  38 21 00 40 */	addi r1, r1, 0x40
/* 803C5B2C  4E 80 00 20 */	blr 
