lbl_8041E670:
/* 8041E670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E674  7C 08 02 A6 */	mflr r0
/* 8041E678  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E680  7C 9F 23 78 */	mr r31, r4
/* 8041E684  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E688  4B F7 F5 65 */	bl mEv_check_keep
/* 8041E68C  2C 03 00 00 */	cmpwi r3, 0
/* 8041E690  40 82 00 14 */	bne lbl_8041E6A4
/* 8041E694  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041E698  4B F7 F4 ED */	bl mEv_set_keep
/* 8041E69C  3B E0 00 01 */	li r31, 1
/* 8041E6A0  48 00 00 08 */	b lbl_8041E6A8
lbl_8041E6A4:
/* 8041E6A4  3B E0 00 02 */	li r31, 2
lbl_8041E6A8:
/* 8041E6A8  38 60 00 00 */	li r3, 0
/* 8041E6AC  4B F7 C2 CD */	bl mEv_EventON
/* 8041E6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E6B4  7F E3 FB 78 */	mr r3, r31
/* 8041E6B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E6BC  7C 08 03 A6 */	mtlr r0
/* 8041E6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E6C4  4E 80 00 20 */	blr 
