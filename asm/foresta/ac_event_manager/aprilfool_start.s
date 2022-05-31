lbl_8041EB54:
/* 8041EB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EB58  7C 08 02 A6 */	mflr r0
/* 8041EB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EB60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041EB64  3B E0 00 02 */	li r31, 2
/* 8041EB68  93 C1 00 08 */	stw r30, 8(r1)
/* 8041EB6C  7C 9E 23 78 */	mr r30, r4
/* 8041EB70  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8041EB74  2C 00 00 00 */	cmpwi r0, 0
/* 8041EB78  40 82 00 24 */	bne lbl_8041EB9C
/* 8041EB7C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EB80  38 80 00 01 */	li r4, 1
/* 8041EB84  4B F7 EE FD */	bl mEv_clear_status
/* 8041EB88  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EB8C  38 80 00 20 */	li r4, 0x20
/* 8041EB90  4B F7 EE 41 */	bl mEv_set_status
/* 8041EB94  38 60 00 00 */	li r3, 0
/* 8041EB98  48 00 00 2C */	b lbl_8041EBC4
lbl_8041EB9C:
/* 8041EB9C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EBA0  4B F7 F0 4D */	bl mEv_check_keep
/* 8041EBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8041EBA8  40 82 00 10 */	bne lbl_8041EBB8
/* 8041EBAC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EBB0  4B F7 EF D5 */	bl mEv_set_keep
/* 8041EBB4  3B E0 00 01 */	li r31, 1
lbl_8041EBB8:
/* 8041EBB8  38 60 00 E8 */	li r3, 0xe8
/* 8041EBBC  4B FF DA 15 */	bl make_control_actor
/* 8041EBC0  7F E3 FB 78 */	mr r3, r31
lbl_8041EBC4:
/* 8041EBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041EBCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041EBD0  7C 08 03 A6 */	mtlr r0
/* 8041EBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EBD8  4E 80 00 20 */	blr 
