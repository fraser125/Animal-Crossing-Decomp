lbl_8054F8FC:
/* 8054F8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054F900  7C 08 02 A6 */	mflr r0
/* 8054F904  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054F908  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F90C  4B B4 B5 C9 */	bl func_8009AED4
/* 8054F910  3C A0 80 65 */	lis r5, lit_1355@ha /* 0x80649528@ha */
/* 8054F914  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8054F918  C0 05 95 28 */	lfs f0, lit_1355@l(r5)  /* 0x80649528@l */
/* 8054F91C  7C 7D 1B 78 */	mr r29, r3
/* 8054F920  7C 9E 23 78 */	mr r30, r4
/* 8054F924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054F928  40 81 00 34 */	ble lbl_8054F95C
/* 8054F92C  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 8054F930  4B FF DD E1 */	bl aNSC_set_stop_spd
/* 8054F934  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054F938  7F A3 EB 78 */	mr r3, r29
/* 8054F93C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8054F940  38 80 00 05 */	li r4, 5
/* 8054F944  3C C5 00 02 */	addis r6, r5, 2
/* 8054F948  38 A0 00 01 */	li r5, 1
/* 8054F94C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8054F950  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8054F954  7D 89 03 A6 */	mtctr r12
/* 8054F958  4E 80 04 21 */	bctrl 
lbl_8054F95C:
/* 8054F95C  4B E6 FD 4D */	bl func_803BF6A8
/* 8054F960  4B E7 13 39 */	bl mMsg_Check_MainNormalContinue
/* 8054F964  2C 03 00 01 */	cmpwi r3, 1
/* 8054F968  40 82 00 48 */	bne lbl_8054F9B0
/* 8054F96C  3B E0 00 04 */	li r31, 4
/* 8054F970  4B E3 3B D1 */	bl func_80383540
/* 8054F974  4B E3 41 F9 */	bl mChoice_Get_ChoseNum
/* 8054F978  2C 03 00 01 */	cmpwi r3, 1
/* 8054F97C  41 82 00 1C */	beq lbl_8054F998
/* 8054F980  40 80 00 20 */	bge lbl_8054F9A0
/* 8054F984  2C 03 00 00 */	cmpwi r3, 0
/* 8054F988  40 80 00 08 */	bge lbl_8054F990
/* 8054F98C  48 00 00 14 */	b lbl_8054F9A0
lbl_8054F990:
/* 8054F990  3B E0 00 04 */	li r31, 4
/* 8054F994  48 00 00 0C */	b lbl_8054F9A0
lbl_8054F998:
/* 8054F998  4B FF DE 15 */	bl aNSC_set_make_basement_info
/* 8054F99C  3B E0 00 02 */	li r31, 2
lbl_8054F9A0:
/* 8054F9A0  7F A3 EB 78 */	mr r3, r29
/* 8054F9A4  7F C4 F3 78 */	mr r4, r30
/* 8054F9A8  7F E5 FB 78 */	mr r5, r31
/* 8054F9AC  48 00 2E 89 */	bl aNSC_setupAction
lbl_8054F9B0:
/* 8054F9B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F9B4  4B B4 B5 6D */	bl func_8009AF20
/* 8054F9B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054F9BC  7C 08 03 A6 */	mtlr r0
/* 8054F9C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054F9C4  4E 80 00 20 */	blr 
