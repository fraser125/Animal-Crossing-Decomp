lbl_8055CF88:
/* 8055CF88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055CF8C  7C 08 02 A6 */	mflr r0
/* 8055CF90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055CF94  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CF98  4B B3 DF 3D */	bl func_8009AED4
/* 8055CF9C  7C 7D 1B 78 */	mr r29, r3
/* 8055CFA0  7C 9E 23 78 */	mr r30, r4
/* 8055CFA4  4B E6 27 05 */	bl func_803BF6A8
/* 8055CFA8  7C 7F 1B 78 */	mr r31, r3
/* 8055CFAC  4B E6 30 21 */	bl mMsg_Get_msg_num
/* 8055CFB0  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 8055CFB4  7C 00 18 00 */	cmpw r0, r3
/* 8055CFB8  40 82 00 5C */	bne lbl_8055D014
/* 8055CFBC  7F E3 FB 78 */	mr r3, r31
/* 8055CFC0  4B E6 3C D9 */	bl mMsg_Check_MainNormalContinue
/* 8055CFC4  2C 03 00 00 */	cmpwi r3, 0
/* 8055CFC8  41 82 00 4C */	beq lbl_8055D014
/* 8055CFCC  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 8055CFD0  4B E2 65 71 */	bl func_80383540
/* 8055CFD4  4B E2 6B 99 */	bl mChoice_Get_ChoseNum
/* 8055CFD8  2C 03 00 00 */	cmpwi r3, 0
/* 8055CFDC  41 82 00 08 */	beq lbl_8055CFE4
/* 8055CFE0  48 00 00 24 */	b lbl_8055D004
lbl_8055CFE4:
/* 8055CFE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055CFE8  88 9F 00 02 */	lbz r4, 2(r31)
/* 8055CFEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055CFF0  38 A0 00 00 */	li r5, 0
/* 8055CFF4  3C 63 00 02 */	addis r3, r3, 2
/* 8055CFF8  38 C0 00 00 */	li r6, 0
/* 8055CFFC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055D000  4B E8 3E 29 */	bl mPr_SetPossessionItem
lbl_8055D004:
/* 8055D004  7F A3 EB 78 */	mr r3, r29
/* 8055D008  7F C4 F3 78 */	mr r4, r30
/* 8055D00C  38 A0 00 0D */	li r5, 0xd
/* 8055D010  48 00 1D C1 */	bl aNSC_setupAction
lbl_8055D014:
/* 8055D014  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D018  4B B3 DF 09 */	bl func_8009AF20
/* 8055D01C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D020  7C 08 03 A6 */	mtlr r0
/* 8055D024  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D028  4E 80 00 20 */	blr 
