lbl_805D5598:
/* 805D5598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D559C  7C 08 02 A6 */	mflr r0
/* 805D55A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D55A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D55A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805D55AC  7C 7E 1B 78 */	mr r30, r3
/* 805D55B0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805D55B4  81 84 07 68 */	lwz r12, 0x768(r4)
/* 805D55B8  3B E4 07 5C */	addi r31, r4, 0x75c
/* 805D55BC  7D 89 03 A6 */	mtctr r12
/* 805D55C0  4E 80 04 21 */	bctrl 
/* 805D55C4  80 1F 00 04 */	lwz r0, 4(r31)
/* 805D55C8  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CC6D4@ha */
/* 805D55CC  38 A3 C6 D4 */	addi r5, r3, ovl_move_proc@l /* 0x806CC6D4@l */
/* 805D55D0  7F C3 F3 78 */	mr r3, r30
/* 805D55D4  54 00 10 3A */	slwi r0, r0, 2
/* 805D55D8  7F E4 FB 78 */	mr r4, r31
/* 805D55DC  7D 85 00 2E */	lwzx r12, r5, r0
/* 805D55E0  7D 89 03 A6 */	mtctr r12
/* 805D55E4  4E 80 04 21 */	bctrl 
/* 805D55E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D55EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D55F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D55F4  7C 08 03 A6 */	mtlr r0
/* 805D55F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805D55FC  4E 80 00 20 */	blr 
