lbl_804F5B9C:
/* 804F5B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5BA0  7C 08 02 A6 */	mflr r0
/* 804F5BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5BAC  7C 9F 23 78 */	mr r31, r4
/* 804F5BB0  7F E5 FB 78 */	mr r5, r31
/* 804F5BB4  38 80 00 35 */	li r4, 0x35
/* 804F5BB8  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5BBC  7C 7E 1B 78 */	mr r30, r3
/* 804F5BC0  4B FE 48 99 */	bl Player_actor_check_request_main_able
/* 804F5BC4  2C 03 00 00 */	cmpwi r3, 0
/* 804F5BC8  41 82 00 1C */	beq lbl_804F5BE4
/* 804F5BCC  7F C3 F3 78 */	mr r3, r30
/* 804F5BD0  7F E5 FB 78 */	mr r5, r31
/* 804F5BD4  38 80 00 35 */	li r4, 0x35
/* 804F5BD8  4B FD F4 3D */	bl Player_actor_request_main_index
/* 804F5BDC  38 60 00 01 */	li r3, 1
/* 804F5BE0  48 00 00 08 */	b lbl_804F5BE8
lbl_804F5BE4:
/* 804F5BE4  38 60 00 00 */	li r3, 0
lbl_804F5BE8:
/* 804F5BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5BF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5BF4  7C 08 03 A6 */	mtlr r0
/* 804F5BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5BFC  4E 80 00 20 */	blr 
