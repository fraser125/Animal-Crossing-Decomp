lbl_8055C9DC:
/* 8055C9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055C9E0  7C 08 02 A6 */	mflr r0
/* 8055C9E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055C9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C9EC  4B B3 E4 E5 */	bl func_8009AED0
/* 8055C9F0  7C 7C 1B 78 */	mr r28, r3
/* 8055C9F4  7C 9D 23 78 */	mr r29, r4
/* 8055C9F8  4B E6 2C B1 */	bl func_803BF6A8
/* 8055C9FC  7C 7E 1B 78 */	mr r30, r3
/* 8055CA00  4B E6 2D 65 */	bl mMsg_Check_not_series_main_wait
/* 8055CA04  2C 03 00 01 */	cmpwi r3, 1
/* 8055CA08  40 82 00 84 */	bne lbl_8055CA8C
/* 8055CA0C  38 9D 1D EC */	addi r4, r29, 0x1dec
/* 8055CA10  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 8055CA14  A0 03 00 00 */	lhz r0, 0(r3)
/* 8055CA18  28 00 00 00 */	cmplwi r0, 0
/* 8055CA1C  40 82 00 0C */	bne lbl_8055CA28
/* 8055CA20  3B E0 00 01 */	li r31, 1
/* 8055CA24  48 00 00 10 */	b lbl_8055CA34
lbl_8055CA28:
/* 8055CA28  7F 83 E3 78 */	mr r3, r28
/* 8055CA2C  4B FF EA 51 */	bl aNSC_check_buy_item
/* 8055CA30  7C 7F 1B 78 */	mr r31, r3
lbl_8055CA34:
/* 8055CA34  2C 1F 00 05 */	cmpwi r31, 5
/* 8055CA38  40 82 00 0C */	bne lbl_8055CA44
/* 8055CA3C  38 A0 17 3D */	li r5, 0x173d
/* 8055CA40  48 00 00 1C */	b lbl_8055CA5C
lbl_8055CA44:
/* 8055CA44  3C 60 80 6B */	lis r3, msg_no_table@ha /* 0x806A9EA4@ha */
/* 8055CA48  57 E0 10 3A */	slwi r0, r31, 2
/* 8055CA4C  38 63 9E A4 */	addi r3, r3, msg_no_table@l /* 0x806A9EA4@l */
/* 8055CA50  7C 63 00 2E */	lwzx r3, r3, r0
/* 8055CA54  4B FF EB 89 */	bl aNSC_get_msg_no
/* 8055CA58  7C 65 1B 78 */	mr r5, r3
lbl_8055CA5C:
/* 8055CA5C  7F C3 F3 78 */	mr r3, r30
/* 8055CA60  7F 84 E3 78 */	mr r4, r28
/* 8055CA64  4B FF EB B1 */	bl aNSC_Set_continue_msg_num
/* 8055CA68  7F C3 F3 78 */	mr r3, r30
/* 8055CA6C  4B E6 42 BD */	bl mMsg_Set_ForceNext
/* 8055CA70  3C 60 80 6B */	lis r3, next_act_idx_1400@ha /* 0x806A9EC4@ha */
/* 8055CA74  57 E0 10 3A */	slwi r0, r31, 2
/* 8055CA78  38 83 9E C4 */	addi r4, r3, next_act_idx_1400@l /* 0x806A9EC4@l */
/* 8055CA7C  7F 83 E3 78 */	mr r3, r28
/* 8055CA80  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055CA84  7F A4 EB 78 */	mr r4, r29
/* 8055CA88  48 00 23 49 */	bl aNSC_setupAction
lbl_8055CA8C:
/* 8055CA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CA90  4B B3 E4 8D */	bl func_8009AF1C
/* 8055CA94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055CA98  7C 08 03 A6 */	mtlr r0
/* 8055CA9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055CAA0  4E 80 00 20 */	blr 
