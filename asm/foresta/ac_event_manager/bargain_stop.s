lbl_8041E6C8:
/* 8041E6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E6CC  7C 08 02 A6 */	mflr r0
/* 8041E6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E6D8  3B E0 00 02 */	li r31, 2
/* 8041E6DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E6E0  7C 9E 23 78 */	mr r30, r4
/* 8041E6E4  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E6E8  4B F7 F5 05 */	bl mEv_check_keep
/* 8041E6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8041E6F0  41 82 00 10 */	beq lbl_8041E700
/* 8041E6F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E6F8  4B F7 F4 C1 */	bl mEv_clear_keep
/* 8041E6FC  3B E0 00 01 */	li r31, 1
lbl_8041E700:
/* 8041E700  38 60 00 00 */	li r3, 0
/* 8041E704  4B F7 C2 C5 */	bl mEv_EventOFF
/* 8041E708  4B F8 01 15 */	bl mEv_make_new_special_event
/* 8041E70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E710  7F E3 FB 78 */	mr r3, r31
/* 8041E714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E718  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041E71C  7C 08 03 A6 */	mtlr r0
/* 8041E720  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E724  4E 80 00 20 */	blr 
