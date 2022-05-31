lbl_8060CFA4:
/* 8060CFA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060CFA8  7C 08 02 A6 */	mflr r0
/* 8060CFAC  7C E8 3B 78 */	mr r8, r7
/* 8060CFB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060CFB4  38 00 00 00 */	li r0, 0
/* 8060CFB8  38 E1 00 10 */	addi r7, r1, 0x10
/* 8060CFBC  81 23 00 00 */	lwz r9, 0(r3)
/* 8060CFC0  81 83 00 04 */	lwz r12, 4(r3)
/* 8060CFC4  81 43 00 08 */	lwz r10, 8(r3)
/* 8060CFC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060CFCC  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8060CFD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060CFD4  3D 63 00 02 */	addis r11, r3, 2
/* 8060CFD8  38 A0 00 00 */	li r5, 0
/* 8060CFDC  91 21 00 14 */	stw r9, 0x14(r1)
/* 8060CFE0  7C 89 23 78 */	mr r9, r4
/* 8060CFE4  38 81 00 14 */	addi r4, r1, 0x14
/* 8060CFE8  38 60 00 04 */	li r3, 4
/* 8060CFEC  91 41 00 1C */	stw r10, 0x1c(r1)
/* 8060CFF0  39 40 00 00 */	li r10, 0
/* 8060CFF4  91 81 00 18 */	stw r12, 0x18(r1)
/* 8060CFF8  90 01 00 08 */	stw r0, 8(r1)
/* 8060CFFC  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8060D000  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060D004  7D 89 03 A6 */	mtctr r12
/* 8060D008  4E 80 04 21 */	bctrl 
/* 8060D00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060D010  7C 08 03 A6 */	mtlr r0
/* 8060D014  38 21 00 20 */	addi r1, r1, 0x20
/* 8060D018  4E 80 00 20 */	blr 
