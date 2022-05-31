lbl_8055C6D0:
/* 8055C6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055C6D4  7C 08 02 A6 */	mflr r0
/* 8055C6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055C6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C6E0  4B B3 E7 F1 */	bl func_8009AED0
/* 8055C6E4  7C 7E 1B 78 */	mr r30, r3
/* 8055C6E8  7C 9F 23 78 */	mr r31, r4
/* 8055C6EC  38 60 00 04 */	li r3, 4
/* 8055C6F0  38 80 00 09 */	li r4, 9
/* 8055C6F4  4B E3 BD 89 */	bl mDemo_Get_OrderValue
/* 8055C6F8  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8055C6FC  4B E6 2F AD */	bl func_803BF6A8
/* 8055C700  2C 1D 00 00 */	cmpwi r29, 0
/* 8055C704  7C 7C 1B 78 */	mr r28, r3
/* 8055C708  41 82 01 40 */	beq lbl_8055C848
/* 8055C70C  4B E6 45 8D */	bl mMsg_Check_MainNormalContinue
/* 8055C710  2C 03 00 01 */	cmpwi r3, 1
/* 8055C714  40 82 01 34 */	bne lbl_8055C848
/* 8055C718  4B E2 6E 29 */	bl func_80383540
/* 8055C71C  4B E2 74 51 */	bl mChoice_Get_ChoseNum
/* 8055C720  2C 03 00 01 */	cmpwi r3, 1
/* 8055C724  41 82 00 58 */	beq lbl_8055C77C
/* 8055C728  40 80 00 10 */	bge lbl_8055C738
/* 8055C72C  2C 03 00 00 */	cmpwi r3, 0
/* 8055C730  40 80 00 14 */	bge lbl_8055C744
/* 8055C734  48 00 00 C4 */	b lbl_8055C7F8
lbl_8055C738:
/* 8055C738  2C 03 00 03 */	cmpwi r3, 3
/* 8055C73C  40 80 00 BC */	bge lbl_8055C7F8
/* 8055C740  48 00 00 5C */	b lbl_8055C79C
lbl_8055C744:
/* 8055C744  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055C748  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055C74C  3C 63 00 02 */	addis r3, r3, 2
/* 8055C750  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 8055C754  28 00 00 00 */	cmplwi r0, 0
/* 8055C758  40 82 00 0C */	bne lbl_8055C764
/* 8055C75C  3B A0 00 00 */	li r29, 0
/* 8055C760  48 00 00 9C */	b lbl_8055C7FC
lbl_8055C764:
/* 8055C764  4B E5 99 4D */	bl Kabu_get_price
/* 8055C768  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8055C76C  38 80 00 01 */	li r4, 1
/* 8055C770  4B FF E1 35 */	bl aNSC_set_value_str
/* 8055C774  3B A0 00 01 */	li r29, 1
/* 8055C778  48 00 00 84 */	b lbl_8055C7FC
lbl_8055C77C:
/* 8055C77C  7F C3 F3 78 */	mr r3, r30
/* 8055C780  4B FF E5 59 */	bl aNSC_check_possession_item_make_password
/* 8055C784  2C 03 00 01 */	cmpwi r3, 1
/* 8055C788  40 82 00 0C */	bne lbl_8055C794
/* 8055C78C  3B A0 00 02 */	li r29, 2
/* 8055C790  48 00 00 6C */	b lbl_8055C7FC
lbl_8055C794:
/* 8055C794  3B A0 00 03 */	li r29, 3
/* 8055C798  48 00 00 64 */	b lbl_8055C7FC
lbl_8055C79C:
/* 8055C79C  4B E5 73 6D */	bl mLd_PlayerManKindCheck
/* 8055C7A0  2C 03 00 00 */	cmpwi r3, 0
/* 8055C7A4  40 82 00 4C */	bne lbl_8055C7F0
/* 8055C7A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055C7AC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055C7B0  3C 64 00 03 */	addis r3, r4, 3
/* 8055C7B4  80 03 DB EC */	lwz r0, -0x2414(r3)
/* 8055C7B8  2C 00 00 03 */	cmpwi r0, 3
/* 8055C7BC  41 80 00 0C */	blt lbl_8055C7C8
/* 8055C7C0  3B A0 00 04 */	li r29, 4
/* 8055C7C4  48 00 00 38 */	b lbl_8055C7FC
lbl_8055C7C8:
/* 8055C7C8  3C 64 00 02 */	addis r3, r4, 2
/* 8055C7CC  38 80 00 00 */	li r4, 0
/* 8055C7D0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055C7D4  4B E8 3F 55 */	bl mPr_GetPossessionItemIdx
/* 8055C7D8  2C 03 FF FF */	cmpwi r3, -1
/* 8055C7DC  41 82 00 0C */	beq lbl_8055C7E8
/* 8055C7E0  3B A0 00 05 */	li r29, 5
/* 8055C7E4  48 00 00 18 */	b lbl_8055C7FC
lbl_8055C7E8:
/* 8055C7E8  3B A0 00 06 */	li r29, 6
/* 8055C7EC  48 00 00 10 */	b lbl_8055C7FC
lbl_8055C7F0:
/* 8055C7F0  3B A0 00 07 */	li r29, 7
/* 8055C7F4  48 00 00 08 */	b lbl_8055C7FC
lbl_8055C7F8:
/* 8055C7F8  3B A0 00 08 */	li r29, 8
lbl_8055C7FC:
/* 8055C7FC  38 60 00 04 */	li r3, 4
/* 8055C800  38 80 00 09 */	li r4, 9
/* 8055C804  38 A0 00 00 */	li r5, 0
/* 8055C808  4B E3 BC 31 */	bl mDemo_Set_OrderValue
/* 8055C80C  3C 60 80 6B */	lis r3, msg_no_1343@ha /* 0x806A9E5C@ha */
/* 8055C810  57 BD 10 3A */	slwi r29, r29, 2
/* 8055C814  38 63 9E 5C */	addi r3, r3, msg_no_1343@l /* 0x806A9E5C@l */
/* 8055C818  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8055C81C  4B FF ED C1 */	bl aNSC_get_msg_no
/* 8055C820  7C 65 1B 78 */	mr r5, r3
/* 8055C824  7F 83 E3 78 */	mr r3, r28
/* 8055C828  7F C4 F3 78 */	mr r4, r30
/* 8055C82C  4B FF ED E9 */	bl aNSC_Set_continue_msg_num
/* 8055C830  3C 80 80 6B */	lis r4, next_act_idx_1344@ha /* 0x806A9E80@ha */
/* 8055C834  7F C3 F3 78 */	mr r3, r30
/* 8055C838  38 A4 9E 80 */	addi r5, r4, next_act_idx_1344@l /* 0x806A9E80@l */
/* 8055C83C  7F E4 FB 78 */	mr r4, r31
/* 8055C840  7C A5 E8 2E */	lwzx r5, r5, r29
/* 8055C844  48 00 25 8D */	bl aNSC_setupAction
lbl_8055C848:
/* 8055C848  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C84C  4B B3 E6 D1 */	bl func_8009AF1C
/* 8055C850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055C854  7C 08 03 A6 */	mtlr r0
/* 8055C858  38 21 00 20 */	addi r1, r1, 0x20
/* 8055C85C  4E 80 00 20 */	blr 
