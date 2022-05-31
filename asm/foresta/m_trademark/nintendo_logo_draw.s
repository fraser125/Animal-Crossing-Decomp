lbl_8062BA54:
/* 8062BA54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062BA58  7C 08 02 A6 */	mflr r0
/* 8062BA5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062BA60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062BA64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062BA68  7C 7E 1B 78 */	mr r30, r3
/* 8062BA6C  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062BA70  4B FF FF 65 */	bl nintendo_logo_move
/* 8062BA74  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 8062BA78  3C 9E 00 02 */	addis r4, r30, 2
/* 8062BA7C  38 61 00 08 */	addi r3, r1, 8
/* 8062BA80  90 01 00 08 */	stw r0, 8(r1)
/* 8062BA84  A0 04 5A 5E */	lhz r0, 0x5a5e(r4)
/* 8062BA88  7C 00 46 70 */	srawi r0, r0, 8
/* 8062BA8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8062BA90  4B 9D B8 B9 */	bl make_dl_nintendo_logo
/* 8062BA94  80 01 00 08 */	lwz r0, 8(r1)
/* 8062BA98  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8062BA9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062BAA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062BAA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062BAA8  7C 08 03 A6 */	mtlr r0
/* 8062BAAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8062BAB0  4E 80 00 20 */	blr 
