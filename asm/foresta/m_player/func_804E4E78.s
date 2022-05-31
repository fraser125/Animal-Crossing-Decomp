lbl_804E4E78:
/* 804E4E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4E7C  7C 08 02 A6 */	mflr r0
/* 804E4E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4E88  7C 9F 23 78 */	mr r31, r4
/* 804E4E8C  7F E5 FB 78 */	mr r5, r31
/* 804E4E90  38 80 00 02 */	li r4, 2
/* 804E4E94  93 C1 00 08 */	stw r30, 8(r1)
/* 804E4E98  7C 7E 1B 78 */	mr r30, r3
/* 804E4E9C  4B FF 55 BD */	bl Player_actor_check_request_main_able
/* 804E4EA0  2C 03 00 00 */	cmpwi r3, 0
/* 804E4EA4  41 82 00 1C */	beq lbl_804E4EC0
/* 804E4EA8  7F C3 F3 78 */	mr r3, r30
/* 804E4EAC  7F E5 FB 78 */	mr r5, r31
/* 804E4EB0  38 80 00 02 */	li r4, 2
/* 804E4EB4  4B FF 01 61 */	bl Player_actor_request_main_index
/* 804E4EB8  38 60 00 01 */	li r3, 1
/* 804E4EBC  48 00 00 08 */	b lbl_804E4EC4
lbl_804E4EC0:
/* 804E4EC0  38 60 00 00 */	li r3, 0
lbl_804E4EC4:
/* 804E4EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4ECC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E4ED0  7C 08 03 A6 */	mtlr r0
/* 804E4ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4ED8  4E 80 00 20 */	blr 
