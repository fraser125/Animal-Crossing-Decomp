lbl_80421EE0:
/* 80421EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421EE4  7C 08 02 A6 */	mflr r0
/* 80421EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80421EF0  3B E0 00 02 */	li r31, 2
/* 80421EF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80421EF8  7C 9E 23 78 */	mr r30, r4
/* 80421EFC  80 64 00 00 */	lwz r3, 0(r4)
/* 80421F00  4B F7 BC ED */	bl mEv_check_keep
/* 80421F04  2C 03 00 00 */	cmpwi r3, 0
/* 80421F08  41 82 00 10 */	beq lbl_80421F18
/* 80421F0C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421F10  4B F7 BC A9 */	bl mEv_clear_keep
/* 80421F14  3B E0 00 01 */	li r31, 1
lbl_80421F18:
/* 80421F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421F1C  7F E3 FB 78 */	mr r3, r31
/* 80421F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421F24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80421F28  7C 08 03 A6 */	mtlr r0
/* 80421F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80421F30  4E 80 00 20 */	blr 
