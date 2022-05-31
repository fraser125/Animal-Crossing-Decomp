lbl_805556B8:
/* 805556B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805556BC  7C 08 02 A6 */	mflr r0
/* 805556C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805556C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805556C8  7C 9F 23 78 */	mr r31, r4
/* 805556CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805556D0  7C 7E 1B 78 */	mr r30, r3
/* 805556D4  4B E6 9F D5 */	bl func_803BF6A8
/* 805556D8  4B E6 B5 C1 */	bl mMsg_Check_MainNormalContinue
/* 805556DC  2C 03 00 01 */	cmpwi r3, 1
/* 805556E0  40 82 00 14 */	bne lbl_805556F4
/* 805556E4  7F C3 F3 78 */	mr r3, r30
/* 805556E8  7F E4 FB 78 */	mr r4, r31
/* 805556EC  38 A0 00 04 */	li r5, 4
/* 805556F0  48 00 0E 2D */	bl aNG2_setupAction
lbl_805556F4:
/* 805556F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805556F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805556FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555700  7C 08 03 A6 */	mtlr r0
/* 80555704  38 21 00 10 */	addi r1, r1, 0x10
/* 80555708  4E 80 00 20 */	blr 
