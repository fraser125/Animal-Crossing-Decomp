lbl_805DE550:
/* 805DE550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DE554  7C 08 02 A6 */	mflr r0
/* 805DE558  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DE55C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE560  4B AB C9 75 */	bl func_8009AED4
/* 805DE564  80 03 00 04 */	lwz r0, 4(r3)
/* 805DE568  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805DE56C  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805DE570  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805DE574  1C E0 00 48 */	mulli r7, r0, 0x48
/* 805DE578  54 80 18 38 */	slwi r0, r4, 3
/* 805DE57C  81 09 09 7C */	lwz r8, 0x97c(r9)
/* 805DE580  7C 7F 1B 78 */	mr r31, r3
/* 805DE584  80 89 09 80 */	lwz r4, 0x980(r9)
/* 805DE588  38 C0 00 00 */	li r6, 0
/* 805DE58C  39 47 00 54 */	addi r10, r7, 0x54
/* 805DE590  88 E4 03 66 */	lbz r7, 0x366(r4)
/* 805DE594  7D 49 52 14 */	add r10, r9, r10
/* 805DE598  3B C8 00 08 */	addi r30, r8, 8
/* 805DE59C  80 8A 00 3C */	lwz r4, 0x3c(r10)
/* 805DE5A0  7C E8 00 34 */	cntlzw r8, r7
/* 805DE5A4  55 1D D9 7E */	srwi r29, r8, 5
/* 805DE5A8  1C E4 26 B0 */	mulli r7, r4, 0x26b0
/* 805DE5AC  7F C4 F3 78 */	mr r4, r30
/* 805DE5B0  7C A5 3A 14 */	add r5, r5, r7
/* 805DE5B4  7C A5 02 14 */	add r5, r5, r0
/* 805DE5B8  3C A5 00 01 */	addis r5, r5, 1
/* 805DE5BC  38 A5 C2 BC */	addi r5, r5, -15684
/* 805DE5C0  4B FF F1 A9 */	bl mHD_drop_item
/* 805DE5C4  2C 1D 00 01 */	cmpwi r29, 1
/* 805DE5C8  40 82 00 40 */	bne lbl_805DE608
/* 805DE5CC  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 805DE5D0  38 00 00 00 */	li r0, 0
/* 805DE5D4  7F E3 FB 78 */	mr r3, r31
/* 805DE5D8  38 A0 00 26 */	li r5, 0x26
/* 805DE5DC  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DE5E0  38 C0 00 00 */	li r6, 0
/* 805DE5E4  B0 04 02 F0 */	sth r0, 0x2f0(r4)
/* 805DE5E8  80 FF 00 2C */	lwz r7, 0x2c(r31)
/* 805DE5EC  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 805DE5F0  80 E7 09 7C */	lwz r7, 0x97c(r7)
/* 805DE5F4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805DE5F8  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805DE5FC  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 805DE600  7D 89 03 A6 */	mtctr r12
/* 805DE604  4E 80 04 21 */	bctrl 
lbl_805DE608:
/* 805DE608  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE60C  4B AB C9 15 */	bl func_8009AF20
/* 805DE610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE614  7C 08 03 A6 */	mtlr r0
/* 805DE618  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE61C  4E 80 00 20 */	blr 
