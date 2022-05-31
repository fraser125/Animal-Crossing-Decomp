lbl_8055B920:
/* 8055B920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055B924  7C 08 02 A6 */	mflr r0
/* 8055B928  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055B92C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B930  4B B3 F5 A5 */	bl func_8009AED4
/* 8055B934  7C 7D 1B 78 */	mr r29, r3
/* 8055B938  7C 9E 23 78 */	mr r30, r4
/* 8055B93C  A0 63 09 B4 */	lhz r3, 0x9b4(r3)
/* 8055B940  28 03 00 00 */	cmplwi r3, 0
/* 8055B944  41 82 00 70 */	beq lbl_8055B9B4
/* 8055B948  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8055B94C  3B E0 00 1E */	li r31, 0x1e
/* 8055B950  2C 00 00 02 */	cmpwi r0, 2
/* 8055B954  40 82 00 50 */	bne lbl_8055B9A4
/* 8055B958  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8055B95C  2C 00 00 05 */	cmpwi r0, 5
/* 8055B960  41 82 00 24 */	beq lbl_8055B984
/* 8055B964  40 80 00 10 */	bge lbl_8055B974
/* 8055B968  2C 00 00 04 */	cmpwi r0, 4
/* 8055B96C  40 80 00 10 */	bge lbl_8055B97C
/* 8055B970  48 00 00 14 */	b lbl_8055B984
lbl_8055B974:
/* 8055B974  2C 00 00 08 */	cmpwi r0, 8
/* 8055B978  40 80 00 0C */	bge lbl_8055B984
lbl_8055B97C:
/* 8055B97C  3B E0 00 26 */	li r31, 0x26
/* 8055B980  48 00 00 24 */	b lbl_8055B9A4
lbl_8055B984:
/* 8055B984  28 03 22 2D */	cmplwi r3, 0x222d
/* 8055B988  41 80 00 1C */	blt lbl_8055B9A4
/* 8055B98C  28 03 22 38 */	cmplwi r3, 0x2238
/* 8055B990  41 81 00 14 */	bgt lbl_8055B9A4
/* 8055B994  4B E5 81 75 */	bl mLd_PlayerManKindCheck
/* 8055B998  2C 03 00 00 */	cmpwi r3, 0
/* 8055B99C  41 82 00 08 */	beq lbl_8055B9A4
/* 8055B9A0  3B E0 00 0F */	li r31, 0xf
lbl_8055B9A4:
/* 8055B9A4  7F A3 EB 78 */	mr r3, r29
/* 8055B9A8  7F C4 F3 78 */	mr r4, r30
/* 8055B9AC  7F E5 FB 78 */	mr r5, r31
/* 8055B9B0  48 00 34 21 */	bl aNSC_setupAction
lbl_8055B9B4:
/* 8055B9B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B9B8  4B B3 F5 69 */	bl func_8009AF20
/* 8055B9BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B9C0  7C 08 03 A6 */	mtlr r0
/* 8055B9C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055B9C8  4E 80 00 20 */	blr 
