lbl_8047FE24:
/* 8047FE24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047FE28  7C 08 02 A6 */	mflr r0
/* 8047FE2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047FE30  39 61 00 30 */	addi r11, r1, 0x30
/* 8047FE34  4B C1 B0 A1 */	bl func_8009AED4
/* 8047FE38  3C E0 80 64 */	lis r7, lit_967@ha /* 0x80644A04@ha */
/* 8047FE3C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8047FE40  C0 07 4A 04 */	lfs f0, lit_967@l(r7)  /* 0x80644A04@l */
/* 8047FE44  7C 7D 1B 78 */	mr r29, r3
/* 8047FE48  81 04 00 08 */	lwz r8, 8(r4)
/* 8047FE4C  7C BE 2B 78 */	mr r30, r5
/* 8047FE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047FE54  7C DF 33 78 */	mr r31, r6
/* 8047FE58  4C 41 13 82 */	cror 2, 1, 2
/* 8047FE5C  40 82 00 0C */	bne lbl_8047FE68
/* 8047FE60  38 00 00 00 */	li r0, 0
/* 8047FE64  48 00 00 08 */	b lbl_8047FE6C
lbl_8047FE68:
/* 8047FE68  38 00 00 01 */	li r0, 1
lbl_8047FE6C:
/* 8047FE6C  88 DD 00 3E */	lbz r6, 0x3e(r29)
/* 8047FE70  3C 60 80 69 */	lis r3, type_target_table@ha /* 0x80688EC8@ha */
/* 8047FE74  38 83 8E C8 */	addi r4, r3, type_target_table@l /* 0x80688EC8@l */
/* 8047FE78  55 03 28 34 */	slwi r3, r8, 5
/* 8047FE7C  54 C5 3C 70 */	rlwinm r5, r6, 7, 0x11, 0x18
/* 8047FE80  54 00 20 36 */	slwi r0, r0, 4
/* 8047FE84  7C 84 2A 14 */	add r4, r4, r5
/* 8047FE88  7C 64 1A 14 */	add r3, r4, r3
/* 8047FE8C  7C 63 02 14 */	add r3, r3, r0
/* 8047FE90  80 03 00 00 */	lwz r0, 0(r3)
/* 8047FE94  80 A3 00 04 */	lwz r5, 4(r3)
/* 8047FE98  90 01 00 08 */	stw r0, 8(r1)
/* 8047FE9C  80 83 00 08 */	lwz r4, 8(r3)
/* 8047FEA0  88 01 00 08 */	lbz r0, 8(r1)
/* 8047FEA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8047FEA8  7C 00 30 40 */	cmplw r0, r6
/* 8047FEAC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8047FEB0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8047FEB4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8047FEB8  41 82 00 40 */	beq lbl_8047FEF8
/* 8047FEBC  98 1D 00 3E */	stb r0, 0x3e(r29)
/* 8047FEC0  7F A3 EB 78 */	mr r3, r29
/* 8047FEC4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8047FEC8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8047FECC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8047FED0  EC 42 00 2A */	fadds f2, f2, f0
/* 8047FED4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8047FED8  D0 5D 00 08 */	stfs f2, 8(r29)
/* 8047FEDC  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8047FEE0  EC 22 08 2A */	fadds f1, f2, f1
/* 8047FEE4  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 8047FEE8  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8047FEEC  EC 01 00 2A */	fadds f0, f1, f0
/* 8047FEF0  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8047FEF4  4B FF 84 39 */	bl aMR_MoveShapeCenter
lbl_8047FEF8:
/* 8047FEF8  7F A3 EB 78 */	mr r3, r29
/* 8047FEFC  7F C4 F3 78 */	mr r4, r30
/* 8047FF00  7F E5 FB 78 */	mr r5, r31
/* 8047FF04  4B FF FE 39 */	bl aMR_RotatePermission
/* 8047FF08  39 61 00 30 */	addi r11, r1, 0x30
/* 8047FF0C  4B C1 B0 15 */	bl func_8009AF20
/* 8047FF10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047FF14  7C 08 03 A6 */	mtlr r0
/* 8047FF18  38 21 00 30 */	addi r1, r1, 0x30
/* 8047FF1C  4E 80 00 20 */	blr 
