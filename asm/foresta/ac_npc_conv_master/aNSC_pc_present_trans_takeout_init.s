lbl_8054ADAC:
/* 8054ADAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054ADB0  7C 08 02 A6 */	mflr r0
/* 8054ADB4  38 80 00 01 */	li r4, 1
/* 8054ADB8  38 A0 00 00 */	li r5, 0
/* 8054ADBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054ADC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054ADC4  7C 7F 1B 78 */	mr r31, r3
/* 8054ADC8  38 60 00 04 */	li r3, 4
/* 8054ADCC  4B E4 D6 6D */	bl mDemo_Set_OrderValue
/* 8054ADD0  38 9F 00 28 */	addi r4, r31, 0x28
/* 8054ADD4  38 60 00 69 */	li r3, 0x69
/* 8054ADD8  48 0E 31 D1 */	bl sAdo_OngenTrgStart
/* 8054ADDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054ADE0  A0 9F 09 F8 */	lhz r4, 0x9f8(r31)
/* 8054ADE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054ADE8  38 A0 00 01 */	li r5, 1
/* 8054ADEC  3C 63 00 02 */	addis r3, r3, 2
/* 8054ADF0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054ADF4  4B E9 61 15 */	bl mPr_SetFreePossessionItem
/* 8054ADF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054ADFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054AE00  3C 83 00 03 */	addis r4, r3, 3
/* 8054AE04  80 64 DB EC */	lwz r3, -0x2414(r4)
/* 8054AE08  38 03 00 01 */	addi r0, r3, 1
/* 8054AE0C  90 04 DB EC */	stw r0, -0x2414(r4)
/* 8054AE10  4B E7 48 99 */	bl func_803BF6A8
/* 8054AE14  4B E7 5F 2D */	bl mMsg_Set_LockContinue
/* 8054AE18  38 00 00 01 */	li r0, 1
/* 8054AE1C  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8054AE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054AE28  7C 08 03 A6 */	mtlr r0
/* 8054AE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AE30  4E 80 00 20 */	blr 
