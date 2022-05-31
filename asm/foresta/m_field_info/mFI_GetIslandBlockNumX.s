lbl_803A64D8:
/* 803A64D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A64DC  7C 08 02 A6 */	mflr r0
/* 803A64E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A64E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A64E8  4B CF 49 ED */	bl func_8009AED4
/* 803A64EC  3C 80 80 65 */	lis r4, g_block_kind_p@ha /* 0x80653D20@ha */
/* 803A64F0  7C 7D 1B 79 */	or. r29, r3, r3
/* 803A64F4  83 E4 3D 20 */	lwz r31, g_block_kind_p@l(r4)  /* 0x80653D20@l */
/* 803A64F8  3B C0 00 00 */	li r30, 0
/* 803A64FC  41 82 00 58 */	beq lbl_803A6554
/* 803A6500  28 1F 00 00 */	cmplwi r31, 0
/* 803A6504  41 82 00 50 */	beq lbl_803A6554
/* 803A6508  38 80 00 08 */	li r4, 8
/* 803A650C  4B CB 6B 5D */	bl bzero
/* 803A6510  38 00 00 07 */	li r0, 7
/* 803A6514  38 80 00 00 */	li r4, 0
/* 803A6518  7C 09 03 A6 */	mtctr r0
/* 803A651C  3B FF 00 E0 */	addi r31, r31, 0xe0
lbl_803A6520:
/* 803A6520  80 1F 00 00 */	lwz r0, 0(r31)
/* 803A6524  54 03 02 94 */	rlwinm r3, r0, 0, 0xa, 0xa
/* 803A6528  3C 03 FF E0 */	addis r0, r3, 0xffe0
/* 803A652C  28 00 00 00 */	cmplwi r0, 0
/* 803A6530  40 82 00 10 */	bne lbl_803A6540
/* 803A6534  90 9D 00 00 */	stw r4, 0(r29)
/* 803A6538  3B BD 00 04 */	addi r29, r29, 4
/* 803A653C  3B DE 00 01 */	addi r30, r30, 1
lbl_803A6540:
/* 803A6540  2C 1E 00 02 */	cmpwi r30, 2
/* 803A6544  40 80 00 10 */	bge lbl_803A6554
/* 803A6548  3B FF 00 04 */	addi r31, r31, 4
/* 803A654C  38 84 00 01 */	addi r4, r4, 1
/* 803A6550  42 00 FF D0 */	bdnz lbl_803A6520
lbl_803A6554:
/* 803A6554  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6558  4B CF 49 C9 */	bl func_8009AF20
/* 803A655C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6560  7C 08 03 A6 */	mtlr r0
/* 803A6564  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6568  4E 80 00 20 */	blr 
