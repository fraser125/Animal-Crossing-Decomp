lbl_80549B54:
/* 80549B54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549B58  7C 08 02 A6 */	mflr r0
/* 80549B5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549B60  39 61 00 20 */	addi r11, r1, 0x20
/* 80549B64  4B B5 13 6D */	bl func_8009AED0
/* 80549B68  7C 7C 1B 78 */	mr r28, r3
/* 80549B6C  7C 9D 23 78 */	mr r29, r4
/* 80549B70  4B E7 5B 39 */	bl func_803BF6A8
/* 80549B74  7C 7E 1B 78 */	mr r30, r3
/* 80549B78  4B E7 5B ED */	bl mMsg_Check_not_series_main_wait
/* 80549B7C  2C 03 00 01 */	cmpwi r3, 1
/* 80549B80  40 82 00 6C */	bne lbl_80549BEC
/* 80549B84  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 80549B88  38 00 00 00 */	li r0, 0
/* 80549B8C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80549B90  28 03 00 00 */	cmplwi r3, 0
/* 80549B94  41 82 00 14 */	beq lbl_80549BA8
/* 80549B98  B0 7C 09 F4 */	sth r3, 0x9f4(r28)
/* 80549B9C  38 80 00 02 */	li r4, 2
/* 80549BA0  4B FF C4 E1 */	bl aNSC_set_item_name_str
/* 80549BA4  38 00 00 01 */	li r0, 1
lbl_80549BA8:
/* 80549BA8  3C 60 80 6A */	lis r3, msg_no_1807@ha /* 0x806A4BF4@ha */
/* 80549BAC  54 1F 10 3A */	slwi r31, r0, 2
/* 80549BB0  38 63 4B F4 */	addi r3, r3, msg_no_1807@l /* 0x806A4BF4@l */
/* 80549BB4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80549BB8  4B FF D1 2D */	bl aNSC_get_msg_no
/* 80549BBC  7C 65 1B 78 */	mr r5, r3
/* 80549BC0  7F C3 F3 78 */	mr r3, r30
/* 80549BC4  7F 84 E3 78 */	mr r4, r28
/* 80549BC8  4B FF D1 A5 */	bl aNSC_ChangeMsgData
/* 80549BCC  7F C3 F3 78 */	mr r3, r30
/* 80549BD0  4B E7 71 59 */	bl mMsg_Set_ForceNext
/* 80549BD4  3C 80 80 6A */	lis r4, next_act_idx_1808@ha /* 0x806A4BFC@ha */
/* 80549BD8  7F 83 E3 78 */	mr r3, r28
/* 80549BDC  38 A4 4B FC */	addi r5, r4, next_act_idx_1808@l /* 0x806A4BFC@l */
/* 80549BE0  7F A4 EB 78 */	mr r4, r29
/* 80549BE4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80549BE8  48 00 13 35 */	bl aNSC_setupAction
lbl_80549BEC:
/* 80549BEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80549BF0  4B B5 13 2D */	bl func_8009AF1C
/* 80549BF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549BF8  7C 08 03 A6 */	mtlr r0
/* 80549BFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80549C00  4E 80 00 20 */	blr 
