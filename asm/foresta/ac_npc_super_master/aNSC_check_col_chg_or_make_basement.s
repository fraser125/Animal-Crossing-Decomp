lbl_80583088:
/* 80583088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058308C  7C 08 02 A6 */	mflr r0
/* 80583090  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583094  39 61 00 20 */	addi r11, r1, 0x20
/* 80583098  4B B1 7E 3D */	bl func_8009AED4
/* 8058309C  3C A0 80 65 */	lis r5, lit_1370@ha /* 0x80649AC8@ha */
/* 805830A0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805830A4  C0 05 9A C8 */	lfs f0, lit_1370@l(r5)  /* 0x80649AC8@l */
/* 805830A8  7C 7D 1B 78 */	mr r29, r3
/* 805830AC  7C 9E 23 78 */	mr r30, r4
/* 805830B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805830B4  40 81 00 34 */	ble lbl_805830E8
/* 805830B8  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 805830BC  4B FF DD E1 */	bl aNSC_set_stop_spd
/* 805830C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805830C4  7F A3 EB 78 */	mr r3, r29
/* 805830C8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805830CC  38 80 00 05 */	li r4, 5
/* 805830D0  3C C5 00 02 */	addis r6, r5, 2
/* 805830D4  38 A0 00 01 */	li r5, 1
/* 805830D8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805830DC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805830E0  7D 89 03 A6 */	mtctr r12
/* 805830E4  4E 80 04 21 */	bctrl 
lbl_805830E8:
/* 805830E8  4B E3 C5 C1 */	bl func_803BF6A8
/* 805830EC  4B E3 DB AD */	bl mMsg_Check_MainNormalContinue
/* 805830F0  2C 03 00 01 */	cmpwi r3, 1
/* 805830F4  40 82 00 48 */	bne lbl_8058313C
/* 805830F8  3B E0 00 04 */	li r31, 4
/* 805830FC  4B E0 04 45 */	bl func_80383540
/* 80583100  4B E0 0A 6D */	bl mChoice_Get_ChoseNum
/* 80583104  2C 03 00 01 */	cmpwi r3, 1
/* 80583108  41 82 00 1C */	beq lbl_80583124
/* 8058310C  40 80 00 20 */	bge lbl_8058312C
/* 80583110  2C 03 00 00 */	cmpwi r3, 0
/* 80583114  40 80 00 08 */	bge lbl_8058311C
/* 80583118  48 00 00 14 */	b lbl_8058312C
lbl_8058311C:
/* 8058311C  3B E0 00 04 */	li r31, 4
/* 80583120  48 00 00 0C */	b lbl_8058312C
lbl_80583124:
/* 80583124  4B FF DE 15 */	bl aNSC_set_make_basement_info
/* 80583128  3B E0 00 02 */	li r31, 2
lbl_8058312C:
/* 8058312C  7F A3 EB 78 */	mr r3, r29
/* 80583130  7F C4 F3 78 */	mr r4, r30
/* 80583134  7F E5 FB 78 */	mr r5, r31
/* 80583138  48 00 2E 89 */	bl aNSC_setupAction
lbl_8058313C:
/* 8058313C  39 61 00 20 */	addi r11, r1, 0x20
/* 80583140  4B B1 7D E1 */	bl func_8009AF20
/* 80583144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583148  7C 08 03 A6 */	mtlr r0
/* 8058314C  38 21 00 20 */	addi r1, r1, 0x20
/* 80583150  4E 80 00 20 */	blr 
