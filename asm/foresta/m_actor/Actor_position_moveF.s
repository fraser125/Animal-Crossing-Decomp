lbl_80374314:
/* 80374314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80374318  7C 08 02 A6 */	mflr r0
/* 8037431C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80374324  7C 7F 1B 78 */	mr r31, r3
/* 80374328  4B FF FF 7D */	bl Actor_position_speed_set
/* 8037432C  7F E3 FB 78 */	mr r3, r31
/* 80374330  4B FF FE D9 */	bl Actor_position_move
/* 80374334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80374338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037433C  7C 08 03 A6 */	mtlr r0
/* 80374340  38 21 00 10 */	addi r1, r1, 0x10
/* 80374344  4E 80 00 20 */	blr 
