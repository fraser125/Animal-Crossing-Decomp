lbl_805A7CA0:
/* 805A7CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7CA4  7C 08 02 A6 */	mflr r0
/* 805A7CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7CB0  7C 9F 23 78 */	mr r31, r4
/* 805A7CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7CB8  7C 7E 1B 78 */	mr r30, r3
/* 805A7CBC  4B E3 3E 2D */	bl mPlib_Get_end_player_demo_walk
/* 805A7CC0  2C 03 00 00 */	cmpwi r3, 0
/* 805A7CC4  41 82 00 14 */	beq lbl_805A7CD8
/* 805A7CC8  7F C3 F3 78 */	mr r3, r30
/* 805A7CCC  7F E4 FB 78 */	mr r4, r31
/* 805A7CD0  38 A0 00 04 */	li r5, 4
/* 805A7CD4  48 00 06 79 */	bl aBT_setupAction
lbl_805A7CD8:
/* 805A7CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7CE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7CE4  7C 08 03 A6 */	mtlr r0
/* 805A7CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7CEC  4E 80 00 20 */	blr 
