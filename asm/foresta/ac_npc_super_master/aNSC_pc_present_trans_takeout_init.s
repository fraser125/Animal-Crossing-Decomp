lbl_80585E50:
/* 80585E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585E54  7C 08 02 A6 */	mflr r0
/* 80585E58  38 80 00 01 */	li r4, 1
/* 80585E5C  38 A0 00 00 */	li r5, 0
/* 80585E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585E68  7C 7F 1B 78 */	mr r31, r3
/* 80585E6C  38 60 00 04 */	li r3, 4
/* 80585E70  4B E1 25 C9 */	bl mDemo_Set_OrderValue
/* 80585E74  38 9F 00 28 */	addi r4, r31, 0x28
/* 80585E78  38 60 00 69 */	li r3, 0x69
/* 80585E7C  48 0A 81 2D */	bl sAdo_OngenTrgStart
/* 80585E80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80585E84  A0 9F 09 F8 */	lhz r4, 0x9f8(r31)
/* 80585E88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80585E8C  38 A0 00 01 */	li r5, 1
/* 80585E90  3C 63 00 02 */	addis r3, r3, 2
/* 80585E94  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80585E98  4B E5 B0 71 */	bl mPr_SetFreePossessionItem
/* 80585E9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80585EA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80585EA4  3C 83 00 03 */	addis r4, r3, 3
/* 80585EA8  80 64 DB EC */	lwz r3, -0x2414(r4)
/* 80585EAC  38 03 00 01 */	addi r0, r3, 1
/* 80585EB0  90 04 DB EC */	stw r0, -0x2414(r4)
/* 80585EB4  4B E3 97 F5 */	bl func_803BF6A8
/* 80585EB8  4B E3 AE 89 */	bl mMsg_Set_LockContinue
/* 80585EBC  38 00 00 01 */	li r0, 1
/* 80585EC0  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 80585EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585ECC  7C 08 03 A6 */	mtlr r0
/* 80585ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80585ED4  4E 80 00 20 */	blr 
