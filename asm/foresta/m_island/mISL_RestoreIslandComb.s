lbl_803B3CC0:
/* 803B3CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3CC4  7C 08 02 A6 */	mflr r0
/* 803B3CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3CCC  38 61 00 08 */	addi r3, r1, 8
/* 803B3CD0  4B FF 28 09 */	bl mFI_GetIslandBlockNumX
/* 803B3CD4  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B3CD8  2C 05 00 00 */	cmpwi r5, 0
/* 803B3CDC  40 81 00 38 */	ble lbl_803B3D14
/* 803B3CE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B3CE4  2C 00 00 06 */	cmpwi r0, 6
/* 803B3CE8  40 80 00 2C */	bge lbl_803B3D14
/* 803B3CEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B3CF0  54 A6 08 3C */	slwi r6, r5, 1
/* 803B3CF4  3C 60 81 17 */	lis r3, l_keepIslandComb@ha /* 0x81169B78@ha */
/* 803B3CF8  38 A0 00 02 */	li r5, 2
/* 803B3CFC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803B3D00  38 83 9B 78 */	addi r4, r3, l_keepIslandComb@l /* 0x81169B78@l */
/* 803B3D04  7C 60 32 14 */	add r3, r0, r6
/* 803B3D08  3C 63 00 01 */	addis r3, r3, 1
/* 803B3D0C  38 63 74 18 */	addi r3, r3, 0x7418
/* 803B3D10  4B FF FF 75 */	bl mISL_RestoreIslandComb_com
lbl_803B3D14:
/* 803B3D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3D18  7C 08 03 A6 */	mtlr r0
/* 803B3D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3D20  4E 80 00 20 */	blr 
