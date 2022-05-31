lbl_804E7A80:
/* 804E7A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7A84  7C 08 02 A6 */	mflr r0
/* 804E7A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E7A90  7C 9F 23 78 */	mr r31, r4
/* 804E7A94  7F E5 FB 78 */	mr r5, r31
/* 804E7A98  38 80 00 0B */	li r4, 0xb
/* 804E7A9C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E7AA0  7C 7E 1B 78 */	mr r30, r3
/* 804E7AA4  4B FF 29 B5 */	bl Player_actor_check_request_main_able
/* 804E7AA8  2C 03 00 00 */	cmpwi r3, 0
/* 804E7AAC  41 82 00 1C */	beq lbl_804E7AC8
/* 804E7AB0  7F C3 F3 78 */	mr r3, r30
/* 804E7AB4  7F E5 FB 78 */	mr r5, r31
/* 804E7AB8  38 80 00 0B */	li r4, 0xb
/* 804E7ABC  4B FE D5 59 */	bl Player_actor_request_main_index
/* 804E7AC0  38 60 00 01 */	li r3, 1
/* 804E7AC4  48 00 00 08 */	b lbl_804E7ACC
lbl_804E7AC8:
/* 804E7AC8  38 60 00 00 */	li r3, 0
lbl_804E7ACC:
/* 804E7ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E7AD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E7AD8  7C 08 03 A6 */	mtlr r0
/* 804E7ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E7AE0  4E 80 00 20 */	blr 
