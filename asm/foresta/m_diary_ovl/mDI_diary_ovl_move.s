lbl_805D0578:
/* 805D0578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D057C  7C 08 02 A6 */	mflr r0
/* 805D0580  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D0584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D0588  93 C1 00 08 */	stw r30, 8(r1)
/* 805D058C  7C 7E 1B 78 */	mr r30, r3
/* 805D0590  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805D0594  81 84 07 F8 */	lwz r12, 0x7f8(r4)
/* 805D0598  3B E4 07 EC */	addi r31, r4, 0x7ec
/* 805D059C  7D 89 03 A6 */	mtctr r12
/* 805D05A0  4E 80 04 21 */	bctrl 
/* 805D05A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 805D05A8  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CB99C@ha */
/* 805D05AC  38 A3 B9 9C */	addi r5, r3, ovl_move_proc@l /* 0x806CB99C@l */
/* 805D05B0  7F C3 F3 78 */	mr r3, r30
/* 805D05B4  54 00 10 3A */	slwi r0, r0, 2
/* 805D05B8  7F E4 FB 78 */	mr r4, r31
/* 805D05BC  7D 85 00 2E */	lwzx r12, r5, r0
/* 805D05C0  7D 89 03 A6 */	mtctr r12
/* 805D05C4  4E 80 04 21 */	bctrl 
/* 805D05C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D05CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D05D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D05D4  7C 08 03 A6 */	mtlr r0
/* 805D05D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805D05DC  4E 80 00 20 */	blr 
