lbl_8051E600:
/* 8051E600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E604  7C 08 02 A6 */	mflr r0
/* 8051E608  38 60 00 00 */	li r3, 0
/* 8051E60C  38 A0 00 01 */	li r5, 1
/* 8051E610  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E614  38 81 00 08 */	addi r4, r1, 8
/* 8051E618  38 C0 00 00 */	li r6, 0
/* 8051E61C  38 E0 00 00 */	li r7, 0
/* 8051E620  39 00 00 00 */	li r8, 0
/* 8051E624  39 20 00 0C */	li r9, 0xc
/* 8051E628  39 40 00 00 */	li r10, 0
/* 8051E62C  4B EC 9D B1 */	bl mSP_SelectRandomItem_New
/* 8051E630  38 60 00 04 */	li r3, 4
/* 8051E634  38 80 00 01 */	li r4, 1
/* 8051E638  38 A0 00 02 */	li r5, 2
/* 8051E63C  4B E7 9D FD */	bl mDemo_Set_OrderValue
/* 8051E640  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8051E644  38 60 00 05 */	li r3, 5
/* 8051E648  38 80 00 00 */	li r4, 0
/* 8051E64C  4B E7 9D ED */	bl mDemo_Set_OrderValue
/* 8051E650  38 60 00 05 */	li r3, 5
/* 8051E654  38 80 00 01 */	li r4, 1
/* 8051E658  38 A0 00 07 */	li r5, 7
/* 8051E65C  4B E7 9D DD */	bl mDemo_Set_OrderValue
/* 8051E660  38 60 00 05 */	li r3, 5
/* 8051E664  38 80 00 02 */	li r4, 2
/* 8051E668  38 A0 00 00 */	li r5, 0
/* 8051E66C  4B E7 9D CD */	bl mDemo_Set_OrderValue
/* 8051E670  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051E674  A0 81 00 08 */	lhz r4, 8(r1)
/* 8051E678  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051E67C  38 A0 00 00 */	li r5, 0
/* 8051E680  3C 63 00 02 */	addis r3, r3, 2
/* 8051E684  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051E688  4B EC 28 81 */	bl mPr_SetFreePossessionItem
/* 8051E68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E690  7C 08 03 A6 */	mtlr r0
/* 8051E694  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E698  4E 80 00 20 */	blr 
