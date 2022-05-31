lbl_80583764:
/* 80583764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583768  7C 08 02 A6 */	mflr r0
/* 8058376C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583770  39 61 00 20 */	addi r11, r1, 0x20
/* 80583774  4B B1 77 5D */	bl func_8009AED0
/* 80583778  7C 7E 1B 78 */	mr r30, r3
/* 8058377C  7C 9F 23 78 */	mr r31, r4
/* 80583780  38 60 00 04 */	li r3, 4
/* 80583784  38 80 00 09 */	li r4, 9
/* 80583788  4B E1 4C F5 */	bl mDemo_Get_OrderValue
/* 8058378C  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 80583790  4B E3 BF 19 */	bl func_803BF6A8
/* 80583794  2C 1D 00 00 */	cmpwi r29, 0
/* 80583798  7C 7C 1B 78 */	mr r28, r3
/* 8058379C  41 82 01 40 */	beq lbl_805838DC
/* 805837A0  4B E3 D4 F9 */	bl mMsg_Check_MainNormalContinue
/* 805837A4  2C 03 00 01 */	cmpwi r3, 1
/* 805837A8  40 82 01 34 */	bne lbl_805838DC
/* 805837AC  4B DF FD 95 */	bl func_80383540
/* 805837B0  4B E0 03 BD */	bl mChoice_Get_ChoseNum
/* 805837B4  2C 03 00 01 */	cmpwi r3, 1
/* 805837B8  41 82 00 58 */	beq lbl_80583810
/* 805837BC  40 80 00 10 */	bge lbl_805837CC
/* 805837C0  2C 03 00 00 */	cmpwi r3, 0
/* 805837C4  40 80 00 14 */	bge lbl_805837D8
/* 805837C8  48 00 00 C4 */	b lbl_8058388C
lbl_805837CC:
/* 805837CC  2C 03 00 03 */	cmpwi r3, 3
/* 805837D0  40 80 00 BC */	bge lbl_8058388C
/* 805837D4  48 00 00 5C */	b lbl_80583830
lbl_805837D8:
/* 805837D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805837DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805837E0  3C 63 00 02 */	addis r3, r3, 2
/* 805837E4  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 805837E8  28 00 00 00 */	cmplwi r0, 0
/* 805837EC  40 82 00 0C */	bne lbl_805837F8
/* 805837F0  3B A0 00 00 */	li r29, 0
/* 805837F4  48 00 00 9C */	b lbl_80583890
lbl_805837F8:
/* 805837F8  4B E3 28 B9 */	bl Kabu_get_price
/* 805837FC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80583800  38 80 00 01 */	li r4, 1
/* 80583804  4B FF D8 C5 */	bl aNSC_set_value_str
/* 80583808  3B A0 00 01 */	li r29, 1
/* 8058380C  48 00 00 84 */	b lbl_80583890
lbl_80583810:
/* 80583810  7F C3 F3 78 */	mr r3, r30
/* 80583814  4B FF DC E9 */	bl aNSC_check_possession_item_make_password
/* 80583818  2C 03 00 01 */	cmpwi r3, 1
/* 8058381C  40 82 00 0C */	bne lbl_80583828
/* 80583820  3B A0 00 02 */	li r29, 2
/* 80583824  48 00 00 6C */	b lbl_80583890
lbl_80583828:
/* 80583828  3B A0 00 03 */	li r29, 3
/* 8058382C  48 00 00 64 */	b lbl_80583890
lbl_80583830:
/* 80583830  4B E3 02 D9 */	bl mLd_PlayerManKindCheck
/* 80583834  2C 03 00 00 */	cmpwi r3, 0
/* 80583838  40 82 00 4C */	bne lbl_80583884
/* 8058383C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80583840  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80583844  3C 64 00 03 */	addis r3, r4, 3
/* 80583848  80 03 DB EC */	lwz r0, -0x2414(r3)
/* 8058384C  2C 00 00 03 */	cmpwi r0, 3
/* 80583850  41 80 00 0C */	blt lbl_8058385C
/* 80583854  3B A0 00 04 */	li r29, 4
/* 80583858  48 00 00 38 */	b lbl_80583890
lbl_8058385C:
/* 8058385C  3C 64 00 02 */	addis r3, r4, 2
/* 80583860  38 80 00 00 */	li r4, 0
/* 80583864  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80583868  4B E5 CE C1 */	bl mPr_GetPossessionItemIdx
/* 8058386C  2C 03 FF FF */	cmpwi r3, -1
/* 80583870  41 82 00 0C */	beq lbl_8058387C
/* 80583874  3B A0 00 05 */	li r29, 5
/* 80583878  48 00 00 18 */	b lbl_80583890
lbl_8058387C:
/* 8058387C  3B A0 00 06 */	li r29, 6
/* 80583880  48 00 00 10 */	b lbl_80583890
lbl_80583884:
/* 80583884  3B A0 00 07 */	li r29, 7
/* 80583888  48 00 00 08 */	b lbl_80583890
lbl_8058388C:
/* 8058388C  3B A0 00 08 */	li r29, 8
lbl_80583890:
/* 80583890  38 60 00 04 */	li r3, 4
/* 80583894  38 80 00 09 */	li r4, 9
/* 80583898  38 A0 00 00 */	li r5, 0
/* 8058389C  4B E1 4B 9D */	bl mDemo_Set_OrderValue
/* 805838A0  3C 60 80 6C */	lis r3, msg_no_1486@ha /* 0x806C17D4@ha */
/* 805838A4  57 BD 10 3A */	slwi r29, r29, 2
/* 805838A8  38 63 17 D4 */	addi r3, r3, msg_no_1486@l /* 0x806C17D4@l */
/* 805838AC  7C 63 E8 2E */	lwzx r3, r3, r29
/* 805838B0  4B FF E4 D9 */	bl aNSC_get_msg_no
/* 805838B4  7C 65 1B 78 */	mr r5, r3
/* 805838B8  7F 83 E3 78 */	mr r3, r28
/* 805838BC  7F C4 F3 78 */	mr r4, r30
/* 805838C0  4B FF E5 11 */	bl aNSC_Set_continue_msg_num
/* 805838C4  3C 80 80 6C */	lis r4, next_act_idx_1487@ha /* 0x806C17F8@ha */
/* 805838C8  7F C3 F3 78 */	mr r3, r30
/* 805838CC  38 A4 17 F8 */	addi r5, r4, next_act_idx_1487@l /* 0x806C17F8@l */
/* 805838D0  7F E4 FB 78 */	mr r4, r31
/* 805838D4  7C A5 E8 2E */	lwzx r5, r5, r29
/* 805838D8  48 00 26 E9 */	bl aNSC_setupAction
lbl_805838DC:
/* 805838DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805838E0  4B B1 76 3D */	bl func_8009AF1C
/* 805838E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805838E8  7C 08 03 A6 */	mtlr r0
/* 805838EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805838F0  4E 80 00 20 */	blr 
