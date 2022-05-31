lbl_80523CE4:
/* 80523CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523CE8  7C 08 02 A6 */	mflr r0
/* 80523CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80523CF4  4B B7 71 E1 */	bl func_8009AED4
/* 80523CF8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80523CFC  7C 9E 23 78 */	mr r30, r4
/* 80523D00  38 86 85 38 */	addi r4, r6, common_data@l /* 0x81138538@l */
/* 80523D04  7C 7D 1B 78 */	mr r29, r3
/* 80523D08  3C 64 00 02 */	addis r3, r4, 2
/* 80523D0C  7C BF 2B 78 */	mr r31, r5
/* 80523D10  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 80523D14  7F C3 F3 78 */	mr r3, r30
/* 80523D18  4B EB C4 2D */	bl mPr_CheckCmpPersonalID
/* 80523D1C  2C 03 00 01 */	cmpwi r3, 1
/* 80523D20  40 82 00 18 */	bne lbl_80523D38
/* 80523D24  7F A3 EB 78 */	mr r3, r29
/* 80523D28  7F C4 F3 78 */	mr r4, r30
/* 80523D2C  7F E5 FB 78 */	mr r5, r31
/* 80523D30  4B FF FE 59 */	bl aESNT_after_talk_same_pl_decide_talk_data_idx
/* 80523D34  48 00 00 0C */	b lbl_80523D40
lbl_80523D38:
/* 80523D38  7F C3 F3 78 */	mr r3, r30
/* 80523D3C  4B FF FF 4D */	bl aESNT_after_talk_other_pl_decide_talk_data_idx
lbl_80523D40:
/* 80523D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80523D44  4B B7 71 DD */	bl func_8009AF20
/* 80523D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80523D4C  7C 08 03 A6 */	mtlr r0
/* 80523D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80523D54  4E 80 00 20 */	blr 
