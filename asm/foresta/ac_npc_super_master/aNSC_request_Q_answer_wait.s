lbl_80583650:
/* 80583650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583654  7C 08 02 A6 */	mflr r0
/* 80583658  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058365C  39 61 00 20 */	addi r11, r1, 0x20
/* 80583660  4B B1 78 71 */	bl func_8009AED0
/* 80583664  7C 7C 1B 78 */	mr r28, r3
/* 80583668  7C 9D 23 78 */	mr r29, r4
/* 8058366C  38 60 00 04 */	li r3, 4
/* 80583670  38 80 00 09 */	li r4, 9
/* 80583674  4B E1 4E 09 */	bl mDemo_Get_OrderValue
/* 80583678  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8058367C  4B E3 C0 2D */	bl func_803BF6A8
/* 80583680  2C 1F 00 00 */	cmpwi r31, 0
/* 80583684  7C 7E 1B 78 */	mr r30, r3
/* 80583688  41 82 00 C4 */	beq lbl_8058374C
/* 8058368C  4B E3 D6 0D */	bl mMsg_Check_MainNormalContinue
/* 80583690  2C 03 00 01 */	cmpwi r3, 1
/* 80583694  40 82 00 B8 */	bne lbl_8058374C
/* 80583698  38 60 00 17 */	li r3, 0x17
/* 8058369C  4B FF E6 ED */	bl aNSC_get_msg_no
/* 805836A0  4B E1 4E 75 */	bl mDemo_Set_msg_num
/* 805836A4  4B DF FE 9D */	bl func_80383540
/* 805836A8  4B E0 04 C5 */	bl mChoice_Get_ChoseNum
/* 805836AC  2C 03 00 01 */	cmpwi r3, 1
/* 805836B0  41 82 00 28 */	beq lbl_805836D8
/* 805836B4  40 80 00 10 */	bge lbl_805836C4
/* 805836B8  2C 03 00 00 */	cmpwi r3, 0
/* 805836BC  40 80 00 14 */	bge lbl_805836D0
/* 805836C0  48 00 00 3C */	b lbl_805836FC
lbl_805836C4:
/* 805836C4  2C 03 00 03 */	cmpwi r3, 3
/* 805836C8  40 80 00 34 */	bge lbl_805836FC
/* 805836CC  48 00 00 28 */	b lbl_805836F4
lbl_805836D0:
/* 805836D0  3B E0 00 01 */	li r31, 1
/* 805836D4  48 00 00 2C */	b lbl_80583700
lbl_805836D8:
/* 805836D8  4B FF D8 BD */	bl aNSC_getP_free_ftr_order
/* 805836DC  28 03 00 00 */	cmplwi r3, 0
/* 805836E0  40 82 00 0C */	bne lbl_805836EC
/* 805836E4  3B E0 00 02 */	li r31, 2
/* 805836E8  48 00 00 18 */	b lbl_80583700
lbl_805836EC:
/* 805836EC  3B E0 00 03 */	li r31, 3
/* 805836F0  48 00 00 10 */	b lbl_80583700
lbl_805836F4:
/* 805836F4  3B E0 00 00 */	li r31, 0
/* 805836F8  48 00 00 08 */	b lbl_80583700
lbl_805836FC:
/* 805836FC  3B E0 00 04 */	li r31, 4
lbl_80583700:
/* 80583700  38 60 00 04 */	li r3, 4
/* 80583704  38 80 00 09 */	li r4, 9
/* 80583708  38 A0 00 00 */	li r5, 0
/* 8058370C  4B E1 4D 2D */	bl mDemo_Set_OrderValue
/* 80583710  3C 60 80 6C */	lis r3, msg_no_1468@ha /* 0x806C17AC@ha */
/* 80583714  57 FF 10 3A */	slwi r31, r31, 2
/* 80583718  38 63 17 AC */	addi r3, r3, msg_no_1468@l /* 0x806C17AC@l */
/* 8058371C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80583720  4B FF E6 69 */	bl aNSC_get_msg_no
/* 80583724  7C 65 1B 78 */	mr r5, r3
/* 80583728  7F C3 F3 78 */	mr r3, r30
/* 8058372C  7F 84 E3 78 */	mr r4, r28
/* 80583730  4B FF E6 A1 */	bl aNSC_Set_continue_msg_num
/* 80583734  3C 80 80 6C */	lis r4, next_act_idx_1469@ha /* 0x806C17C0@ha */
/* 80583738  7F 83 E3 78 */	mr r3, r28
/* 8058373C  38 A4 17 C0 */	addi r5, r4, next_act_idx_1469@l /* 0x806C17C0@l */
/* 80583740  7F A4 EB 78 */	mr r4, r29
/* 80583744  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80583748  48 00 28 79 */	bl aNSC_setupAction
lbl_8058374C:
/* 8058374C  39 61 00 20 */	addi r11, r1, 0x20
/* 80583750  4B B1 77 CD */	bl func_8009AF1C
/* 80583754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583758  7C 08 03 A6 */	mtlr r0
/* 8058375C  38 21 00 20 */	addi r1, r1, 0x20
/* 80583760  4E 80 00 20 */	blr 
