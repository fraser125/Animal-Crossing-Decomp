lbl_804FE8B0:
/* 804FE8B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE8B4  7C 08 02 A6 */	mflr r0
/* 804FE8B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE8BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE8C0  7C 9F 23 78 */	mr r31, r4
/* 804FE8C4  7F E5 FB 78 */	mr r5, r31
/* 804FE8C8  38 80 00 51 */	li r4, 0x51
/* 804FE8CC  93 C1 00 08 */	stw r30, 8(r1)
/* 804FE8D0  7C 7E 1B 78 */	mr r30, r3
/* 804FE8D4  4B FD BB 85 */	bl Player_actor_check_request_main_able
/* 804FE8D8  2C 03 00 00 */	cmpwi r3, 0
/* 804FE8DC  41 82 00 1C */	beq lbl_804FE8F8
/* 804FE8E0  7F C3 F3 78 */	mr r3, r30
/* 804FE8E4  7F E5 FB 78 */	mr r5, r31
/* 804FE8E8  38 80 00 51 */	li r4, 0x51
/* 804FE8EC  4B FD 67 29 */	bl Player_actor_request_main_index
/* 804FE8F0  38 60 00 01 */	li r3, 1
/* 804FE8F4  48 00 00 08 */	b lbl_804FE8FC
lbl_804FE8F8:
/* 804FE8F8  38 60 00 00 */	li r3, 0
lbl_804FE8FC:
/* 804FE8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE904  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FE908  7C 08 03 A6 */	mtlr r0
/* 804FE90C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE910  4E 80 00 20 */	blr 
