lbl_8038EF30:
/* 8038EF30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8038EF34  7C 08 02 A6 */	mflr r0
/* 8038EF38  90 01 00 64 */	stw r0, 0x64(r1)
/* 8038EF3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8038EF40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8038EF44  39 61 00 50 */	addi r11, r1, 0x50
/* 8038EF48  4B D0 BF 75 */	bl func_8009AEBC
/* 8038EF4C  3D 20 80 65 */	lis r9, reverse0_2113@ha /* 0x80650CA8@ha */
/* 8038EF50  7C FE 3B 79 */	or. r30, r7, r7
/* 8038EF54  38 E9 0C A8 */	addi r7, r9, reverse0_2113@l /* 0x80650CA8@l */
/* 8038EF58  7C 7A 1B 78 */	mr r26, r3
/* 8038EF5C  80 67 00 00 */	lwz r3, 0(r7)
/* 8038EF60  7C 9B 23 78 */	mr r27, r4
/* 8038EF64  80 07 00 04 */	lwz r0, 4(r7)
/* 8038EF68  7C BC 2B 78 */	mr r28, r5
/* 8038EF6C  7C DD 33 78 */	mr r29, r6
/* 8038EF70  7D 1F 43 78 */	mr r31, r8
/* 8038EF74  90 7A 00 00 */	stw r3, 0(r26)
/* 8038EF78  90 1A 00 04 */	stw r0, 4(r26)
/* 8038EF7C  80 07 00 08 */	lwz r0, 8(r7)
/* 8038EF80  90 1A 00 08 */	stw r0, 8(r26)
/* 8038EF84  41 82 00 CC */	beq lbl_8038F050
/* 8038EF88  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038EF8C  3C A0 80 64 */	lis r5, lit_2120@ha /* 0x80641A80@ha */
/* 8038EF90  3C 80 80 65 */	lis r4, column_wall_check_func@ha /* 0x80650CA0@ha */
/* 8038EF94  C3 E3 19 A4 */	lfs f31, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038EF98  3B 05 1A 80 */	addi r24, r5, lit_2120@l /* 0x80641A80@l */
/* 8038EF9C  3A E0 00 00 */	li r23, 0
/* 8038EFA0  3B 24 0C A0 */	addi r25, r4, column_wall_check_func@l /* 0x80650CA0@l */
/* 8038EFA4  48 00 00 A4 */	b lbl_8038F048
lbl_8038EFA8:
/* 8038EFA8  80 78 00 00 */	lwz r3, 0(r24)
/* 8038EFAC  7F 64 DB 78 */	mr r4, r27
/* 8038EFB0  80 D8 00 04 */	lwz r6, 4(r24)
/* 8038EFB4  7F A7 EB 78 */	mr r7, r29
/* 8038EFB8  80 18 00 08 */	lwz r0, 8(r24)
/* 8038EFBC  7F E8 FB 78 */	mr r8, r31
/* 8038EFC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8038EFC4  38 61 00 14 */	addi r3, r1, 0x14
/* 8038EFC8  C0 7C 00 00 */	lfs f3, 0(r28)
/* 8038EFCC  38 A1 00 08 */	addi r5, r1, 8
/* 8038EFD0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8038EFD4  38 DB 00 28 */	addi r6, r27, 0x28
/* 8038EFD8  C0 5C 00 04 */	lfs f2, 4(r28)
/* 8038EFDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8038EFE0  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8038EFE4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8038EFE8  EC 03 00 2A */	fadds f0, f3, f0
/* 8038EFEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038EFF0  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8038EFF4  EC 02 00 2A */	fadds f0, f2, f0
/* 8038EFF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038EFFC  C0 1A 00 08 */	lfs f0, 8(r26)
/* 8038F000  EC 01 00 2A */	fadds f0, f1, f0
/* 8038F004  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038F008  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 8038F00C  54 00 10 3A */	slwi r0, r0, 2
/* 8038F010  7D 99 00 2E */	lwzx r12, r25, r0
/* 8038F014  7D 89 03 A6 */	mtctr r12
/* 8038F018  4E 80 04 21 */	bctrl 
/* 8038F01C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8038F020  3B BD 00 20 */	addi r29, r29, 0x20
/* 8038F024  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038F028  3A F7 00 01 */	addi r23, r23, 1
/* 8038F02C  EC 01 00 2A */	fadds f0, f1, f0
/* 8038F030  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8038F034  C0 3A 00 08 */	lfs f1, 8(r26)
/* 8038F038  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8038F03C  EC 01 00 2A */	fadds f0, f1, f0
/* 8038F040  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8038F044  D3 FA 00 04 */	stfs f31, 4(r26)
lbl_8038F048:
/* 8038F048  7C 17 F0 00 */	cmpw r23, r30
/* 8038F04C  41 80 FF 5C */	blt lbl_8038EFA8
lbl_8038F050:
/* 8038F050  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8038F054  39 61 00 50 */	addi r11, r1, 0x50
/* 8038F058  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8038F05C  4B D0 BE AD */	bl func_8009AF08
/* 8038F060  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8038F064  7C 08 03 A6 */	mtlr r0
/* 8038F068  38 21 00 60 */	addi r1, r1, 0x60
/* 8038F06C  4E 80 00 20 */	blr 
