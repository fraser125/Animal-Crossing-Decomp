lbl_8057957C:
/* 8057957C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579580  7C 08 02 A6 */	mflr r0
/* 80579584  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579588  39 61 00 20 */	addi r11, r1, 0x20
/* 8057958C  4B B2 19 49 */	bl func_8009AED4
/* 80579590  3C A0 80 65 */	lis r5, lit_1330@ha /* 0x806499F8@ha */
/* 80579594  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80579598  C0 05 99 F8 */	lfs f0, lit_1330@l(r5)  /* 0x806499F8@l */
/* 8057959C  7C 7D 1B 78 */	mr r29, r3
/* 805795A0  7C 9E 23 78 */	mr r30, r4
/* 805795A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805795A8  40 81 00 34 */	ble lbl_805795DC
/* 805795AC  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 805795B0  4B FF DD E1 */	bl aNSC_set_stop_spd
/* 805795B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805795B8  7F A3 EB 78 */	mr r3, r29
/* 805795BC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805795C0  38 80 00 05 */	li r4, 5
/* 805795C4  3C C5 00 02 */	addis r6, r5, 2
/* 805795C8  38 A0 00 01 */	li r5, 1
/* 805795CC  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805795D0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805795D4  7D 89 03 A6 */	mtctr r12
/* 805795D8  4E 80 04 21 */	bctrl 
lbl_805795DC:
/* 805795DC  4B E4 60 CD */	bl func_803BF6A8
/* 805795E0  4B E4 76 B9 */	bl mMsg_Check_MainNormalContinue
/* 805795E4  2C 03 00 01 */	cmpwi r3, 1
/* 805795E8  40 82 00 48 */	bne lbl_80579630
/* 805795EC  3B E0 00 04 */	li r31, 4
/* 805795F0  4B E0 9F 51 */	bl func_80383540
/* 805795F4  4B E0 A5 79 */	bl mChoice_Get_ChoseNum
/* 805795F8  2C 03 00 01 */	cmpwi r3, 1
/* 805795FC  41 82 00 1C */	beq lbl_80579618
/* 80579600  40 80 00 20 */	bge lbl_80579620
/* 80579604  2C 03 00 00 */	cmpwi r3, 0
/* 80579608  40 80 00 08 */	bge lbl_80579610
/* 8057960C  48 00 00 14 */	b lbl_80579620
lbl_80579610:
/* 80579610  3B E0 00 04 */	li r31, 4
/* 80579614  48 00 00 0C */	b lbl_80579620
lbl_80579618:
/* 80579618  4B FF DE 15 */	bl aNSC_set_make_basement_info
/* 8057961C  3B E0 00 02 */	li r31, 2
lbl_80579620:
/* 80579620  7F A3 EB 78 */	mr r3, r29
/* 80579624  7F C4 F3 78 */	mr r4, r30
/* 80579628  7F E5 FB 78 */	mr r5, r31
/* 8057962C  48 00 2E 89 */	bl aNSC_setupAction
lbl_80579630:
/* 80579630  39 61 00 20 */	addi r11, r1, 0x20
/* 80579634  4B B2 18 ED */	bl func_8009AF20
/* 80579638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057963C  7C 08 03 A6 */	mtlr r0
/* 80579640  38 21 00 20 */	addi r1, r1, 0x20
/* 80579644  4E 80 00 20 */	blr 
