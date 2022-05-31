lbl_805C489C:
/* 805C489C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C48A0  7C 08 02 A6 */	mflr r0
/* 805C48A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C48A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C48AC  93 C1 00 08 */	stw r30, 8(r1)
/* 805C48B0  7C 7E 1B 78 */	mr r30, r3
/* 805C48B4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C48B8  81 84 02 E8 */	lwz r12, 0x2e8(r4)
/* 805C48BC  3B E4 02 DC */	addi r31, r4, 0x2dc
/* 805C48C0  7D 89 03 A6 */	mtctr r12
/* 805C48C4  4E 80 04 21 */	bctrl 
/* 805C48C8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C48CC  3C 60 80 6C */	lis r3, ovl_move_proc@ha /* 0x806C7AE8@ha */
/* 805C48D0  38 A3 7A E8 */	addi r5, r3, ovl_move_proc@l /* 0x806C7AE8@l */
/* 805C48D4  7F C3 F3 78 */	mr r3, r30
/* 805C48D8  54 00 10 3A */	slwi r0, r0, 2
/* 805C48DC  7F E4 FB 78 */	mr r4, r31
/* 805C48E0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C48E4  7D 89 03 A6 */	mtctr r12
/* 805C48E8  4E 80 04 21 */	bctrl 
/* 805C48EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C48F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C48F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C48F8  7C 08 03 A6 */	mtlr r0
/* 805C48FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C4900  4E 80 00 20 */	blr 
