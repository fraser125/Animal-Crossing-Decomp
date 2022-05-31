lbl_804F1F24:
/* 804F1F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1F28  7C 08 02 A6 */	mflr r0
/* 804F1F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F1F34  7C 9F 23 78 */	mr r31, r4
/* 804F1F38  7F E5 FB 78 */	mr r5, r31
/* 804F1F3C  38 80 00 2A */	li r4, 0x2a
/* 804F1F40  93 C1 00 08 */	stw r30, 8(r1)
/* 804F1F44  7C 7E 1B 78 */	mr r30, r3
/* 804F1F48  4B FE 85 11 */	bl Player_actor_check_request_main_able
/* 804F1F4C  2C 03 00 00 */	cmpwi r3, 0
/* 804F1F50  41 82 00 1C */	beq lbl_804F1F6C
/* 804F1F54  7F C3 F3 78 */	mr r3, r30
/* 804F1F58  7F E5 FB 78 */	mr r5, r31
/* 804F1F5C  38 80 00 2A */	li r4, 0x2a
/* 804F1F60  4B FE 30 B5 */	bl Player_actor_request_main_index
/* 804F1F64  38 60 00 01 */	li r3, 1
/* 804F1F68  48 00 00 08 */	b lbl_804F1F70
lbl_804F1F6C:
/* 804F1F6C  38 60 00 00 */	li r3, 0
lbl_804F1F70:
/* 804F1F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F1F78  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F1F7C  7C 08 03 A6 */	mtlr r0
/* 804F1F80  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1F84  4E 80 00 20 */	blr 
