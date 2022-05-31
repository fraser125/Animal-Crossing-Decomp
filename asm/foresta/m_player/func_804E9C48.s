lbl_804E9C48:
/* 804E9C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9C4C  7C 08 02 A6 */	mflr r0
/* 804E9C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9C58  7C 9F 23 78 */	mr r31, r4
/* 804E9C5C  7F E5 FB 78 */	mr r5, r31
/* 804E9C60  38 80 00 12 */	li r4, 0x12
/* 804E9C64  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9C68  7C 7E 1B 78 */	mr r30, r3
/* 804E9C6C  4B FF 07 ED */	bl Player_actor_check_request_main_able
/* 804E9C70  2C 03 00 00 */	cmpwi r3, 0
/* 804E9C74  41 82 00 1C */	beq lbl_804E9C90
/* 804E9C78  7F C3 F3 78 */	mr r3, r30
/* 804E9C7C  7F E5 FB 78 */	mr r5, r31
/* 804E9C80  38 80 00 12 */	li r4, 0x12
/* 804E9C84  4B FE B3 91 */	bl Player_actor_request_main_index
/* 804E9C88  38 60 00 01 */	li r3, 1
/* 804E9C8C  48 00 00 08 */	b lbl_804E9C94
lbl_804E9C90:
/* 804E9C90  38 60 00 00 */	li r3, 0
lbl_804E9C94:
/* 804E9C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9C9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9CA0  7C 08 03 A6 */	mtlr r0
/* 804E9CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9CA8  4E 80 00 20 */	blr 
