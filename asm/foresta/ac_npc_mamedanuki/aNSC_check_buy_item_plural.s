lbl_8055B3F0:
/* 8055B3F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055B3F4  7C 08 02 A6 */	mflr r0
/* 8055B3F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055B3FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B400  4B B3 FA D5 */	bl func_8009AED4
/* 8055B404  83 E4 01 74 */	lwz r31, 0x174(r4)
/* 8055B408  3B A0 00 07 */	li r29, 7
/* 8055B40C  AB C4 01 7A */	lha r30, 0x17a(r4)
/* 8055B410  93 C3 09 B0 */	stw r30, 0x9b0(r3)
/* 8055B414  48 00 00 44 */	b lbl_8055B458
lbl_8055B418:
/* 8055B418  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8055B41C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8055B420  2C 00 00 02 */	cmpwi r0, 2
/* 8055B424  40 82 00 18 */	bne lbl_8055B43C
/* 8055B428  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8055B42C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8055B430  40 82 00 0C */	bne lbl_8055B43C
/* 8055B434  3B A0 00 06 */	li r29, 6
/* 8055B438  48 00 00 28 */	b lbl_8055B460
lbl_8055B43C:
/* 8055B43C  4B E8 D2 65 */	bl mSP_ItemNo2ItemPrice
/* 8055B440  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8055B444  41 82 00 0C */	beq lbl_8055B450
/* 8055B448  3B A0 00 06 */	li r29, 6
/* 8055B44C  48 00 00 14 */	b lbl_8055B460
lbl_8055B450:
/* 8055B450  3B FF 00 04 */	addi r31, r31, 4
/* 8055B454  3B DE FF FF */	addi r30, r30, -1
lbl_8055B458:
/* 8055B458  28 1E 00 00 */	cmplwi r30, 0
/* 8055B45C  40 82 FF BC */	bne lbl_8055B418
lbl_8055B460:
/* 8055B460  7F A3 EB 78 */	mr r3, r29
/* 8055B464  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B468  4B B3 FA B9 */	bl func_8009AF20
/* 8055B46C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B470  7C 08 03 A6 */	mtlr r0
/* 8055B474  38 21 00 20 */	addi r1, r1, 0x20
/* 8055B478  4E 80 00 20 */	blr 
