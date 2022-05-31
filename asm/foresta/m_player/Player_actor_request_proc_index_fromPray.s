lbl_805009A8:
/* 805009A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805009AC  7C 08 02 A6 */	mflr r0
/* 805009B0  2C 05 00 00 */	cmpwi r5, 0
/* 805009B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805009B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805009BC  7C 9F 23 78 */	mr r31, r4
/* 805009C0  41 82 00 1C */	beq lbl_805009DC
/* 805009C4  4B FD 49 A9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 805009C8  7F E3 FB 78 */	mr r3, r31
/* 805009CC  38 80 00 00 */	li r4, 0
/* 805009D0  38 A0 00 00 */	li r5, 0
/* 805009D4  38 C0 00 13 */	li r6, 0x13
/* 805009D8  4B FF C3 69 */	bl func_804FCD40
lbl_805009DC:
/* 805009DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805009E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805009E4  7C 08 03 A6 */	mtlr r0
/* 805009E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805009EC  4E 80 00 20 */	blr 
