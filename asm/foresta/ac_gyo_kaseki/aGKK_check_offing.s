lbl_805A595C:
/* 805A595C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A5960  7C 08 02 A6 */	mflr r0
/* 805A5964  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A5968  39 61 00 40 */	addi r11, r1, 0x40
/* 805A596C  4B AF 55 5D */	bl func_8009AEC8
/* 805A5970  7C 7A 1B 78 */	mr r26, r3
/* 805A5974  3B 80 00 00 */	li r28, 0
/* 805A5978  88 63 00 08 */	lbz r3, 8(r3)
/* 805A597C  88 9A 00 09 */	lbz r4, 9(r26)
/* 805A5980  7C 63 07 74 */	extsb r3, r3
/* 805A5984  7C 84 07 74 */	extsb r4, r4
/* 805A5988  4B E0 09 61 */	bl mFI_BkNum2BlockKind
/* 805A598C  54 60 05 28 */	rlwinm r0, r3, 0, 0x14, 0x14
/* 805A5990  28 00 08 00 */	cmplwi r0, 0x800
/* 805A5994  40 82 00 A8 */	bne lbl_805A5A3C
/* 805A5998  54 63 02 52 */	rlwinm r3, r3, 0, 9, 9
/* 805A599C  3C 03 FF C0 */	addis r0, r3, 0xffc0
/* 805A59A0  28 00 00 00 */	cmplwi r0, 0
/* 805A59A4  41 82 00 98 */	beq lbl_805A5A3C
/* 805A59A8  3C 80 80 6C */	lis r4, chkX@ha /* 0x806C4268@ha */
/* 805A59AC  3C 60 80 6C */	lis r3, chkZ@ha /* 0x806C4278@ha */
/* 805A59B0  3B A4 42 68 */	addi r29, r4, chkX@l /* 0x806C4268@l */
/* 805A59B4  3B 60 00 00 */	li r27, 0
/* 805A59B8  3B C3 42 78 */	addi r30, r3, chkZ@l /* 0x806C4278@l */
/* 805A59BC  3B E0 00 00 */	li r31, 0
lbl_805A59C0:
/* 805A59C0  80 BA 00 28 */	lwz r5, 0x28(r26)
/* 805A59C4  38 61 00 08 */	addi r3, r1, 8
/* 805A59C8  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 805A59CC  38 80 00 00 */	li r4, 0
/* 805A59D0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805A59D4  80 DA 00 2C */	lwz r6, 0x2c(r26)
/* 805A59D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A59DC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805A59E0  7C 5D FC 2E */	lfsx f2, r29, r31
/* 805A59E4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805A59E8  7C 1E FC 2E */	lfsx f0, r30, r31
/* 805A59EC  EC 43 10 2A */	fadds f2, f3, f2
/* 805A59F0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805A59F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805A59F8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805A59FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805A5A00  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805A5A04  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A5A08  90 A1 00 08 */	stw r5, 8(r1)
/* 805A5A0C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805A5A10  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A5A14  4B DE 36 99 */	bl mCoBG_Wpos2Attribute
/* 805A5A18  4B DE E8 B5 */	bl mCoBG_CheckWaterAttribute
/* 805A5A1C  2C 03 00 00 */	cmpwi r3, 0
/* 805A5A20  40 82 00 0C */	bne lbl_805A5A2C
/* 805A5A24  3B 80 00 01 */	li r28, 1
/* 805A5A28  48 00 00 14 */	b lbl_805A5A3C
lbl_805A5A2C:
/* 805A5A2C  3B 7B 00 01 */	addi r27, r27, 1
/* 805A5A30  3B FF 00 04 */	addi r31, r31, 4
/* 805A5A34  2C 1B 00 04 */	cmpwi r27, 4
/* 805A5A38  41 80 FF 88 */	blt lbl_805A59C0
lbl_805A5A3C:
/* 805A5A3C  7F 83 E3 78 */	mr r3, r28
/* 805A5A40  39 61 00 40 */	addi r11, r1, 0x40
/* 805A5A44  4B AF 54 D1 */	bl func_8009AF14
/* 805A5A48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A5A4C  7C 08 03 A6 */	mtlr r0
/* 805A5A50  38 21 00 40 */	addi r1, r1, 0x40
/* 805A5A54  4E 80 00 20 */	blr 
