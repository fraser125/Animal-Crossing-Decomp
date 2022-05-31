lbl_803B3D24:
/* 803B3D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3D28  7C 08 02 A6 */	mflr r0
/* 803B3D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3D30  38 61 00 08 */	addi r3, r1, 8
/* 803B3D34  4B FF 27 A5 */	bl mFI_GetIslandBlockNumX
/* 803B3D38  80 81 00 08 */	lwz r4, 8(r1)
/* 803B3D3C  2C 04 00 00 */	cmpwi r4, 0
/* 803B3D40  40 81 00 48 */	ble lbl_803B3D88
/* 803B3D44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B3D48  2C 00 00 06 */	cmpwi r0, 6
/* 803B3D4C  40 80 00 3C */	bge lbl_803B3D88
/* 803B3D50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3D54  54 84 08 3C */	slwi r4, r4, 1
/* 803B3D58  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803B3D5C  3C C0 81 17 */	lis r6, l_keepIslandComb@ha /* 0x81169B78@ha */
/* 803B3D60  7C 80 22 14 */	add r4, r0, r4
/* 803B3D64  38 A0 00 02 */	li r5, 2
/* 803B3D68  3C 84 00 01 */	addis r4, r4, 1
/* 803B3D6C  38 66 9B 78 */	addi r3, r6, l_keepIslandComb@l /* 0x81169B78@l */
/* 803B3D70  38 84 74 18 */	addi r4, r4, 0x7418
/* 803B3D74  4B FF FE D9 */	bl mISL_KeepIslandComb
/* 803B3D78  48 03 11 85 */	bl mRF_IslandBgData_To_VillageData
/* 803B3D7C  38 61 00 08 */	addi r3, r1, 8
/* 803B3D80  38 80 00 02 */	li r4, 2
/* 803B3D84  4B FF 0C 11 */	bl mFM_RestoreIslandBG
lbl_803B3D88:
/* 803B3D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3D8C  7C 08 03 A6 */	mtlr r0
/* 803B3D90  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3D94  4E 80 00 20 */	blr 
