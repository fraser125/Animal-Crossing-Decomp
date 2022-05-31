lbl_80593CB8:
/* 80593CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80593CBC  7C 08 02 A6 */	mflr r0
/* 80593CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80593CC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80593CC8  4B B0 72 0D */	bl func_8009AED4
/* 80593CCC  7C 7D 1B 78 */	mr r29, r3
/* 80593CD0  7C 9E 23 78 */	mr r30, r4
/* 80593CD4  38 60 00 04 */	li r3, 4
/* 80593CD8  38 80 00 01 */	li r4, 1
/* 80593CDC  4B E0 47 A1 */	bl mDemo_Get_OrderValue
/* 80593CE0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80593CE4  2C 00 00 02 */	cmpwi r0, 2
/* 80593CE8  40 82 00 84 */	bne lbl_80593D6C
/* 80593CEC  88 1D 09 B0 */	lbz r0, 0x9b0(r29)
/* 80593CF0  3C 60 80 65 */	lis r3, data_80649CB4@ha /* 0x80649CB4@ha */
/* 80593CF4  38 A3 9C B4 */	addi r5, r3, data_80649CB4@l /* 0x80649CB4@l */
/* 80593CF8  38 80 00 00 */	li r4, 0
/* 80593CFC  54 00 08 3C */	slwi r0, r0, 1
/* 80593D00  38 60 00 05 */	li r3, 5
/* 80593D04  7C A5 02 2E */	lhzx r5, r5, r0
/* 80593D08  7C BF 2B 78 */	mr r31, r5
/* 80593D0C  4B E0 47 2D */	bl mDemo_Set_OrderValue
/* 80593D10  38 60 00 05 */	li r3, 5
/* 80593D14  38 80 00 01 */	li r4, 1
/* 80593D18  38 A0 00 07 */	li r5, 7
/* 80593D1C  4B E0 47 1D */	bl mDemo_Set_OrderValue
/* 80593D20  38 60 00 05 */	li r3, 5
/* 80593D24  38 80 00 02 */	li r4, 2
/* 80593D28  38 A0 00 00 */	li r5, 0
/* 80593D2C  4B E0 47 0D */	bl mDemo_Set_OrderValue
/* 80593D30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80593D34  7F E4 FB 78 */	mr r4, r31
/* 80593D38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80593D3C  38 A0 00 00 */	li r5, 0
/* 80593D40  3C 63 00 02 */	addis r3, r3, 2
/* 80593D44  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80593D48  4B E4 D1 C1 */	bl mPr_SetFreePossessionItem
/* 80593D4C  80 7D 09 A8 */	lwz r3, 0x9a8(r29)
/* 80593D50  88 9D 09 B0 */	lbz r4, 0x9b0(r29)
/* 80593D54  38 63 00 14 */	addi r3, r3, 0x14
/* 80593D58  4B FF F3 FD */	bl aETKY_ReportPresent
/* 80593D5C  7F A3 EB 78 */	mr r3, r29
/* 80593D60  7F C4 F3 78 */	mr r4, r30
/* 80593D64  38 A0 00 00 */	li r5, 0
/* 80593D68  48 00 00 1D */	bl aETKY_SetupTalkStat
lbl_80593D6C:
/* 80593D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80593D70  4B B0 71 B1 */	bl func_8009AF20
/* 80593D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593D78  7C 08 03 A6 */	mtlr r0
/* 80593D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80593D80  4E 80 00 20 */	blr 
