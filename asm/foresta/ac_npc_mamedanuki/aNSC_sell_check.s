lbl_8055D258:
/* 8055D258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D25C  7C 08 02 A6 */	mflr r0
/* 8055D260  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D264  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D268  4B B3 DC 6D */	bl func_8009AED4
/* 8055D26C  7C 7D 1B 78 */	mr r29, r3
/* 8055D270  7C 9E 23 78 */	mr r30, r4
/* 8055D274  4B E6 24 35 */	bl func_803BF6A8
/* 8055D278  4B E6 3A 21 */	bl mMsg_Check_MainNormalContinue
/* 8055D27C  2C 03 00 00 */	cmpwi r3, 0
/* 8055D280  41 82 00 78 */	beq lbl_8055D2F8
/* 8055D284  3B E0 FF FF */	li r31, -1
/* 8055D288  4B E2 62 B9 */	bl func_80383540
/* 8055D28C  4B E2 68 E1 */	bl mChoice_Get_ChoseNum
/* 8055D290  2C 03 00 01 */	cmpwi r3, 1
/* 8055D294  41 82 00 1C */	beq lbl_8055D2B0
/* 8055D298  40 80 00 1C */	bge lbl_8055D2B4
/* 8055D29C  2C 03 00 00 */	cmpwi r3, 0
/* 8055D2A0  40 80 00 08 */	bge lbl_8055D2A8
/* 8055D2A4  48 00 00 10 */	b lbl_8055D2B4
lbl_8055D2A8:
/* 8055D2A8  3B E0 00 20 */	li r31, 0x20
/* 8055D2AC  48 00 00 08 */	b lbl_8055D2B4
lbl_8055D2B0:
/* 8055D2B0  3B E0 00 21 */	li r31, 0x21
lbl_8055D2B4:
/* 8055D2B4  2C 1F FF FF */	cmpwi r31, -1
/* 8055D2B8  41 82 00 40 */	beq lbl_8055D2F8
/* 8055D2BC  88 1D 09 B8 */	lbz r0, 0x9b8(r29)
/* 8055D2C0  28 00 00 01 */	cmplwi r0, 1
/* 8055D2C4  40 82 00 24 */	bne lbl_8055D2E8
/* 8055D2C8  A0 1D 09 B4 */	lhz r0, 0x9b4(r29)
/* 8055D2CC  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8055D2D0  2C 00 00 04 */	cmpwi r0, 4
/* 8055D2D4  40 82 00 14 */	bne lbl_8055D2E8
/* 8055D2D8  93 FD 09 98 */	stw r31, 0x998(r29)
/* 8055D2DC  3B E0 00 27 */	li r31, 0x27
/* 8055D2E0  A0 1D 09 BC */	lhz r0, 0x9bc(r29)
/* 8055D2E4  B0 1D 09 BE */	sth r0, 0x9be(r29)
lbl_8055D2E8:
/* 8055D2E8  7F A3 EB 78 */	mr r3, r29
/* 8055D2EC  7F C4 F3 78 */	mr r4, r30
/* 8055D2F0  7F E5 FB 78 */	mr r5, r31
/* 8055D2F4  48 00 1A DD */	bl aNSC_setupAction
lbl_8055D2F8:
/* 8055D2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D2FC  4B B3 DC 25 */	bl func_8009AF20
/* 8055D300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D304  7C 08 03 A6 */	mtlr r0
/* 8055D308  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D30C  4E 80 00 20 */	blr 
