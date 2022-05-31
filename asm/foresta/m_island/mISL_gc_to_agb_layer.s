lbl_803B4638:
/* 803B4638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B463C  7C 08 02 A6 */	mflr r0
/* 803B4640  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4644  39 61 00 20 */	addi r11, r1, 0x20
/* 803B4648  4B CE 68 8D */	bl func_8009AED4
/* 803B464C  7C 7D 1B 78 */	mr r29, r3
/* 803B4650  7C 9E 23 78 */	mr r30, r4
/* 803B4654  3B E0 00 00 */	li r31, 0
lbl_803B4658:
/* 803B4658  7F A3 EB 78 */	mr r3, r29
/* 803B465C  7F C4 F3 78 */	mr r4, r30
/* 803B4660  4B FF FD F9 */	bl mISL_gc_to_agb_fg
/* 803B4664  38 7D 02 00 */	addi r3, r29, 0x200
/* 803B4668  38 9E 02 00 */	addi r4, r30, 0x200
/* 803B466C  38 A0 00 01 */	li r5, 1
/* 803B4670  4B FF FA D1 */	bl mISL_u64
/* 803B4674  38 7D 02 08 */	addi r3, r29, 0x208
/* 803B4678  38 9E 02 08 */	addi r4, r30, 0x208
/* 803B467C  38 A0 00 08 */	li r5, 8
/* 803B4680  4B FF FA 79 */	bl mISL_int
/* 803B4684  3B FF 00 01 */	addi r31, r31, 1
/* 803B4688  3B DE 02 28 */	addi r30, r30, 0x228
/* 803B468C  2C 1F 00 04 */	cmpwi r31, 4
/* 803B4690  3B BD 02 28 */	addi r29, r29, 0x228
/* 803B4694  41 80 FF C4 */	blt lbl_803B4658
/* 803B4698  39 61 00 20 */	addi r11, r1, 0x20
/* 803B469C  4B CE 68 85 */	bl func_8009AF20
/* 803B46A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B46A4  7C 08 03 A6 */	mtlr r0
/* 803B46A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B46AC  4E 80 00 20 */	blr 
