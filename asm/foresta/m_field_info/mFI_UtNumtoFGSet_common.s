lbl_803A764C:
/* 803A764C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A7650  7C 08 02 A6 */	mflr r0
/* 803A7654  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A7658  39 61 00 30 */	addi r11, r1, 0x30
/* 803A765C  4B CF 38 71 */	bl func_8009AECC
/* 803A7660  7C 7F 1B 78 */	mr r31, r3
/* 803A7664  7C 9B 23 78 */	mr r27, r4
/* 803A7668  7C BC 2B 78 */	mr r28, r5
/* 803A766C  7C DD 33 78 */	mr r29, r6
/* 803A7670  4B FF D7 69 */	bl mFI_GetBlockZMax
/* 803A7674  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 803A7678  4B FF D7 19 */	bl mFI_GetBlockXMax
/* 803A767C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A7680  7F 63 DB 78 */	mr r3, r27
/* 803A7684  7F 84 E3 78 */	mr r4, r28
/* 803A7688  7F C6 F3 78 */	mr r6, r30
/* 803A768C  4B FF DC 19 */	bl mFI_UtNumCheck
/* 803A7690  2C 03 00 00 */	cmpwi r3, 0
/* 803A7694  40 82 00 0C */	bne lbl_803A76A0
/* 803A7698  38 60 00 00 */	li r3, 0
/* 803A769C  48 00 00 AC */	b lbl_803A7748
lbl_803A76A0:
/* 803A76A0  7F 65 DB 78 */	mr r5, r27
/* 803A76A4  7F 86 E3 78 */	mr r6, r28
/* 803A76A8  38 61 00 14 */	addi r3, r1, 0x14
/* 803A76AC  38 81 00 10 */	addi r4, r1, 0x10
/* 803A76B0  4B FF E1 C1 */	bl mFI_UtNum2BlockNum
/* 803A76B4  2C 03 00 00 */	cmpwi r3, 0
/* 803A76B8  40 82 00 0C */	bne lbl_803A76C4
/* 803A76BC  38 60 00 00 */	li r3, 0
/* 803A76C0  48 00 00 88 */	b lbl_803A7748
lbl_803A76C4:
/* 803A76C4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803A76C8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A76CC  4B FF DA ED */	bl mFI_GetBlockNum
/* 803A76D0  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A76D4  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A76D8  80 84 00 00 */	lwz r4, 0(r4)
/* 803A76DC  1F C3 06 14 */	mulli r30, r3, 0x614
/* 803A76E0  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803A76E4  7C 60 F2 14 */	add r3, r0, r30
/* 803A76E8  A0 03 05 80 */	lhz r0, 0x580(r3)
/* 803A76EC  28 00 00 CB */	cmplwi r0, 0xcb
/* 803A76F0  40 82 00 0C */	bne lbl_803A76FC
/* 803A76F4  38 60 00 00 */	li r3, 0
/* 803A76F8  48 00 00 50 */	b lbl_803A7748
lbl_803A76FC:
/* 803A76FC  7F 65 DB 78 */	mr r5, r27
/* 803A7700  7F 86 E3 78 */	mr r6, r28
/* 803A7704  38 61 00 0C */	addi r3, r1, 0xc
/* 803A7708  38 81 00 08 */	addi r4, r1, 8
/* 803A770C  4B FF E1 BD */	bl mFI_GetUtNumInBK
/* 803A7710  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A7714  80 81 00 08 */	lwz r4, 8(r1)
/* 803A7718  4B FF DA E5 */	bl mFI_GetUtNum
/* 803A771C  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7720  54 60 08 3C */	slwi r0, r3, 1
/* 803A7724  80 64 7A 58 */	lwz r3, g_fdinfo@l(r4)  /* 0x81167A58@l */
/* 803A7728  2C 1D 00 00 */	cmpwi r29, 0
/* 803A772C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 803A7730  7C 63 F2 14 */	add r3, r3, r30
/* 803A7734  80 63 05 84 */	lwz r3, 0x584(r3)
/* 803A7738  7F E3 03 2E */	sthx r31, r3, r0
/* 803A773C  41 82 00 08 */	beq lbl_803A7744
/* 803A7740  48 00 06 F5 */	bl mFI_SetFGUpData
lbl_803A7744:
/* 803A7744  38 60 00 01 */	li r3, 1
lbl_803A7748:
/* 803A7748  39 61 00 30 */	addi r11, r1, 0x30
/* 803A774C  4B CF 37 CD */	bl func_8009AF18
/* 803A7750  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7754  7C 08 03 A6 */	mtlr r0
/* 803A7758  38 21 00 30 */	addi r1, r1, 0x30
/* 803A775C  4E 80 00 20 */	blr 
