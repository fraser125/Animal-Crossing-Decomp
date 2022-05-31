lbl_80504F2C:
/* 80504F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504F30  7C 08 02 A6 */	mflr r0
/* 80504F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504F3C  7C 9F 23 78 */	mr r31, r4
/* 80504F40  7F E5 FB 78 */	mr r5, r31
/* 80504F44  38 80 00 69 */	li r4, 0x69
/* 80504F48  93 C1 00 08 */	stw r30, 8(r1)
/* 80504F4C  7C 7E 1B 78 */	mr r30, r3
/* 80504F50  4B FD 55 09 */	bl Player_actor_check_request_main_able
/* 80504F54  2C 03 00 00 */	cmpwi r3, 0
/* 80504F58  41 82 00 1C */	beq lbl_80504F74
/* 80504F5C  7F C3 F3 78 */	mr r3, r30
/* 80504F60  7F E5 FB 78 */	mr r5, r31
/* 80504F64  38 80 00 69 */	li r4, 0x69
/* 80504F68  4B FD 00 AD */	bl Player_actor_request_main_index
/* 80504F6C  38 60 00 01 */	li r3, 1
/* 80504F70  48 00 00 08 */	b lbl_80504F78
lbl_80504F74:
/* 80504F74  38 60 00 00 */	li r3, 0
lbl_80504F78:
/* 80504F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80504F80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80504F84  7C 08 03 A6 */	mtlr r0
/* 80504F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80504F8C  4E 80 00 20 */	blr 
