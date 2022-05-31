lbl_804F4BE8:
/* 804F4BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4BEC  7C 08 02 A6 */	mflr r0
/* 804F4BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4BF8  7C 9F 23 78 */	mr r31, r4
/* 804F4BFC  7F E5 FB 78 */	mr r5, r31
/* 804F4C00  38 80 00 31 */	li r4, 0x31
/* 804F4C04  93 C1 00 08 */	stw r30, 8(r1)
/* 804F4C08  7C 7E 1B 78 */	mr r30, r3
/* 804F4C0C  4B FE 58 4D */	bl Player_actor_check_request_main_able
/* 804F4C10  2C 03 00 00 */	cmpwi r3, 0
/* 804F4C14  41 82 00 1C */	beq lbl_804F4C30
/* 804F4C18  7F C3 F3 78 */	mr r3, r30
/* 804F4C1C  7F E5 FB 78 */	mr r5, r31
/* 804F4C20  38 80 00 31 */	li r4, 0x31
/* 804F4C24  4B FE 03 F1 */	bl Player_actor_request_main_index
/* 804F4C28  38 60 00 01 */	li r3, 1
/* 804F4C2C  48 00 00 08 */	b lbl_804F4C34
lbl_804F4C30:
/* 804F4C30  38 60 00 00 */	li r3, 0
lbl_804F4C34:
/* 804F4C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F4C40  7C 08 03 A6 */	mtlr r0
/* 804F4C44  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4C48  4E 80 00 20 */	blr 
