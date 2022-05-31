lbl_804F1A38:
/* 804F1A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1A3C  7C 08 02 A6 */	mflr r0
/* 804F1A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F1A48  7C 9F 23 78 */	mr r31, r4
/* 804F1A4C  7F E5 FB 78 */	mr r5, r31
/* 804F1A50  38 80 00 29 */	li r4, 0x29
/* 804F1A54  93 C1 00 08 */	stw r30, 8(r1)
/* 804F1A58  7C 7E 1B 78 */	mr r30, r3
/* 804F1A5C  4B FE 89 FD */	bl Player_actor_check_request_main_able
/* 804F1A60  2C 03 00 00 */	cmpwi r3, 0
/* 804F1A64  41 82 00 50 */	beq lbl_804F1AB4
/* 804F1A68  7F C3 F3 78 */	mr r3, r30
/* 804F1A6C  4B EE 7B D5 */	bl get_player_actor_withoutCheck
/* 804F1A70  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804F1A74  4B FE EF 31 */	bl Player_actor_Get_ItemKind
/* 804F1A78  7C 60 07 74 */	extsb r0, r3
/* 804F1A7C  38 60 00 00 */	li r3, 0
/* 804F1A80  2C 00 00 09 */	cmpwi r0, 9
/* 804F1A84  41 80 00 10 */	blt lbl_804F1A94
/* 804F1A88  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F1A8C  40 80 00 08 */	bge lbl_804F1A94
/* 804F1A90  38 60 00 01 */	li r3, 1
lbl_804F1A94:
/* 804F1A94  2C 03 00 00 */	cmpwi r3, 0
/* 804F1A98  41 82 00 1C */	beq lbl_804F1AB4
/* 804F1A9C  7F C3 F3 78 */	mr r3, r30
/* 804F1AA0  7F E5 FB 78 */	mr r5, r31
/* 804F1AA4  38 80 00 29 */	li r4, 0x29
/* 804F1AA8  4B FE 35 6D */	bl Player_actor_request_main_index
/* 804F1AAC  38 60 00 01 */	li r3, 1
/* 804F1AB0  48 00 00 08 */	b lbl_804F1AB8
lbl_804F1AB4:
/* 804F1AB4  38 60 00 00 */	li r3, 0
lbl_804F1AB8:
/* 804F1AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F1AC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F1AC4  7C 08 03 A6 */	mtlr r0
/* 804F1AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1ACC  4E 80 00 20 */	blr 
