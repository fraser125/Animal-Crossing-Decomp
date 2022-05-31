lbl_8048E400:
/* 8048E400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E404  7C 08 02 A6 */	mflr r0
/* 8048E408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048E410  93 C1 00 08 */	stw r30, 8(r1)
/* 8048E414  7C 9E 23 78 */	mr r30, r4
/* 8048E418  2C 1E FF FF */	cmpwi r30, -1
/* 8048E41C  41 82 00 8C */	beq lbl_8048E4A8
/* 8048E420  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E424  54 60 08 3C */	slwi r0, r3, 1
/* 8048E428  38 64 EB F0 */	addi r3, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E42C  7C 63 02 14 */	add r3, r3, r0
/* 8048E430  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8048E434  4B F4 70 AD */	bl mNpc_GetIslandPresentFtr
/* 8048E438  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 8048E43C  7C 64 1B 78 */	mr r4, r3
/* 8048E440  2C 00 00 01 */	cmpwi r0, 1
/* 8048E444  41 82 00 0C */	beq lbl_8048E450
/* 8048E448  2C 00 00 03 */	cmpwi r0, 3
/* 8048E44C  40 82 00 3C */	bne lbl_8048E488
lbl_8048E450:
/* 8048E450  7F E3 FB 78 */	mr r3, r31
/* 8048E454  4B FE 57 75 */	bl aMR_CorrespondFurniture
/* 8048E458  2C 03 00 01 */	cmpwi r3, 1
/* 8048E45C  40 82 00 1C */	bne lbl_8048E478
/* 8048E460  4B F4 70 91 */	bl mNpc_GetIslandPresentFtrPersonalID
/* 8048E464  28 03 00 00 */	cmplwi r3, 0
/* 8048E468  41 82 00 10 */	beq lbl_8048E478
/* 8048E46C  4B F4 70 85 */	bl mNpc_GetIslandPresentFtrPersonalID
/* 8048E470  4B F5 1C 1D */	bl mPr_ClearPersonalID
/* 8048E474  48 00 00 14 */	b lbl_8048E488
lbl_8048E478:
/* 8048E478  7F E3 FB 78 */	mr r3, r31
/* 8048E47C  4B F4 68 E1 */	bl mNpc_EraseIslandFtr
/* 8048E480  7F E3 FB 78 */	mr r3, r31
/* 8048E484  4B F4 6B 01 */	bl mNpc_EraseIslandFtr_keep
lbl_8048E488:
/* 8048E488  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048E48C  7F C4 F3 78 */	mr r4, r30
/* 8048E490  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048E494  7F E5 FB 78 */	mr r5, r31
/* 8048E498  3C 63 00 02 */	addis r3, r3, 2
/* 8048E49C  38 C0 00 00 */	li r6, 0
/* 8048E4A0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8048E4A4  4B F5 29 85 */	bl mPr_SetPossessionItem
lbl_8048E4A8:
/* 8048E4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048E4B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048E4B4  7C 08 03 A6 */	mtlr r0
/* 8048E4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E4BC  4E 80 00 20 */	blr 
