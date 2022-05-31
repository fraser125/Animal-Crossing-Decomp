lbl_8053FAC8:
/* 8053FAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FACC  7C 08 02 A6 */	mflr r0
/* 8053FAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FAD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FAD8  7C 7F 1B 78 */	mr r31, r3
/* 8053FADC  4B FF F5 AD */	bl aNPC_act_turn
/* 8053FAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8053FAE4  40 82 00 10 */	bne lbl_8053FAF4
/* 8053FAE8  7F E3 FB 78 */	mr r3, r31
/* 8053FAEC  38 80 00 01 */	li r4, 1
/* 8053FAF0  4B FF FF 8D */	bl aNPC_act_talk_chg_step
lbl_8053FAF4:
/* 8053FAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FAFC  7C 08 03 A6 */	mtlr r0
/* 8053FB00  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FB04  4E 80 00 20 */	blr 
