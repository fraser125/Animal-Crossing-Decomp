lbl_80483D70:
/* 80483D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483D74  7C 08 02 A6 */	mflr r0
/* 80483D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80483D80  7C 9F 23 78 */	mr r31, r4
/* 80483D84  93 C1 00 08 */	stw r30, 8(r1)
/* 80483D88  7C 7E 1B 78 */	mr r30, r3
/* 80483D8C  7F E3 FB 78 */	mr r3, r31
/* 80483D90  4B F5 A6 91 */	bl mPlib_check_player_actor_main_index_OutDoorMove2
/* 80483D94  2C 03 00 00 */	cmpwi r3, 0
/* 80483D98  40 82 00 14 */	bne lbl_80483DAC
/* 80483D9C  7F C3 F3 78 */	mr r3, r30
/* 80483DA0  7F E4 FB 78 */	mr r4, r31
/* 80483DA4  38 A0 00 02 */	li r5, 2
/* 80483DA8  48 00 01 A9 */	bl aPRD_setupAction
lbl_80483DAC:
/* 80483DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80483DB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80483DB8  7C 08 03 A6 */	mtlr r0
/* 80483DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80483DC0  4E 80 00 20 */	blr 
