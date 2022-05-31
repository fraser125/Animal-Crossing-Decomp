lbl_804FC34C:
/* 804FC34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC350  7C 08 02 A6 */	mflr r0
/* 804FC354  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FC35C  7C 9F 23 78 */	mr r31, r4
/* 804FC360  7F E5 FB 78 */	mr r5, r31
/* 804FC364  38 80 00 48 */	li r4, 0x48
/* 804FC368  93 C1 00 08 */	stw r30, 8(r1)
/* 804FC36C  7C 7E 1B 78 */	mr r30, r3
/* 804FC370  4B FD E0 E9 */	bl Player_actor_check_request_main_able
/* 804FC374  2C 03 00 00 */	cmpwi r3, 0
/* 804FC378  41 82 00 2C */	beq lbl_804FC3A4
/* 804FC37C  7F C3 F3 78 */	mr r3, r30
/* 804FC380  4B ED D2 C1 */	bl get_player_actor_withoutCheck
/* 804FC384  80 03 0D 08 */	lwz r0, 0xd08(r3)
/* 804FC388  7F E5 FB 78 */	mr r5, r31
/* 804FC38C  38 80 00 48 */	li r4, 0x48
/* 804FC390  90 03 0D 90 */	stw r0, 0xd90(r3)
/* 804FC394  7F C3 F3 78 */	mr r3, r30
/* 804FC398  4B FD 8C 7D */	bl Player_actor_request_main_index
/* 804FC39C  38 60 00 01 */	li r3, 1
/* 804FC3A0  48 00 00 08 */	b lbl_804FC3A8
lbl_804FC3A4:
/* 804FC3A4  38 60 00 00 */	li r3, 0
lbl_804FC3A8:
/* 804FC3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FC3B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FC3B4  7C 08 03 A6 */	mtlr r0
/* 804FC3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC3BC  4E 80 00 20 */	blr 
