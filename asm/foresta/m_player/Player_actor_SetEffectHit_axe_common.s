lbl_804EFCA8:
/* 804EFCA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EFCAC  7C 08 02 A6 */	mflr r0
/* 804EFCB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EFCB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804EFCB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804EFCBC  39 61 00 30 */	addi r11, r1, 0x30
/* 804EFCC0  4B BA B2 11 */	bl func_8009AED0
/* 804EFCC4  3C C0 80 64 */	lis r6, lit_3046@ha /* 0x80646E54@ha */
/* 804EFCC8  7C 7F 1B 78 */	mr r31, r3
/* 804EFCCC  C0 26 6E 54 */	lfs f1, lit_3046@l(r6)  /* 0x80646E54@l */
/* 804EFCD0  7C 9C 23 78 */	mr r28, r4
/* 804EFCD4  7C BD 2B 78 */	mr r29, r5
/* 804EFCD8  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EFCDC  4B FE 79 25 */	bl Player_actor_Check_AnimationFrame
/* 804EFCE0  2C 03 00 00 */	cmpwi r3, 0
/* 804EFCE4  41 82 00 E4 */	beq lbl_804EFDC8
/* 804EFCE8  AB DF 00 36 */	lha r30, 0x36(r31)
/* 804EFCEC  7F C3 F3 78 */	mr r3, r30
/* 804EFCF0  4B EC AE 01 */	bl sin_s
/* 804EFCF4  FF E0 08 90 */	fmr f31, f1
/* 804EFCF8  7F C3 F3 78 */	mr r3, r30
/* 804EFCFC  4B EC AD A1 */	bl cos_s
/* 804EFD00  3C 60 80 6A */	lis r3, offset_10176@ha /* 0x8069E774@ha */
/* 804EFD04  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804EFD08  38 83 E7 74 */	addi r4, r3, offset_10176@l /* 0x8069E774@l */
/* 804EFD0C  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 804EFD10  C0 44 00 08 */	lfs f2, 8(r4)
/* 804EFD14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EFD18  C0 04 00 00 */	lfs f0, 0(r4)
/* 804EFD1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EFD20  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804EFD24  EC 82 00 72 */	fmuls f4, f2, f1
/* 804EFD28  EC 60 07 F2 */	fmuls f3, f0, f31
/* 804EFD2C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804EFD30  EC 42 07 F2 */	fmuls f2, f2, f31
/* 804EFD34  3C 63 00 02 */	addis r3, r3, 2
/* 804EFD38  EC 00 00 72 */	fmuls f0, f0, f1
/* 804EFD3C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804EFD40  EC 64 18 28 */	fsubs f3, f4, f3
/* 804EFD44  C0 24 00 04 */	lfs f1, 4(r4)
/* 804EFD48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804EFD4C  EC 02 00 2A */	fadds f0, f2, f0
/* 804EFD50  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 804EFD54  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804EFD58  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804EFD5C  EC 84 08 2A */	fadds f4, f4, f1
/* 804EFD60  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804EFD64  7F 87 E3 78 */	mr r7, r28
/* 804EFD68  EC 42 18 2A */	fadds f2, f2, f3
/* 804EFD6C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804EFD70  EC 01 00 2A */	fadds f0, f1, f0
/* 804EFD74  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 804EFD78  7F AA EB 78 */	mr r10, r29
/* 804EFD7C  38 81 00 08 */	addi r4, r1, 8
/* 804EFD80  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804EFD84  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804EFD88  81 21 00 18 */	lwz r9, 0x18(r1)
/* 804EFD8C  38 60 00 3E */	li r3, 0x3e
/* 804EFD90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804EFD94  38 A0 00 02 */	li r5, 2
/* 804EFD98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804EFD9C  81 61 00 14 */	lwz r11, 0x14(r1)
/* 804EFDA0  91 21 00 0C */	stw r9, 0xc(r1)
/* 804EFDA4  91 61 00 08 */	stw r11, 8(r1)
/* 804EFDA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804EFDAC  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804EFDB0  81 86 00 00 */	lwz r12, 0(r6)
/* 804EFDB4  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804EFDB8  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 804EFDBC  7C 09 07 34 */	extsh r9, r0
/* 804EFDC0  7D 89 03 A6 */	mtctr r12
/* 804EFDC4  4E 80 04 21 */	bctrl 
lbl_804EFDC8:
/* 804EFDC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804EFDCC  39 61 00 30 */	addi r11, r1, 0x30
/* 804EFDD0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804EFDD4  4B BA B1 49 */	bl func_8009AF1C
/* 804EFDD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EFDDC  7C 08 03 A6 */	mtlr r0
/* 804EFDE0  38 21 00 40 */	addi r1, r1, 0x40
/* 804EFDE4  4E 80 00 20 */	blr 
