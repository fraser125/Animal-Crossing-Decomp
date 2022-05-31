lbl_804FDD4C:
/* 804FDD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDD50  7C 08 02 A6 */	mflr r0
/* 804FDD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDD5C  7C 9F 23 78 */	mr r31, r4
/* 804FDD60  7F E5 FB 78 */	mr r5, r31
/* 804FDD64  38 80 00 4D */	li r4, 0x4d
/* 804FDD68  93 C1 00 08 */	stw r30, 8(r1)
/* 804FDD6C  7C 7E 1B 78 */	mr r30, r3
/* 804FDD70  4B FD C6 E9 */	bl Player_actor_check_request_main_able
/* 804FDD74  2C 03 00 00 */	cmpwi r3, 0
/* 804FDD78  41 82 00 1C */	beq lbl_804FDD94
/* 804FDD7C  7F C3 F3 78 */	mr r3, r30
/* 804FDD80  7F E5 FB 78 */	mr r5, r31
/* 804FDD84  38 80 00 4D */	li r4, 0x4d
/* 804FDD88  4B FD 72 8D */	bl Player_actor_request_main_index
/* 804FDD8C  38 60 00 01 */	li r3, 1
/* 804FDD90  48 00 00 08 */	b lbl_804FDD98
lbl_804FDD94:
/* 804FDD94  38 60 00 00 */	li r3, 0
lbl_804FDD98:
/* 804FDD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDDA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FDDA4  7C 08 03 A6 */	mtlr r0
/* 804FDDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDDAC  4E 80 00 20 */	blr 
