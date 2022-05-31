lbl_805A7DA8:
/* 805A7DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7DAC  7C 08 02 A6 */	mflr r0
/* 805A7DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7DB8  7C 9F 23 78 */	mr r31, r4
/* 805A7DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7DC0  7C 7E 1B 78 */	mr r30, r3
/* 805A7DC4  7F E3 FB 78 */	mr r3, r31
/* 805A7DC8  4B E3 18 A9 */	bl mPlib_get_player_actor_main_index
/* 805A7DCC  2C 03 00 71 */	cmpwi r3, 0x71
/* 805A7DD0  40 82 00 14 */	bne lbl_805A7DE4
/* 805A7DD4  7F C3 F3 78 */	mr r3, r30
/* 805A7DD8  7F E4 FB 78 */	mr r4, r31
/* 805A7DDC  38 A0 00 06 */	li r5, 6
/* 805A7DE0  48 00 05 6D */	bl aBT_setupAction
lbl_805A7DE4:
/* 805A7DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7DEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7DF0  7C 08 03 A6 */	mtlr r0
/* 805A7DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7DF8  4E 80 00 20 */	blr 
