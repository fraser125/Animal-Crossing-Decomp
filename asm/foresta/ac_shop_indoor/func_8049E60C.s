lbl_8049E60C:
/* 8049E60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049E610  7C 08 02 A6 */	mflr r0
/* 8049E614  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049E618  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E61C  4B BF C8 B5 */	bl func_8009AED0
/* 8049E620  3B A3 01 80 */	addi r29, r3, 0x180
/* 8049E624  3B C3 01 88 */	addi r30, r3, 0x188
/* 8049E628  3B 80 00 00 */	li r28, 0
/* 8049E62C  3B E0 00 00 */	li r31, 0
lbl_8049E630:
/* 8049E630  38 60 10 20 */	li r3, 0x1020
/* 8049E634  38 80 00 20 */	li r4, 0x20
/* 8049E638  4B F1 DD F1 */	bl func_803BC428
/* 8049E63C  3B 9C 00 01 */	addi r28, r28, 1
/* 8049E640  7C 7E F9 2E */	stwx r3, r30, r31
/* 8049E644  2C 1C 00 02 */	cmpwi r28, 2
/* 8049E648  3B FF 00 04 */	addi r31, r31, 4
/* 8049E64C  41 80 FF E4 */	blt lbl_8049E630
/* 8049E650  3B C0 00 00 */	li r30, 0
/* 8049E654  3B E0 00 00 */	li r31, 0
lbl_8049E658:
/* 8049E658  38 60 20 20 */	li r3, 0x2020
/* 8049E65C  38 80 00 20 */	li r4, 0x20
/* 8049E660  4B F1 DD C9 */	bl func_803BC428
/* 8049E664  3B DE 00 01 */	addi r30, r30, 1
/* 8049E668  7C 7D F9 2E */	stwx r3, r29, r31
/* 8049E66C  2C 1E 00 02 */	cmpwi r30, 2
/* 8049E670  3B FF 00 04 */	addi r31, r31, 4
/* 8049E674  41 80 FF E4 */	blt lbl_8049E658
/* 8049E678  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E67C  4B BF C8 A1 */	bl func_8009AF1C
/* 8049E680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049E684  7C 08 03 A6 */	mtlr r0
/* 8049E688  38 21 00 20 */	addi r1, r1, 0x20
/* 8049E68C  4E 80 00 20 */	blr 
