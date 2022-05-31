lbl_803B4588:
/* 803B4588  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B458C  7C 08 02 A6 */	mflr r0
/* 803B4590  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4594  39 61 00 20 */	addi r11, r1, 0x20
/* 803B4598  4B CE 69 3D */	bl func_8009AED4
/* 803B459C  7C 7D 1B 78 */	mr r29, r3
/* 803B45A0  7C 9E 23 78 */	mr r30, r4
/* 803B45A4  3B E0 00 00 */	li r31, 0
lbl_803B45A8:
/* 803B45A8  7F A3 EB 78 */	mr r3, r29
/* 803B45AC  7F C4 F3 78 */	mr r4, r30
/* 803B45B0  4B FF FE CD */	bl mISL_gc_to_agb_fg2
/* 803B45B4  3B FF 00 01 */	addi r31, r31, 1
/* 803B45B8  3B DE 02 00 */	addi r30, r30, 0x200
/* 803B45BC  2C 1F 00 02 */	cmpwi r31, 2
/* 803B45C0  3B BD 02 00 */	addi r29, r29, 0x200
/* 803B45C4  41 80 FF E4 */	blt lbl_803B45A8
/* 803B45C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B45CC  4B CE 69 55 */	bl func_8009AF20
/* 803B45D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B45D4  7C 08 03 A6 */	mtlr r0
/* 803B45D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B45DC  4E 80 00 20 */	blr 
