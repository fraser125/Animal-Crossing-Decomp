lbl_803B9B00:
/* 803B9B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9B04  7C 08 02 A6 */	mflr r0
/* 803B9B08  2C 03 00 00 */	cmpwi r3, 0
/* 803B9B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9B14  41 80 00 34 */	blt lbl_803B9B48
/* 803B9B18  2C 03 00 04 */	cmpwi r3, 4
/* 803B9B1C  40 80 00 2C */	bge lbl_803B9B48
/* 803B9B20  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9B24  54 60 10 3A */	slwi r0, r3, 2
/* 803B9B28  38 A5 9B A0 */	addi r5, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9B2C  38 64 1D 90 */	addi r3, r4, 0x1d90
/* 803B9B30  7F E5 02 14 */	add r31, r5, r0
/* 803B9B34  84 9F 00 44 */	lwzu r4, 0x44(r31)
/* 803B9B38  48 00 26 AD */	bl Global_light_list_delete
/* 803B9B3C  38 00 00 00 */	li r0, 0
/* 803B9B40  38 60 FF FF */	li r3, -1
/* 803B9B44  90 1F 00 00 */	stw r0, 0(r31)
lbl_803B9B48:
/* 803B9B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9B50  7C 08 03 A6 */	mtlr r0
/* 803B9B54  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9B58  4E 80 00 20 */	blr 
