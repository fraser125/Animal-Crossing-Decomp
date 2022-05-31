lbl_8039E414:
/* 8039E414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039E418  7C 08 02 A6 */	mflr r0
/* 8039E41C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039E420  39 61 00 20 */	addi r11, r1, 0x20
/* 8039E424  4B CF CA AD */	bl func_8009AED0
/* 8039E428  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039E42C  3B 80 00 00 */	li r28, 0
/* 8039E430  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039E434  3B E0 00 00 */	li r31, 0
/* 8039E438  3F A3 00 03 */	addis r29, r3, 3
/* 8039E43C  3B C0 00 01 */	li r30, 1
/* 8039E440  3B BD 85 C8 */	addi r29, r29, -31288
lbl_8039E444:
/* 8039E444  A8 1D 01 0A */	lha r0, 0x10a(r29)
/* 8039E448  7F C3 E0 30 */	slw r3, r30, r28
/* 8039E44C  7C 60 00 39 */	and. r0, r3, r0
/* 8039E450  41 82 00 34 */	beq lbl_8039E484
/* 8039E454  38 FF 01 14 */	addi r7, r31, 0x114
/* 8039E458  7C FD 3A 14 */	add r7, r29, r7
/* 8039E45C  A0 67 00 10 */	lhz r3, 0x10(r7)
/* 8039E460  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8039E464  2C 00 00 05 */	cmpwi r0, 5
/* 8039E468  40 82 00 1C */	bne lbl_8039E484
/* 8039E46C  80 87 00 04 */	lwz r4, 4(r7)
/* 8039E470  39 00 00 01 */	li r8, 1
/* 8039E474  80 A7 00 00 */	lwz r5, 0(r7)
/* 8039E478  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 8039E47C  80 E7 00 08 */	lwz r7, 8(r7)
/* 8039E480  48 00 B8 1D */	bl mFI_SetFGStructure_common
lbl_8039E484:
/* 8039E484  3B 9C 00 01 */	addi r28, r28, 1
/* 8039E488  3B FF 00 1C */	addi r31, r31, 0x1c
/* 8039E48C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 8039E490  41 80 FF B4 */	blt lbl_8039E444
/* 8039E494  39 61 00 20 */	addi r11, r1, 0x20
/* 8039E498  4B CF CA 85 */	bl func_8009AF1C
/* 8039E49C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039E4A0  7C 08 03 A6 */	mtlr r0
/* 8039E4A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8039E4A8  4E 80 00 20 */	blr 
