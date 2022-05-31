lbl_80514C8C:
/* 80514C8C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80514C90  7C 08 02 A6 */	mflr r0
/* 80514C94  90 01 00 74 */	stw r0, 0x74(r1)
/* 80514C98  39 61 00 70 */	addi r11, r1, 0x70
/* 80514C9C  4B B8 62 35 */	bl func_8009AED0
/* 80514CA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80514CA4  38 61 00 08 */	addi r3, r1, 8
/* 80514CA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80514CAC  3F C4 00 01 */	addis r30, r4, 1
/* 80514CB0  3B DE 37 A8 */	addi r30, r30, 0x37a8
/* 80514CB4  4B FF B0 C5 */	bl mAGrw_ClearGrowInfo
/* 80514CB8  38 00 00 01 */	li r0, 1
/* 80514CBC  3B A0 00 00 */	li r29, 0
/* 80514CC0  90 01 00 2C */	stw r0, 0x2c(r1)
lbl_80514CC4:
/* 80514CC4  3B 80 00 00 */	li r28, 0
/* 80514CC8  3B FD 00 01 */	addi r31, r29, 1
lbl_80514CCC:
/* 80514CCC  38 7C 00 01 */	addi r3, r28, 1
/* 80514CD0  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80514CD4  7F E4 FB 78 */	mr r4, r31
/* 80514CD8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80514CDC  4B E9 18 91 */	bl mFI_GetBkNum2ColTop
/* 80514CE0  7C 64 1B 79 */	or. r4, r3, r3
/* 80514CE4  41 82 00 10 */	beq lbl_80514CF4
/* 80514CE8  7F C3 F3 78 */	mr r3, r30
/* 80514CEC  38 A1 00 08 */	addi r5, r1, 8
/* 80514CF0  4B FF FE 89 */	bl mAgrw_ZuruSpoilKabuBlockFgItem
lbl_80514CF4:
/* 80514CF4  3B 9C 00 01 */	addi r28, r28, 1
/* 80514CF8  3B DE 02 00 */	addi r30, r30, 0x200
/* 80514CFC  2C 1C 00 05 */	cmpwi r28, 5
/* 80514D00  41 80 FF CC */	blt lbl_80514CCC
/* 80514D04  3B BD 00 01 */	addi r29, r29, 1
/* 80514D08  2C 1D 00 06 */	cmpwi r29, 6
/* 80514D0C  41 80 FF B8 */	blt lbl_80514CC4
/* 80514D10  39 61 00 70 */	addi r11, r1, 0x70
/* 80514D14  4B B8 62 09 */	bl func_8009AF1C
/* 80514D18  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80514D1C  7C 08 03 A6 */	mtlr r0
/* 80514D20  38 21 00 70 */	addi r1, r1, 0x70
/* 80514D24  4E 80 00 20 */	blr 
