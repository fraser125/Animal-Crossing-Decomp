lbl_80579648:
/* 80579648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057964C  7C 08 02 A6 */	mflr r0
/* 80579650  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579654  39 61 00 20 */	addi r11, r1, 0x20
/* 80579658  4B B2 18 79 */	bl func_8009AED0
/* 8057965C  7C 7E 1B 78 */	mr r30, r3
/* 80579660  7C 9F 23 78 */	mr r31, r4
/* 80579664  38 60 00 04 */	li r3, 4
/* 80579668  38 80 00 09 */	li r4, 9
/* 8057966C  4B E1 EE 11 */	bl mDemo_Get_OrderValue
/* 80579670  3C 80 80 65 */	lis r4, lit_1330@ha /* 0x806499F8@ha */
/* 80579674  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80579678  C0 04 99 F8 */	lfs f0, lit_1330@l(r4)  /* 0x806499F8@l */
/* 8057967C  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 80579680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80579684  40 81 00 38 */	ble lbl_805796BC
/* 80579688  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8057968C  7F C3 F3 78 */	mr r3, r30
/* 80579690  4B FF DD 01 */	bl aNSC_set_stop_spd
/* 80579694  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80579698  7F C3 F3 78 */	mr r3, r30
/* 8057969C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805796A0  38 80 00 05 */	li r4, 5
/* 805796A4  3C C5 00 02 */	addis r6, r5, 2
/* 805796A8  38 A0 00 01 */	li r5, 1
/* 805796AC  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805796B0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805796B4  7D 89 03 A6 */	mtctr r12
/* 805796B8  4E 80 04 21 */	bctrl 
lbl_805796BC:
/* 805796BC  2C 1D 00 00 */	cmpwi r29, 0
/* 805796C0  41 82 00 A8 */	beq lbl_80579768
/* 805796C4  4B E4 5F E5 */	bl func_803BF6A8
/* 805796C8  4B E4 75 D1 */	bl mMsg_Check_MainNormalContinue
/* 805796CC  2C 03 00 01 */	cmpwi r3, 1
/* 805796D0  40 82 00 98 */	bne lbl_80579768
/* 805796D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805796D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805796DC  3C 63 00 02 */	addis r3, r3, 2
/* 805796E0  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805796E4  4B E3 9E D5 */	bl mHS_get_arrange_idx
/* 805796E8  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805796EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805796F0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805796F4  7C 60 22 14 */	add r3, r0, r4
/* 805796F8  3F A3 00 01 */	addis r29, r3, 1
/* 805796FC  3B BD 9C E8 */	addi r29, r29, -25368
/* 80579700  4B E0 9E 41 */	bl func_80383540
/* 80579704  4B E0 A4 69 */	bl mChoice_Get_ChoseNum
/* 80579708  2C 03 00 03 */	cmpwi r3, 3
/* 8057970C  40 80 00 38 */	bge lbl_80579744
/* 80579710  2C 03 00 00 */	cmpwi r3, 0
/* 80579714  40 80 00 08 */	bge lbl_8057971C
/* 80579718  48 00 00 2C */	b lbl_80579744
lbl_8057971C:
/* 8057971C  88 BD 00 2A */	lbz r5, 0x2a(r29)
/* 80579720  3B 80 00 02 */	li r28, 2
/* 80579724  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 80579728  38 04 00 01 */	addi r0, r4, 1
/* 8057972C  50 05 16 FA */	rlwimi r5, r0, 2, 0x1b, 0x1d
/* 80579730  98 BD 00 2A */	stb r5, 0x2a(r29)
/* 80579734  98 7D 00 2D */	stb r3, 0x2d(r29)
/* 80579738  7F A3 EB 78 */	mr r3, r29
/* 8057973C  4B FF DC C9 */	bl aNSC_set_rehouse_order_date
/* 80579740  48 00 00 08 */	b lbl_80579748
lbl_80579744:
/* 80579744  3B 80 00 05 */	li r28, 5
lbl_80579748:
/* 80579748  38 60 00 04 */	li r3, 4
/* 8057974C  38 80 00 09 */	li r4, 9
/* 80579750  38 A0 00 00 */	li r5, 0
/* 80579754  4B E1 EC E5 */	bl mDemo_Set_OrderValue
/* 80579758  7F C3 F3 78 */	mr r3, r30
/* 8057975C  7F E4 FB 78 */	mr r4, r31
/* 80579760  7F 85 E3 78 */	mr r5, r28
/* 80579764  48 00 2D 51 */	bl aNSC_setupAction
lbl_80579768:
/* 80579768  39 61 00 20 */	addi r11, r1, 0x20
/* 8057976C  4B B2 17 B1 */	bl func_8009AF1C
/* 80579770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579774  7C 08 03 A6 */	mtlr r0
/* 80579778  38 21 00 20 */	addi r1, r1, 0x20
/* 8057977C  4E 80 00 20 */	blr 
