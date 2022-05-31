lbl_8041FE58:
/* 8041FE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041FE5C  7C 08 02 A6 */	mflr r0
/* 8041FE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041FE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041FE68  3B E0 00 02 */	li r31, 2
/* 8041FE6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8041FE70  7C 9E 23 78 */	mr r30, r4
/* 8041FE74  80 64 00 00 */	lwz r3, 0(r4)
/* 8041FE78  4B F7 DD 75 */	bl mEv_check_keep
/* 8041FE7C  2C 03 00 00 */	cmpwi r3, 0
/* 8041FE80  41 82 00 10 */	beq lbl_8041FE90
/* 8041FE84  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FE88  4B F7 DD 31 */	bl mEv_clear_keep
/* 8041FE8C  3B E0 00 01 */	li r31, 1
lbl_8041FE90:
/* 8041FE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041FE94  7F E3 FB 78 */	mr r3, r31
/* 8041FE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041FE9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041FEA0  7C 08 03 A6 */	mtlr r0
/* 8041FEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041FEA8  4E 80 00 20 */	blr 
