lbl_8041EBDC:
/* 8041EBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EBE0  7C 08 02 A6 */	mflr r0
/* 8041EBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EBE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041EBEC  3B E0 00 02 */	li r31, 2
/* 8041EBF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8041EBF4  7C 9E 23 78 */	mr r30, r4
/* 8041EBF8  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EBFC  4B F7 EF F1 */	bl mEv_check_keep
/* 8041EC00  2C 03 00 00 */	cmpwi r3, 0
/* 8041EC04  41 82 00 10 */	beq lbl_8041EC14
/* 8041EC08  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EC0C  4B F7 EF AD */	bl mEv_clear_keep
/* 8041EC10  3B E0 00 01 */	li r31, 1
lbl_8041EC14:
/* 8041EC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EC18  7F E3 FB 78 */	mr r3, r31
/* 8041EC1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041EC20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041EC24  7C 08 03 A6 */	mtlr r0
/* 8041EC28  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EC2C  4E 80 00 20 */	blr 
