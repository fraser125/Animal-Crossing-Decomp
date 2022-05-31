lbl_803B422C:
/* 803B422C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B4230  7C 08 02 A6 */	mflr r0
/* 803B4234  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4238  39 61 00 20 */	addi r11, r1, 0x20
/* 803B423C  4B CE 6C 99 */	bl func_8009AED4
/* 803B4240  7C BF 2B 78 */	mr r31, r5
/* 803B4244  7C 7D 1B 78 */	mr r29, r3
/* 803B4248  2C 1F FF FF */	cmpwi r31, -1
/* 803B424C  7C 9E 23 78 */	mr r30, r4
/* 803B4250  41 82 00 40 */	beq lbl_803B4290
/* 803B4254  28 1D 00 00 */	cmplwi r29, 0
/* 803B4258  41 82 00 38 */	beq lbl_803B4290
/* 803B425C  28 1E 00 00 */	cmplwi r30, 0
/* 803B4260  41 82 00 30 */	beq lbl_803B4290
/* 803B4264  38 60 00 20 */	li r3, 0x20
/* 803B4268  4B C5 29 6D */	bl JW_GetAramAddress
/* 803B426C  57 E0 60 26 */	slwi r0, r31, 0xc
/* 803B4270  7F C4 F3 78 */	mr r4, r30
/* 803B4274  7C 63 02 14 */	add r3, r3, r0
/* 803B4278  38 A0 10 00 */	li r5, 0x1000
/* 803B427C  4B C5 29 F9 */	bl _JW_GetResourceAram
/* 803B4280  7F A3 EB 78 */	mr r3, r29
/* 803B4284  7F C4 F3 78 */	mr r4, r30
/* 803B4288  38 A0 04 00 */	li r5, 0x400
/* 803B428C  4B FF FE 6D */	bl mISL_int
lbl_803B4290:
/* 803B4290  39 61 00 20 */	addi r11, r1, 0x20
/* 803B4294  4B CE 6C 8D */	bl func_8009AF20
/* 803B4298  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B429C  7C 08 03 A6 */	mtlr r0
/* 803B42A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B42A4  4E 80 00 20 */	blr 
