lbl_80507A14:
/* 80507A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507A18  7C 08 02 A6 */	mflr r0
/* 80507A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507A24  7C 9F 23 78 */	mr r31, r4
/* 80507A28  93 C1 00 08 */	stw r30, 8(r1)
/* 80507A2C  7C 7E 1B 78 */	mr r30, r3
/* 80507A30  4B FF FF B1 */	bl Player_actor_able_request_proc_index_fromDemo_geton_boat_wade_common
/* 80507A34  2C 03 00 00 */	cmpwi r3, 0
/* 80507A38  41 82 00 18 */	beq lbl_80507A50
/* 80507A3C  7F C3 F3 78 */	mr r3, r30
/* 80507A40  4B FC D9 2D */	bl Player_actor_SettleRequestMainIndexPriority
/* 80507A44  7F E3 FB 78 */	mr r3, r31
/* 80507A48  38 80 00 13 */	li r4, 0x13
/* 80507A4C  4B FF FB 5D */	bl func_805075A8
lbl_80507A50:
/* 80507A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507A58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80507A5C  7C 08 03 A6 */	mtlr r0
/* 80507A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80507A64  4E 80 00 20 */	blr 
