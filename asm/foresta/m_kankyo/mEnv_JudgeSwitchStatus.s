lbl_803B8E4C:
/* 803B8E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B8E50  7C 08 02 A6 */	mflr r0
/* 803B8E54  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B8E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B8E60  3B E3 9B A0 */	addi r31, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8E64  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 803B8E68  2C 00 00 02 */	cmpwi r0, 2
/* 803B8E6C  41 82 00 3C */	beq lbl_803B8EA8
/* 803B8E70  40 80 00 14 */	bge lbl_803B8E84
/* 803B8E74  2C 00 00 00 */	cmpwi r0, 0
/* 803B8E78  41 82 00 18 */	beq lbl_803B8E90
/* 803B8E7C  40 80 00 20 */	bge lbl_803B8E9C
/* 803B8E80  48 00 00 5C */	b lbl_803B8EDC
lbl_803B8E84:
/* 803B8E84  2C 00 00 04 */	cmpwi r0, 4
/* 803B8E88  40 80 00 54 */	bge lbl_803B8EDC
/* 803B8E8C  48 00 00 38 */	b lbl_803B8EC4
lbl_803B8E90:
/* 803B8E90  38 00 00 02 */	li r0, 2
/* 803B8E94  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 803B8E98  48 00 00 44 */	b lbl_803B8EDC
lbl_803B8E9C:
/* 803B8E9C  38 00 00 03 */	li r0, 3
/* 803B8EA0  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 803B8EA4  48 00 00 38 */	b lbl_803B8EDC
lbl_803B8EA8:
/* 803B8EA8  48 02 E2 05 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B8EAC  48 02 E4 21 */	bl mRmTp_Index2LightSwitchStatus
/* 803B8EB0  2C 03 00 00 */	cmpwi r3, 0
/* 803B8EB4  40 82 00 28 */	bne lbl_803B8EDC
/* 803B8EB8  38 00 00 01 */	li r0, 1
/* 803B8EBC  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 803B8EC0  48 00 00 1C */	b lbl_803B8EDC
lbl_803B8EC4:
/* 803B8EC4  48 02 E1 E9 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B8EC8  48 02 E4 05 */	bl mRmTp_Index2LightSwitchStatus
/* 803B8ECC  2C 03 00 00 */	cmpwi r3, 0
/* 803B8ED0  41 82 00 0C */	beq lbl_803B8EDC
/* 803B8ED4  38 00 00 00 */	li r0, 0
/* 803B8ED8  90 1F 00 8C */	stw r0, 0x8c(r31)
lbl_803B8EDC:
/* 803B8EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B8EE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B8EE4  7C 08 03 A6 */	mtlr r0
/* 803B8EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B8EEC  4E 80 00 20 */	blr 
