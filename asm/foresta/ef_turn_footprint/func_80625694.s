lbl_80625694:
/* 80625694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80625698  7C 08 02 A6 */	mflr r0
/* 8062569C  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 806256A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806256A4  38 00 00 00 */	li r0, 0
/* 806256A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806256AC  83 E3 00 00 */	lwz r31, 0(r3)
/* 806256B0  81 43 00 04 */	lwz r10, 4(r3)
/* 806256B4  81 83 00 08 */	lwz r12, 8(r3)
/* 806256B8  38 69 85 38 */	addi r3, r9, common_data@l /* 0x81138538@l */
/* 806256BC  B0 A1 00 12 */	sth r5, 0x12(r1)
/* 806256C0  3D 63 00 02 */	addis r11, r3, 2
/* 806256C4  7C 89 23 78 */	mr r9, r4
/* 806256C8  38 81 00 14 */	addi r4, r1, 0x14
/* 806256CC  B1 01 00 10 */	sth r8, 0x10(r1)
/* 806256D0  7C E8 3B 78 */	mr r8, r7
/* 806256D4  38 E1 00 10 */	addi r7, r1, 0x10
/* 806256D8  38 60 00 2D */	li r3, 0x2d
/* 806256DC  91 41 00 18 */	stw r10, 0x18(r1)
/* 806256E0  38 A0 00 00 */	li r5, 0
/* 806256E4  39 40 00 00 */	li r10, 0
/* 806256E8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 806256EC  91 81 00 1C */	stw r12, 0x1c(r1)
/* 806256F0  90 01 00 08 */	stw r0, 8(r1)
/* 806256F4  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 806256F8  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 806256FC  7D 89 03 A6 */	mtctr r12
/* 80625700  4E 80 04 21 */	bctrl 
/* 80625704  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80625708  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062570C  7C 08 03 A6 */	mtlr r0
/* 80625710  38 21 00 30 */	addi r1, r1, 0x30
/* 80625714  4E 80 00 20 */	blr 
