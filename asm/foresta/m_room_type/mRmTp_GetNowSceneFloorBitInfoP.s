lbl_803E7608:
/* 803E7608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E760C  7C 08 02 A6 */	mflr r0
/* 803E7610  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E7618  4B FB D6 B5 */	bl mFI_GetFieldId
/* 803E761C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E7620  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E7624  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 803E7628  2C 05 00 2F */	cmpwi r5, 0x2f
/* 803E762C  40 82 00 10 */	bne lbl_803E763C
/* 803E7630  3C 64 00 02 */	addis r3, r4, 2
/* 803E7634  38 63 32 04 */	addi r3, r3, 0x3204
/* 803E7638  48 00 00 54 */	b lbl_803E768C
lbl_803E763C:
/* 803E763C  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803E7640  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E7644  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803E7648  40 82 00 40 */	bne lbl_803E7688
/* 803E764C  38 03 A0 00 */	addi r0, r3, -24576
/* 803E7650  7C A3 2B 78 */	mr r3, r5
/* 803E7654  54 1F 07 BE */	clrlwi r31, r0, 0x1e
/* 803E7658  4B FB E7 11 */	bl mFI_GetPlayerHouseFloorNo
/* 803E765C  2C 03 FF FF */	cmpwi r3, -1
/* 803E7660  41 82 00 28 */	beq lbl_803E7688
/* 803E7664  1C BF 26 B0 */	mulli r5, r31, 0x26b0
/* 803E7668  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E766C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E7670  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 803E7674  7C 64 2A 14 */	add r3, r4, r5
/* 803E7678  7C 63 02 14 */	add r3, r3, r0
/* 803E767C  3C 63 00 01 */	addis r3, r3, 1
/* 803E7680  38 63 A5 C4 */	addi r3, r3, -23100
/* 803E7684  48 00 00 08 */	b lbl_803E768C
lbl_803E7688:
/* 803E7688  38 60 00 00 */	li r3, 0
lbl_803E768C:
/* 803E768C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7694  7C 08 03 A6 */	mtlr r0
/* 803E7698  38 21 00 10 */	addi r1, r1, 0x10
/* 803E769C  4E 80 00 20 */	blr 
