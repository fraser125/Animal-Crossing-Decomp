lbl_804FC8A0:
/* 804FC8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC8A4  7C 08 02 A6 */	mflr r0
/* 804FC8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC8AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FC8B0  7C 9F 23 78 */	mr r31, r4
/* 804FC8B4  7F E5 FB 78 */	mr r5, r31
/* 804FC8B8  38 80 00 49 */	li r4, 0x49
/* 804FC8BC  93 C1 00 08 */	stw r30, 8(r1)
/* 804FC8C0  7C 7E 1B 78 */	mr r30, r3
/* 804FC8C4  4B FD DB 95 */	bl Player_actor_check_request_main_able
/* 804FC8C8  2C 03 00 00 */	cmpwi r3, 0
/* 804FC8CC  41 82 00 2C */	beq lbl_804FC8F8
/* 804FC8D0  7F C3 F3 78 */	mr r3, r30
/* 804FC8D4  4B ED CD 6D */	bl get_player_actor_withoutCheck
/* 804FC8D8  80 03 0D 08 */	lwz r0, 0xd08(r3)
/* 804FC8DC  7F E5 FB 78 */	mr r5, r31
/* 804FC8E0  38 80 00 49 */	li r4, 0x49
/* 804FC8E4  90 03 0D 90 */	stw r0, 0xd90(r3)
/* 804FC8E8  7F C3 F3 78 */	mr r3, r30
/* 804FC8EC  4B FD 87 29 */	bl Player_actor_request_main_index
/* 804FC8F0  38 60 00 01 */	li r3, 1
/* 804FC8F4  48 00 00 08 */	b lbl_804FC8FC
lbl_804FC8F8:
/* 804FC8F8  38 60 00 00 */	li r3, 0
lbl_804FC8FC:
/* 804FC8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FC904  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FC908  7C 08 03 A6 */	mtlr r0
/* 804FC90C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC910  4E 80 00 20 */	blr 
