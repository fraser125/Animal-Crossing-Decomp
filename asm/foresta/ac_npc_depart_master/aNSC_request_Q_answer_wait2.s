lbl_8054FFD8:
/* 8054FFD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054FFDC  7C 08 02 A6 */	mflr r0
/* 8054FFE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054FFE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FFE8  4B B4 AE E9 */	bl func_8009AED0
/* 8054FFEC  7C 7E 1B 78 */	mr r30, r3
/* 8054FFF0  7C 9F 23 78 */	mr r31, r4
/* 8054FFF4  38 60 00 04 */	li r3, 4
/* 8054FFF8  38 80 00 09 */	li r4, 9
/* 8054FFFC  4B E4 84 81 */	bl mDemo_Get_OrderValue
/* 80550000  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 80550004  4B E6 F6 A5 */	bl func_803BF6A8
/* 80550008  2C 1D 00 00 */	cmpwi r29, 0
/* 8055000C  7C 7C 1B 78 */	mr r28, r3
/* 80550010  41 82 01 40 */	beq lbl_80550150
/* 80550014  4B E7 0C 85 */	bl mMsg_Check_MainNormalContinue
/* 80550018  2C 03 00 01 */	cmpwi r3, 1
/* 8055001C  40 82 01 34 */	bne lbl_80550150
/* 80550020  4B E3 35 21 */	bl func_80383540
/* 80550024  4B E3 3B 49 */	bl mChoice_Get_ChoseNum
/* 80550028  2C 03 00 01 */	cmpwi r3, 1
/* 8055002C  41 82 00 58 */	beq lbl_80550084
/* 80550030  40 80 00 10 */	bge lbl_80550040
/* 80550034  2C 03 00 00 */	cmpwi r3, 0
/* 80550038  40 80 00 14 */	bge lbl_8055004C
/* 8055003C  48 00 00 C4 */	b lbl_80550100
lbl_80550040:
/* 80550040  2C 03 00 03 */	cmpwi r3, 3
/* 80550044  40 80 00 BC */	bge lbl_80550100
/* 80550048  48 00 00 5C */	b lbl_805500A4
lbl_8055004C:
/* 8055004C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80550050  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80550054  3C 63 00 02 */	addis r3, r3, 2
/* 80550058  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 8055005C  28 00 00 00 */	cmplwi r0, 0
/* 80550060  40 82 00 0C */	bne lbl_8055006C
/* 80550064  3B A0 00 00 */	li r29, 0
/* 80550068  48 00 00 9C */	b lbl_80550104
lbl_8055006C:
/* 8055006C  4B E6 60 45 */	bl Kabu_get_price
/* 80550070  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80550074  38 80 00 01 */	li r4, 1
/* 80550078  4B FF D8 C5 */	bl aNSC_set_value_str
/* 8055007C  3B A0 00 01 */	li r29, 1
/* 80550080  48 00 00 84 */	b lbl_80550104
lbl_80550084:
/* 80550084  7F C3 F3 78 */	mr r3, r30
/* 80550088  4B FF DC E9 */	bl aNSC_check_possession_item_make_password
/* 8055008C  2C 03 00 01 */	cmpwi r3, 1
/* 80550090  40 82 00 0C */	bne lbl_8055009C
/* 80550094  3B A0 00 02 */	li r29, 2
/* 80550098  48 00 00 6C */	b lbl_80550104
lbl_8055009C:
/* 8055009C  3B A0 00 03 */	li r29, 3
/* 805500A0  48 00 00 64 */	b lbl_80550104
lbl_805500A4:
/* 805500A4  4B E6 3A 65 */	bl mLd_PlayerManKindCheck
/* 805500A8  2C 03 00 00 */	cmpwi r3, 0
/* 805500AC  40 82 00 4C */	bne lbl_805500F8
/* 805500B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805500B4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805500B8  3C 64 00 03 */	addis r3, r4, 3
/* 805500BC  80 03 DB EC */	lwz r0, -0x2414(r3)
/* 805500C0  2C 00 00 03 */	cmpwi r0, 3
/* 805500C4  41 80 00 0C */	blt lbl_805500D0
/* 805500C8  3B A0 00 04 */	li r29, 4
/* 805500CC  48 00 00 38 */	b lbl_80550104
lbl_805500D0:
/* 805500D0  3C 64 00 02 */	addis r3, r4, 2
/* 805500D4  38 80 00 00 */	li r4, 0
/* 805500D8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805500DC  4B E9 06 4D */	bl mPr_GetPossessionItemIdx
/* 805500E0  2C 03 FF FF */	cmpwi r3, -1
/* 805500E4  41 82 00 0C */	beq lbl_805500F0
/* 805500E8  3B A0 00 05 */	li r29, 5
/* 805500EC  48 00 00 18 */	b lbl_80550104
lbl_805500F0:
/* 805500F0  3B A0 00 06 */	li r29, 6
/* 805500F4  48 00 00 10 */	b lbl_80550104
lbl_805500F8:
/* 805500F8  3B A0 00 07 */	li r29, 7
/* 805500FC  48 00 00 08 */	b lbl_80550104
lbl_80550100:
/* 80550100  3B A0 00 08 */	li r29, 8
lbl_80550104:
/* 80550104  38 60 00 04 */	li r3, 4
/* 80550108  38 80 00 09 */	li r4, 9
/* 8055010C  38 A0 00 00 */	li r5, 0
/* 80550110  4B E4 83 29 */	bl mDemo_Set_OrderValue
/* 80550114  3C 60 80 6A */	lis r3, msg_no_1471@ha /* 0x806A5CCC@ha */
/* 80550118  57 BD 10 3A */	slwi r29, r29, 2
/* 8055011C  38 63 5C CC */	addi r3, r3, msg_no_1471@l /* 0x806A5CCC@l */
/* 80550120  7C 63 E8 2E */	lwzx r3, r3, r29
/* 80550124  4B FF E4 D9 */	bl aNSC_get_msg_no
/* 80550128  7C 65 1B 78 */	mr r5, r3
/* 8055012C  7F 83 E3 78 */	mr r3, r28
/* 80550130  7F C4 F3 78 */	mr r4, r30
/* 80550134  4B FF E5 11 */	bl aNSC_Set_continue_msg_num
/* 80550138  3C 80 80 6A */	lis r4, next_act_idx_1472@ha /* 0x806A5CF0@ha */
/* 8055013C  7F C3 F3 78 */	mr r3, r30
/* 80550140  38 A4 5C F0 */	addi r5, r4, next_act_idx_1472@l /* 0x806A5CF0@l */
/* 80550144  7F E4 FB 78 */	mr r4, r31
/* 80550148  7C A5 E8 2E */	lwzx r5, r5, r29
/* 8055014C  48 00 26 E9 */	bl aNSC_setupAction
lbl_80550150:
/* 80550150  39 61 00 20 */	addi r11, r1, 0x20
/* 80550154  4B B4 AD C9 */	bl func_8009AF1C
/* 80550158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055015C  7C 08 03 A6 */	mtlr r0
/* 80550160  38 21 00 20 */	addi r1, r1, 0x20
/* 80550164  4E 80 00 20 */	blr 
