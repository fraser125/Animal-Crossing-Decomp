lbl_8049F69C:
/* 8049F69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049F6A0  7C 08 02 A6 */	mflr r0
/* 8049F6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F6A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F6AC  4B BF B8 29 */	bl func_8009AED4
/* 8049F6B0  7C 7D 1B 78 */	mr r29, r3
/* 8049F6B4  7C BE 2B 78 */	mr r30, r5
/* 8049F6B8  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8049F6BC  7C DF 33 78 */	mr r31, r6
/* 8049F6C0  80 9D 01 78 */	lwz r4, 0x178(r29)
/* 8049F6C4  4B F0 7A 91 */	bl mFI_BkNumtoUtFGTop
/* 8049F6C8  28 03 00 00 */	cmplwi r3, 0
/* 8049F6CC  7C 65 1B 78 */	mr r5, r3
/* 8049F6D0  41 82 00 5C */	beq lbl_8049F72C
/* 8049F6D4  38 00 01 00 */	li r0, 0x100
/* 8049F6D8  39 20 00 00 */	li r9, 0
/* 8049F6DC  7C 09 03 A6 */	mtctr r0
lbl_8049F6E0:
/* 8049F6E0  A0 03 00 00 */	lhz r0, 0(r3)
/* 8049F6E4  28 00 58 04 */	cmplwi r0, 0x5804
/* 8049F6E8  41 80 00 38 */	blt lbl_8049F720
/* 8049F6EC  28 00 58 08 */	cmplwi r0, 0x5808
/* 8049F6F0  41 81 00 30 */	bgt lbl_8049F720
/* 8049F6F4  38 1F 58 04 */	addi r0, r31, 0x5804
/* 8049F6F8  55 28 07 3E */	clrlwi r8, r9, 0x1c
/* 8049F6FC  B0 03 00 00 */	sth r0, 0(r3)
/* 8049F700  7F C3 07 34 */	extsh r3, r30
/* 8049F704  7F E4 07 34 */	extsh r4, r31
/* 8049F708  55 29 E7 3E */	rlwinm r9, r9, 0x1c, 0x1c, 0x1f
/* 8049F70C  80 DD 01 74 */	lwz r6, 0x174(r29)
/* 8049F710  80 FD 01 78 */	lwz r7, 0x178(r29)
/* 8049F714  4B FF FE B9 */	bl aSL_GroundClean
/* 8049F718  38 60 00 01 */	li r3, 1
/* 8049F71C  48 00 00 14 */	b lbl_8049F730
lbl_8049F720:
/* 8049F720  38 63 00 02 */	addi r3, r3, 2
/* 8049F724  39 29 00 01 */	addi r9, r9, 1
/* 8049F728  42 00 FF B8 */	bdnz lbl_8049F6E0
lbl_8049F72C:
/* 8049F72C  38 60 00 00 */	li r3, 0
lbl_8049F730:
/* 8049F730  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F734  4B BF B7 ED */	bl func_8009AF20
/* 8049F738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049F73C  7C 08 03 A6 */	mtlr r0
/* 8049F740  38 21 00 20 */	addi r1, r1, 0x20
/* 8049F744  4E 80 00 20 */	blr 
