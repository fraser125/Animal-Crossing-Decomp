lbl_805C7F04:
/* 805C7F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7F08  7C 08 02 A6 */	mflr r0
/* 805C7F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C7F14  93 C1 00 08 */	stw r30, 8(r1)
/* 805C7F18  7C 7E 1B 78 */	mr r30, r3
/* 805C7F1C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C7F20  3B E4 08 34 */	addi r31, r4, 0x834
/* 805C7F24  4B FF F3 FD */	bl mCD_stick_area_check
/* 805C7F28  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 805C7F2C  7F C3 F3 78 */	mr r3, r30
/* 805C7F30  7D 89 03 A6 */	mtctr r12
/* 805C7F34  4E 80 04 21 */	bctrl 
/* 805C7F38  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C7F3C  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806C87F8@ha */
/* 805C7F40  38 A3 87 F8 */	addi r5, r3, ovl_move_proc@l /* 0x806C87F8@l */
/* 805C7F44  7F C3 F3 78 */	mr r3, r30
/* 805C7F48  54 00 10 3A */	slwi r0, r0, 2
/* 805C7F4C  7F E4 FB 78 */	mr r4, r31
/* 805C7F50  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C7F54  7D 89 03 A6 */	mtctr r12
/* 805C7F58  4E 80 04 21 */	bctrl 
/* 805C7F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C7F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C7F68  7C 08 03 A6 */	mtlr r0
/* 805C7F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7F70  4E 80 00 20 */	blr 
