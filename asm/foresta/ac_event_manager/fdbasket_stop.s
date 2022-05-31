lbl_8041FFB8:
/* 8041FFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041FFBC  7C 08 02 A6 */	mflr r0
/* 8041FFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041FFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041FFC8  3B E0 00 02 */	li r31, 2
/* 8041FFCC  93 C1 00 08 */	stw r30, 8(r1)
/* 8041FFD0  7C 9E 23 78 */	mr r30, r4
/* 8041FFD4  80 64 00 00 */	lwz r3, 0(r4)
/* 8041FFD8  4B F7 DC 15 */	bl mEv_check_keep
/* 8041FFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8041FFE0  41 82 00 10 */	beq lbl_8041FFF0
/* 8041FFE4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FFE8  4B F7 DB D1 */	bl mEv_clear_keep
/* 8041FFEC  3B E0 00 01 */	li r31, 1
lbl_8041FFF0:
/* 8041FFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041FFF4  7F E3 FB 78 */	mr r3, r31
/* 8041FFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041FFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80420000  7C 08 03 A6 */	mtlr r0
/* 80420004  38 21 00 10 */	addi r1, r1, 0x10
/* 80420008  4E 80 00 20 */	blr 
