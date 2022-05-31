lbl_80502E38:
/* 80502E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502E3C  7C 08 02 A6 */	mflr r0
/* 80502E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80502E48  7C 9F 23 78 */	mr r31, r4
/* 80502E4C  7F E5 FB 78 */	mr r5, r31
/* 80502E50  38 80 00 61 */	li r4, 0x61
/* 80502E54  93 C1 00 08 */	stw r30, 8(r1)
/* 80502E58  7C 7E 1B 78 */	mr r30, r3
/* 80502E5C  4B FD 75 FD */	bl Player_actor_check_request_main_able
/* 80502E60  2C 03 00 00 */	cmpwi r3, 0
/* 80502E64  41 82 00 1C */	beq lbl_80502E80
/* 80502E68  7F C3 F3 78 */	mr r3, r30
/* 80502E6C  7F E5 FB 78 */	mr r5, r31
/* 80502E70  38 80 00 61 */	li r4, 0x61
/* 80502E74  4B FD 21 A1 */	bl Player_actor_request_main_index
/* 80502E78  38 60 00 01 */	li r3, 1
/* 80502E7C  48 00 00 08 */	b lbl_80502E84
lbl_80502E80:
/* 80502E80  38 60 00 00 */	li r3, 0
lbl_80502E84:
/* 80502E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80502E8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80502E90  7C 08 03 A6 */	mtlr r0
/* 80502E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80502E98  4E 80 00 20 */	blr 
