lbl_8054E410:
/* 8054E410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054E414  7C 08 02 A6 */	mflr r0
/* 8054E418  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054E41C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054E420  4B B4 CA B5 */	bl func_8009AED4
/* 8054E424  83 E4 01 74 */	lwz r31, 0x174(r4)
/* 8054E428  3B A0 00 07 */	li r29, 7
/* 8054E42C  AB C4 01 7A */	lha r30, 0x17a(r4)
/* 8054E430  93 C3 09 B0 */	stw r30, 0x9b0(r3)
/* 8054E434  48 00 00 44 */	b lbl_8054E478
lbl_8054E438:
/* 8054E438  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8054E43C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8054E440  2C 00 00 02 */	cmpwi r0, 2
/* 8054E444  40 82 00 18 */	bne lbl_8054E45C
/* 8054E448  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8054E44C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8054E450  40 82 00 0C */	bne lbl_8054E45C
/* 8054E454  3B A0 00 06 */	li r29, 6
/* 8054E458  48 00 00 28 */	b lbl_8054E480
lbl_8054E45C:
/* 8054E45C  4B E9 A2 45 */	bl mSP_ItemNo2ItemPrice
/* 8054E460  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8054E464  41 82 00 0C */	beq lbl_8054E470
/* 8054E468  3B A0 00 06 */	li r29, 6
/* 8054E46C  48 00 00 14 */	b lbl_8054E480
lbl_8054E470:
/* 8054E470  3B FF 00 04 */	addi r31, r31, 4
/* 8054E474  3B DE FF FF */	addi r30, r30, -1
lbl_8054E478:
/* 8054E478  28 1E 00 00 */	cmplwi r30, 0
/* 8054E47C  40 82 FF BC */	bne lbl_8054E438
lbl_8054E480:
/* 8054E480  7F A3 EB 78 */	mr r3, r29
/* 8054E484  39 61 00 20 */	addi r11, r1, 0x20
/* 8054E488  4B B4 CA 99 */	bl func_8009AF20
/* 8054E48C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E490  7C 08 03 A6 */	mtlr r0
/* 8054E494  38 21 00 20 */	addi r1, r1, 0x20
/* 8054E498  4E 80 00 20 */	blr 
