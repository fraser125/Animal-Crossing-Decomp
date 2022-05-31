lbl_805E7EF0:
/* 805E7EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E7EF4  7C 08 02 A6 */	mflr r0
/* 805E7EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E7EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E7F00  93 C1 00 08 */	stw r30, 8(r1)
/* 805E7F04  7C 7E 1B 78 */	mr r30, r3
/* 805E7F08  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E7F0C  81 84 02 A0 */	lwz r12, 0x2a0(r4)
/* 805E7F10  3B E4 02 94 */	addi r31, r4, 0x294
/* 805E7F14  7D 89 03 A6 */	mtctr r12
/* 805E7F18  4E 80 04 21 */	bctrl 
/* 805E7F1C  80 1F 00 04 */	lwz r0, 4(r31)
/* 805E7F20  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CE1D0@ha */
/* 805E7F24  38 A3 E1 D0 */	addi r5, r3, ovl_move_proc@l /* 0x806CE1D0@l */
/* 805E7F28  7F C3 F3 78 */	mr r3, r30
/* 805E7F2C  54 00 10 3A */	slwi r0, r0, 2
/* 805E7F30  7F E4 FB 78 */	mr r4, r31
/* 805E7F34  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E7F38  7D 89 03 A6 */	mtctr r12
/* 805E7F3C  4E 80 04 21 */	bctrl 
/* 805E7F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E7F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E7F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E7F4C  7C 08 03 A6 */	mtlr r0
/* 805E7F50  38 21 00 10 */	addi r1, r1, 0x10
/* 805E7F54  4E 80 00 20 */	blr 
