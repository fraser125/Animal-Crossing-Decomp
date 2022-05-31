lbl_8055EC60:
/* 8055EC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EC64  7C 08 02 A6 */	mflr r0
/* 8055EC68  38 80 00 01 */	li r4, 1
/* 8055EC6C  38 A0 00 00 */	li r5, 0
/* 8055EC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EC74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055EC78  7C 7F 1B 78 */	mr r31, r3
/* 8055EC7C  38 60 00 04 */	li r3, 4
/* 8055EC80  4B E3 97 B9 */	bl mDemo_Set_OrderValue
/* 8055EC84  38 9F 00 28 */	addi r4, r31, 0x28
/* 8055EC88  38 60 00 69 */	li r3, 0x69
/* 8055EC8C  48 0C F3 1D */	bl sAdo_OngenTrgStart
/* 8055EC90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055EC94  A0 9F 09 F8 */	lhz r4, 0x9f8(r31)
/* 8055EC98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055EC9C  38 A0 00 01 */	li r5, 1
/* 8055ECA0  3C 63 00 02 */	addis r3, r3, 2
/* 8055ECA4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055ECA8  4B E8 22 61 */	bl mPr_SetFreePossessionItem
/* 8055ECAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055ECB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055ECB4  3C 83 00 03 */	addis r4, r3, 3
/* 8055ECB8  80 64 DB EC */	lwz r3, -0x2414(r4)
/* 8055ECBC  38 03 00 01 */	addi r0, r3, 1
/* 8055ECC0  90 04 DB EC */	stw r0, -0x2414(r4)
/* 8055ECC4  4B E6 09 E5 */	bl func_803BF6A8
/* 8055ECC8  4B E6 20 79 */	bl mMsg_Set_LockContinue
/* 8055ECCC  38 00 00 01 */	li r0, 1
/* 8055ECD0  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8055ECD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055ECD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055ECDC  7C 08 03 A6 */	mtlr r0
/* 8055ECE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055ECE4  4E 80 00 20 */	blr 
