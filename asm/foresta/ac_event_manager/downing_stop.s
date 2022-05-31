lbl_8041EAB0:
/* 8041EAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EAB4  7C 08 02 A6 */	mflr r0
/* 8041EAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041EAC0  3B E0 00 02 */	li r31, 2
/* 8041EAC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8041EAC8  7C 9E 23 78 */	mr r30, r4
/* 8041EACC  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EAD0  4B F7 F1 1D */	bl mEv_check_keep
/* 8041EAD4  2C 03 00 00 */	cmpwi r3, 0
/* 8041EAD8  41 82 00 10 */	beq lbl_8041EAE8
/* 8041EADC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EAE0  4B F7 F0 D9 */	bl mEv_clear_keep
/* 8041EAE4  3B E0 00 01 */	li r31, 1
lbl_8041EAE8:
/* 8041EAE8  3C 60 81 1D */	lis r3, wpppp@ha /* 0x811CB95C@ha */
/* 8041EAEC  38 00 00 00 */	li r0, 0
/* 8041EAF0  38 83 B9 5C */	addi r4, r3, wpppp@l /* 0x811CB95C@l */
/* 8041EAF4  7F E3 FB 78 */	mr r3, r31
/* 8041EAF8  90 04 00 00 */	stw r0, 0(r4)
/* 8041EAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041EB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041EB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EB08  7C 08 03 A6 */	mtlr r0
/* 8041EB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EB10  4E 80 00 20 */	blr 
