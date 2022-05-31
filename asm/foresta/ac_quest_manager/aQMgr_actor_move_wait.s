lbl_804860C0:
/* 804860C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804860C4  7C 08 02 A6 */	mflr r0
/* 804860C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804860CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804860D0  7C 7F 1B 78 */	mr r31, r3
/* 804860D4  4B FF FE 8D */	bl aQMgr_actor_init_quest
/* 804860D8  7F E3 FB 78 */	mr r3, r31
/* 804860DC  4B FF FF 79 */	bl aQMgr_actor_regist_quest_move
/* 804860E0  81 9F 09 4C */	lwz r12, 0x94c(r31)
/* 804860E4  38 7F 02 14 */	addi r3, r31, 0x214
/* 804860E8  38 80 00 23 */	li r4, 0x23
/* 804860EC  7D 89 03 A6 */	mtctr r12
/* 804860F0  4E 80 04 21 */	bctrl 
/* 804860F4  38 60 FF FF */	li r3, -1
/* 804860F8  38 00 00 00 */	li r0, 0
/* 804860FC  90 7F 09 30 */	stw r3, 0x930(r31)
/* 80486100  90 1F 09 34 */	stw r0, 0x934(r31)
/* 80486104  4B F4 D6 AD */	bl mNpc_TalkInfoMove
/* 80486108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048610C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486110  7C 08 03 A6 */	mtlr r0
/* 80486114  38 21 00 10 */	addi r1, r1, 0x10
/* 80486118  4E 80 00 20 */	blr 
