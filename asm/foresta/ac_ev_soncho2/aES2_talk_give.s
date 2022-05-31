lbl_80524AB8:
/* 80524AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80524ABC  7C 08 02 A6 */	mflr r0
/* 80524AC0  38 80 00 01 */	li r4, 1
/* 80524AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80524AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80524ACC  7C 7F 1B 78 */	mr r31, r3
/* 80524AD0  38 60 00 04 */	li r3, 4
/* 80524AD4  4B E7 39 A9 */	bl mDemo_Get_OrderValue
/* 80524AD8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80524ADC  2C 00 00 02 */	cmpwi r0, 2
/* 80524AE0  40 82 00 70 */	bne lbl_80524B50
/* 80524AE4  A0 7F 09 9C */	lhz r3, 0x99c(r31)
/* 80524AE8  38 80 00 00 */	li r4, 0
/* 80524AEC  4B EC 7A E5 */	bl mSC_item_string_set
/* 80524AF0  A0 BF 09 9C */	lhz r5, 0x99c(r31)
/* 80524AF4  38 60 00 05 */	li r3, 5
/* 80524AF8  38 80 00 00 */	li r4, 0
/* 80524AFC  4B E7 39 3D */	bl mDemo_Set_OrderValue
/* 80524B00  38 60 00 05 */	li r3, 5
/* 80524B04  38 80 00 01 */	li r4, 1
/* 80524B08  38 A0 00 07 */	li r5, 7
/* 80524B0C  4B E7 39 2D */	bl mDemo_Set_OrderValue
/* 80524B10  38 60 00 05 */	li r3, 5
/* 80524B14  38 80 00 02 */	li r4, 2
/* 80524B18  38 A0 00 00 */	li r5, 0
/* 80524B1C  4B E7 39 1D */	bl mDemo_Set_OrderValue
/* 80524B20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80524B24  A0 9F 09 9C */	lhz r4, 0x99c(r31)
/* 80524B28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80524B2C  38 A0 00 00 */	li r5, 0
/* 80524B30  3C 63 00 02 */	addis r3, r3, 2
/* 80524B34  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80524B38  4B EB C3 D1 */	bl mPr_SetFreePossessionItem
/* 80524B3C  7F E3 FB 78 */	mr r3, r31
/* 80524B40  38 80 00 05 */	li r4, 5
/* 80524B44  48 00 00 21 */	bl aES2_change_talk_proc
/* 80524B48  88 7F 09 AE */	lbz r3, 0x9ae(r31)
/* 80524B4C  4B EC 79 25 */	bl mSC_trophy_set
lbl_80524B50:
/* 80524B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80524B58  7C 08 03 A6 */	mtlr r0
/* 80524B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80524B60  4E 80 00 20 */	blr 
