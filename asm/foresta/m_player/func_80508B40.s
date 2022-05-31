lbl_80508B40:
/* 80508B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508B44  7C 08 02 A6 */	mflr r0
/* 80508B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80508B50  7C 9F 23 78 */	mr r31, r4
/* 80508B54  7F E5 FB 78 */	mr r5, r31
/* 80508B58  38 80 00 78 */	li r4, 0x78
/* 80508B5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80508B60  7C 7E 1B 78 */	mr r30, r3
/* 80508B64  4B FD 18 F5 */	bl Player_actor_check_request_main_able
/* 80508B68  2C 03 00 00 */	cmpwi r3, 0
/* 80508B6C  41 82 00 1C */	beq lbl_80508B88
/* 80508B70  7F C3 F3 78 */	mr r3, r30
/* 80508B74  7F E5 FB 78 */	mr r5, r31
/* 80508B78  38 80 00 78 */	li r4, 0x78
/* 80508B7C  4B FC C4 99 */	bl Player_actor_request_main_index
/* 80508B80  38 60 00 01 */	li r3, 1
/* 80508B84  48 00 00 08 */	b lbl_80508B8C
lbl_80508B88:
/* 80508B88  38 60 00 00 */	li r3, 0
lbl_80508B8C:
/* 80508B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80508B94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80508B98  7C 08 03 A6 */	mtlr r0
/* 80508B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80508BA0  4E 80 00 20 */	blr 
