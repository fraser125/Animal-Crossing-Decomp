lbl_805486C0:
/* 805486C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805486C4  7C 08 02 A6 */	mflr r0
/* 805486C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805486CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805486D0  4B B5 28 01 */	bl func_8009AED0
/* 805486D4  7C 7E 1B 78 */	mr r30, r3
/* 805486D8  7C 9F 23 78 */	mr r31, r4
/* 805486DC  38 60 00 04 */	li r3, 4
/* 805486E0  38 80 00 09 */	li r4, 9
/* 805486E4  4B E4 FD 99 */	bl mDemo_Get_OrderValue
/* 805486E8  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 805486EC  4B E7 6F BD */	bl func_803BF6A8
/* 805486F0  2C 1D 00 00 */	cmpwi r29, 0
/* 805486F4  7C 7C 1B 78 */	mr r28, r3
/* 805486F8  41 82 01 40 */	beq lbl_80548838
/* 805486FC  4B E7 85 9D */	bl mMsg_Check_MainNormalContinue
/* 80548700  2C 03 00 01 */	cmpwi r3, 1
/* 80548704  40 82 01 34 */	bne lbl_80548838
/* 80548708  4B E3 AE 39 */	bl func_80383540
/* 8054870C  4B E3 B4 61 */	bl mChoice_Get_ChoseNum
/* 80548710  2C 03 00 01 */	cmpwi r3, 1
/* 80548714  41 82 00 58 */	beq lbl_8054876C
/* 80548718  40 80 00 10 */	bge lbl_80548728
/* 8054871C  2C 03 00 00 */	cmpwi r3, 0
/* 80548720  40 80 00 14 */	bge lbl_80548734
/* 80548724  48 00 00 C4 */	b lbl_805487E8
lbl_80548728:
/* 80548728  2C 03 00 03 */	cmpwi r3, 3
/* 8054872C  40 80 00 BC */	bge lbl_805487E8
/* 80548730  48 00 00 5C */	b lbl_8054878C
lbl_80548734:
/* 80548734  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548738  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054873C  3C 63 00 02 */	addis r3, r3, 2
/* 80548740  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 80548744  28 00 00 00 */	cmplwi r0, 0
/* 80548748  40 82 00 0C */	bne lbl_80548754
/* 8054874C  3B A0 00 00 */	li r29, 0
/* 80548750  48 00 00 9C */	b lbl_805487EC
lbl_80548754:
/* 80548754  4B E6 D9 5D */	bl Kabu_get_price
/* 80548758  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8054875C  38 80 00 01 */	li r4, 1
/* 80548760  4B FF D8 C5 */	bl aNSC_set_value_str
/* 80548764  3B A0 00 01 */	li r29, 1
/* 80548768  48 00 00 84 */	b lbl_805487EC
lbl_8054876C:
/* 8054876C  7F C3 F3 78 */	mr r3, r30
/* 80548770  4B FF DC E9 */	bl aNSC_check_possession_item_make_password
/* 80548774  2C 03 00 01 */	cmpwi r3, 1
/* 80548778  40 82 00 0C */	bne lbl_80548784
/* 8054877C  3B A0 00 02 */	li r29, 2
/* 80548780  48 00 00 6C */	b lbl_805487EC
lbl_80548784:
/* 80548784  3B A0 00 03 */	li r29, 3
/* 80548788  48 00 00 64 */	b lbl_805487EC
lbl_8054878C:
/* 8054878C  4B E6 B3 7D */	bl mLd_PlayerManKindCheck
/* 80548790  2C 03 00 00 */	cmpwi r3, 0
/* 80548794  40 82 00 4C */	bne lbl_805487E0
/* 80548798  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054879C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805487A0  3C 64 00 03 */	addis r3, r4, 3
/* 805487A4  80 03 DB EC */	lwz r0, -0x2414(r3)
/* 805487A8  2C 00 00 03 */	cmpwi r0, 3
/* 805487AC  41 80 00 0C */	blt lbl_805487B8
/* 805487B0  3B A0 00 04 */	li r29, 4
/* 805487B4  48 00 00 38 */	b lbl_805487EC
lbl_805487B8:
/* 805487B8  3C 64 00 02 */	addis r3, r4, 2
/* 805487BC  38 80 00 00 */	li r4, 0
/* 805487C0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805487C4  4B E9 7F 65 */	bl mPr_GetPossessionItemIdx
/* 805487C8  2C 03 FF FF */	cmpwi r3, -1
/* 805487CC  41 82 00 0C */	beq lbl_805487D8
/* 805487D0  3B A0 00 05 */	li r29, 5
/* 805487D4  48 00 00 18 */	b lbl_805487EC
lbl_805487D8:
/* 805487D8  3B A0 00 06 */	li r29, 6
/* 805487DC  48 00 00 10 */	b lbl_805487EC
lbl_805487E0:
/* 805487E0  3B A0 00 07 */	li r29, 7
/* 805487E4  48 00 00 08 */	b lbl_805487EC
lbl_805487E8:
/* 805487E8  3B A0 00 08 */	li r29, 8
lbl_805487EC:
/* 805487EC  38 60 00 04 */	li r3, 4
/* 805487F0  38 80 00 09 */	li r4, 9
/* 805487F4  38 A0 00 00 */	li r5, 0
/* 805487F8  4B E4 FC 41 */	bl mDemo_Set_OrderValue
/* 805487FC  3C 60 80 6A */	lis r3, msg_no_1459@ha /* 0x806A4AB8@ha */
/* 80548800  57 BD 10 3A */	slwi r29, r29, 2
/* 80548804  38 63 4A B8 */	addi r3, r3, msg_no_1459@l /* 0x806A4AB8@l */
/* 80548808  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8054880C  4B FF E4 D9 */	bl aNSC_get_msg_no
/* 80548810  7C 65 1B 78 */	mr r5, r3
/* 80548814  7F 83 E3 78 */	mr r3, r28
/* 80548818  7F C4 F3 78 */	mr r4, r30
/* 8054881C  4B FF E5 11 */	bl aNSC_Set_continue_msg_num
/* 80548820  3C 80 80 6A */	lis r4, next_act_idx_1460@ha /* 0x806A4ADC@ha */
/* 80548824  7F C3 F3 78 */	mr r3, r30
/* 80548828  38 A4 4A DC */	addi r5, r4, next_act_idx_1460@l /* 0x806A4ADC@l */
/* 8054882C  7F E4 FB 78 */	mr r4, r31
/* 80548830  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80548834  48 00 26 E9 */	bl aNSC_setupAction
lbl_80548838:
/* 80548838  39 61 00 20 */	addi r11, r1, 0x20
/* 8054883C  4B B5 26 E1 */	bl func_8009AF1C
/* 80548840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80548844  7C 08 03 A6 */	mtlr r0
/* 80548848  38 21 00 20 */	addi r1, r1, 0x20
/* 8054884C  4E 80 00 20 */	blr 
