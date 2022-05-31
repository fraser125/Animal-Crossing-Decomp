lbl_804F5F28:
/* 804F5F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5F2C  7C 08 02 A6 */	mflr r0
/* 804F5F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5F38  7C 9F 23 78 */	mr r31, r4
/* 804F5F3C  7F E5 FB 78 */	mr r5, r31
/* 804F5F40  38 80 00 36 */	li r4, 0x36
/* 804F5F44  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5F48  7C 7E 1B 78 */	mr r30, r3
/* 804F5F4C  4B FE 45 0D */	bl Player_actor_check_request_main_able
/* 804F5F50  2C 03 00 00 */	cmpwi r3, 0
/* 804F5F54  41 82 00 1C */	beq lbl_804F5F70
/* 804F5F58  7F C3 F3 78 */	mr r3, r30
/* 804F5F5C  7F E5 FB 78 */	mr r5, r31
/* 804F5F60  38 80 00 36 */	li r4, 0x36
/* 804F5F64  4B FD F0 B1 */	bl Player_actor_request_main_index
/* 804F5F68  38 60 00 01 */	li r3, 1
/* 804F5F6C  48 00 00 08 */	b lbl_804F5F74
lbl_804F5F70:
/* 804F5F70  38 60 00 00 */	li r3, 0
lbl_804F5F74:
/* 804F5F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5F7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5F80  7C 08 03 A6 */	mtlr r0
/* 804F5F84  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5F88  4E 80 00 20 */	blr 
