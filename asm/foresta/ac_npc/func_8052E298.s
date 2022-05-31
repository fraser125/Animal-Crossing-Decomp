lbl_8052E298:
/* 8052E298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E29C  7C 08 02 A6 */	mflr r0
/* 8052E2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E2A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E2A8  4B B6 CC 2D */	bl func_8009AED4
/* 8052E2AC  7C 7D 1B 78 */	mr r29, r3
/* 8052E2B0  7C 9E 23 78 */	mr r30, r4
/* 8052E2B4  88 03 07 C9 */	lbz r0, 0x7c9(r3)
/* 8052E2B8  3B E0 00 00 */	li r31, 0
/* 8052E2BC  28 00 00 00 */	cmplwi r0, 0
/* 8052E2C0  40 82 00 48 */	bne lbl_8052E308
/* 8052E2C4  88 1D 08 33 */	lbz r0, 0x833(r29)
/* 8052E2C8  28 00 00 00 */	cmplwi r0, 0
/* 8052E2CC  40 82 00 3C */	bne lbl_8052E308
/* 8052E2D0  7F A4 EB 78 */	mr r4, r29
/* 8052E2D4  38 60 00 08 */	li r3, 8
/* 8052E2D8  4B E6 BF 8D */	bl mDemo_Check
/* 8052E2DC  2C 03 00 00 */	cmpwi r3, 0
/* 8052E2E0  40 82 00 28 */	bne lbl_8052E308
/* 8052E2E4  7F A4 EB 78 */	mr r4, r29
/* 8052E2E8  38 60 00 07 */	li r3, 7
/* 8052E2EC  4B E6 BF 79 */	bl mDemo_Check
/* 8052E2F0  2C 03 00 00 */	cmpwi r3, 0
/* 8052E2F4  40 82 00 14 */	bne lbl_8052E308
/* 8052E2F8  38 00 00 01 */	li r0, 1
/* 8052E2FC  3B E0 00 01 */	li r31, 1
/* 8052E300  98 1D 07 C9 */	stb r0, 0x7c9(r29)
/* 8052E304  93 DD 07 CC */	stw r30, 0x7cc(r29)
lbl_8052E308:
/* 8052E308  7F E3 FB 78 */	mr r3, r31
/* 8052E30C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E310  4B B6 CC 11 */	bl func_8009AF20
/* 8052E314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052E318  7C 08 03 A6 */	mtlr r0
/* 8052E31C  38 21 00 20 */	addi r1, r1, 0x20
/* 8052E320  4E 80 00 20 */	blr 
