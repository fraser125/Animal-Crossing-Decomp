lbl_803B3E1C:
/* 803B3E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3E20  7C 08 02 A6 */	mflr r0
/* 803B3E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3E2C  7C 7F 1B 78 */	mr r31, r3
/* 803B3E30  4B FF FA 99 */	bl mLd_ClearLandName
/* 803B3E34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3E38  38 9F 00 08 */	addi r4, r31, 8
/* 803B3E3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3E40  38 A0 00 0C */	li r5, 0xc
/* 803B3E44  3C 63 00 01 */	addis r3, r3, 1
/* 803B3E48  38 63 91 20 */	addi r3, r3, -28384
/* 803B3E4C  4B CA 91 D1 */	bl func_8005D01C
/* 803B3E50  38 7F 04 18 */	addi r3, r31, 0x418
/* 803B3E54  4B FF F7 01 */	bl mHm_InitCottage
/* 803B3E58  38 7F 0F 00 */	addi r3, r31, 0xf00
/* 803B3E5C  48 01 FE 39 */	bl mNpc_DecideIslandNpc
/* 803B3E60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3E64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3E68  3C 63 00 02 */	addis r3, r3, 2
/* 803B3E6C  88 03 41 84 */	lbz r0, 0x4184(r3)
/* 803B3E70  98 03 3E 20 */	stb r0, 0x3e20(r3)
/* 803B3E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B3E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3E7C  7C 08 03 A6 */	mtlr r0
/* 803B3E80  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3E84  4E 80 00 20 */	blr 
