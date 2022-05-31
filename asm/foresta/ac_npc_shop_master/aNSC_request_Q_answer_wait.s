lbl_80579B44:
/* 80579B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579B48  7C 08 02 A6 */	mflr r0
/* 80579B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579B50  39 61 00 20 */	addi r11, r1, 0x20
/* 80579B54  4B B2 13 7D */	bl func_8009AED0
/* 80579B58  7C 7C 1B 78 */	mr r28, r3
/* 80579B5C  7C 9D 23 78 */	mr r29, r4
/* 80579B60  38 60 00 04 */	li r3, 4
/* 80579B64  38 80 00 09 */	li r4, 9
/* 80579B68  4B E1 E9 15 */	bl mDemo_Get_OrderValue
/* 80579B6C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80579B70  4B E4 5B 39 */	bl func_803BF6A8
/* 80579B74  2C 1F 00 00 */	cmpwi r31, 0
/* 80579B78  7C 7E 1B 78 */	mr r30, r3
/* 80579B7C  41 82 00 C4 */	beq lbl_80579C40
/* 80579B80  4B E4 71 19 */	bl mMsg_Check_MainNormalContinue
/* 80579B84  2C 03 00 01 */	cmpwi r3, 1
/* 80579B88  40 82 00 B8 */	bne lbl_80579C40
/* 80579B8C  38 60 00 17 */	li r3, 0x17
/* 80579B90  4B FF E6 ED */	bl aNSC_get_msg_no
/* 80579B94  4B E1 E9 81 */	bl mDemo_Set_msg_num
/* 80579B98  4B E0 99 A9 */	bl func_80383540
/* 80579B9C  4B E0 9F D1 */	bl mChoice_Get_ChoseNum
/* 80579BA0  2C 03 00 01 */	cmpwi r3, 1
/* 80579BA4  41 82 00 28 */	beq lbl_80579BCC
/* 80579BA8  40 80 00 10 */	bge lbl_80579BB8
/* 80579BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80579BB0  40 80 00 14 */	bge lbl_80579BC4
/* 80579BB4  48 00 00 3C */	b lbl_80579BF0
lbl_80579BB8:
/* 80579BB8  2C 03 00 03 */	cmpwi r3, 3
/* 80579BBC  40 80 00 34 */	bge lbl_80579BF0
/* 80579BC0  48 00 00 28 */	b lbl_80579BE8
lbl_80579BC4:
/* 80579BC4  3B E0 00 01 */	li r31, 1
/* 80579BC8  48 00 00 2C */	b lbl_80579BF4
lbl_80579BCC:
/* 80579BCC  4B FF D8 BD */	bl aNSC_getP_free_ftr_order
/* 80579BD0  28 03 00 00 */	cmplwi r3, 0
/* 80579BD4  40 82 00 0C */	bne lbl_80579BE0
/* 80579BD8  3B E0 00 02 */	li r31, 2
/* 80579BDC  48 00 00 18 */	b lbl_80579BF4
lbl_80579BE0:
/* 80579BE0  3B E0 00 03 */	li r31, 3
/* 80579BE4  48 00 00 10 */	b lbl_80579BF4
lbl_80579BE8:
/* 80579BE8  3B E0 00 00 */	li r31, 0
/* 80579BEC  48 00 00 08 */	b lbl_80579BF4
lbl_80579BF0:
/* 80579BF0  3B E0 00 04 */	li r31, 4
lbl_80579BF4:
/* 80579BF4  38 60 00 04 */	li r3, 4
/* 80579BF8  38 80 00 09 */	li r4, 9
/* 80579BFC  38 A0 00 00 */	li r5, 0
/* 80579C00  4B E1 E8 39 */	bl mDemo_Set_OrderValue
/* 80579C04  3C 60 80 6C */	lis r3, msg_no_1428@ha /* 0x806C0268@ha */
/* 80579C08  57 FF 10 3A */	slwi r31, r31, 2
/* 80579C0C  38 63 02 68 */	addi r3, r3, msg_no_1428@l /* 0x806C0268@l */
/* 80579C10  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80579C14  4B FF E6 69 */	bl aNSC_get_msg_no
/* 80579C18  7C 65 1B 78 */	mr r5, r3
/* 80579C1C  7F C3 F3 78 */	mr r3, r30
/* 80579C20  7F 84 E3 78 */	mr r4, r28
/* 80579C24  4B FF E6 A1 */	bl aNSC_Set_continue_msg_num
/* 80579C28  3C 80 80 6C */	lis r4, next_act_idx_1429@ha /* 0x806C027C@ha */
/* 80579C2C  7F 83 E3 78 */	mr r3, r28
/* 80579C30  38 A4 02 7C */	addi r5, r4, next_act_idx_1429@l /* 0x806C027C@l */
/* 80579C34  7F A4 EB 78 */	mr r4, r29
/* 80579C38  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80579C3C  48 00 28 79 */	bl aNSC_setupAction
lbl_80579C40:
/* 80579C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80579C44  4B B2 12 D9 */	bl func_8009AF1C
/* 80579C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579C4C  7C 08 03 A6 */	mtlr r0
/* 80579C50  38 21 00 20 */	addi r1, r1, 0x20
/* 80579C54  4E 80 00 20 */	blr 
