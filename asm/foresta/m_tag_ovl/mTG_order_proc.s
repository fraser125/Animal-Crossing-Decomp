lbl_805F74B8:
/* 805F74B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F74BC  7C 08 02 A6 */	mflr r0
/* 805F74C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F74C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F74C8  4B AA 3A 09 */	bl func_8009AED0
/* 805F74CC  7C 7D 1B 78 */	mr r29, r3
/* 805F74D0  7C 9E 23 78 */	mr r30, r4
/* 805F74D4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F74D8  38 80 00 01 */	li r4, 1
/* 805F74DC  83 FD 01 74 */	lwz r31, 0x174(r29)
/* 805F74E0  83 83 09 CC */	lwz r28, 0x9cc(r3)
/* 805F74E4  3C 7C 00 01 */	addis r3, r28, 1
/* 805F74E8  88 03 D9 F4 */	lbz r0, -0x260c(r3)
/* 805F74EC  1C 60 06 44 */	mulli r3, r0, 0x644
/* 805F74F0  3C A3 00 01 */	addis r5, r3, 1
/* 805F74F4  38 A5 A1 48 */	addi r5, r5, -24248
/* 805F74F8  7C BC 2A 14 */	add r5, r28, r5
/* 805F74FC  A8 65 00 02 */	lha r3, 2(r5)
/* 805F7500  A8 05 00 04 */	lha r0, 4(r5)
/* 805F7504  7C 03 02 14 */	add r0, r3, r0
/* 805F7508  54 00 08 3C */	slwi r0, r0, 1
/* 805F750C  7C 65 02 14 */	add r3, r5, r0
/* 805F7510  A0 63 00 08 */	lhz r3, 8(r3)
/* 805F7514  4B DE F0 11 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 805F7518  B0 7F 00 00 */	sth r3, 0(r31)
/* 805F751C  38 80 00 01 */	li r4, 1
/* 805F7520  B0 9D 01 7A */	sth r4, 0x17a(r29)
/* 805F7524  88 1C 00 00 */	lbz r0, 0(r28)
/* 805F7528  1C 00 50 A0 */	mulli r0, r0, 0x50a0
/* 805F752C  7C 7C 02 14 */	add r3, r28, r0
/* 805F7530  80 03 50 94 */	lwz r0, 0x5094(r3)
/* 805F7534  28 00 00 00 */	cmplwi r0, 0
/* 805F7538  40 82 00 10 */	bne lbl_805F7548
/* 805F753C  38 00 00 00 */	li r0, 0
/* 805F7540  98 1F 00 02 */	stb r0, 2(r31)
/* 805F7544  48 00 00 08 */	b lbl_805F754C
lbl_805F7548:
/* 805F7548  98 9F 00 02 */	stb r4, 2(r31)
lbl_805F754C:
/* 805F754C  7F A3 EB 78 */	mr r3, r29
/* 805F7550  7F C4 F3 78 */	mr r4, r30
/* 805F7554  38 A0 00 01 */	li r5, 1
/* 805F7558  4B FF BA BD */	bl mTG_close_window
/* 805F755C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F7560  4B AA 39 BD */	bl func_8009AF1C
/* 805F7564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F7568  7C 08 03 A6 */	mtlr r0
/* 805F756C  38 21 00 20 */	addi r1, r1, 0x20
/* 805F7570  4E 80 00 20 */	blr 
