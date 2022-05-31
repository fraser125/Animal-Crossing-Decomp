lbl_805485AC:
/* 805485AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805485B0  7C 08 02 A6 */	mflr r0
/* 805485B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805485B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805485BC  4B B5 29 15 */	bl func_8009AED0
/* 805485C0  7C 7C 1B 78 */	mr r28, r3
/* 805485C4  7C 9D 23 78 */	mr r29, r4
/* 805485C8  38 60 00 04 */	li r3, 4
/* 805485CC  38 80 00 09 */	li r4, 9
/* 805485D0  4B E4 FE AD */	bl mDemo_Get_OrderValue
/* 805485D4  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805485D8  4B E7 70 D1 */	bl func_803BF6A8
/* 805485DC  2C 1F 00 00 */	cmpwi r31, 0
/* 805485E0  7C 7E 1B 78 */	mr r30, r3
/* 805485E4  41 82 00 C4 */	beq lbl_805486A8
/* 805485E8  4B E7 86 B1 */	bl mMsg_Check_MainNormalContinue
/* 805485EC  2C 03 00 01 */	cmpwi r3, 1
/* 805485F0  40 82 00 B8 */	bne lbl_805486A8
/* 805485F4  38 60 00 17 */	li r3, 0x17
/* 805485F8  4B FF E6 ED */	bl aNSC_get_msg_no
/* 805485FC  4B E4 FF 19 */	bl mDemo_Set_msg_num
/* 80548600  4B E3 AF 41 */	bl func_80383540
/* 80548604  4B E3 B5 69 */	bl mChoice_Get_ChoseNum
/* 80548608  2C 03 00 01 */	cmpwi r3, 1
/* 8054860C  41 82 00 28 */	beq lbl_80548634
/* 80548610  40 80 00 10 */	bge lbl_80548620
/* 80548614  2C 03 00 00 */	cmpwi r3, 0
/* 80548618  40 80 00 14 */	bge lbl_8054862C
/* 8054861C  48 00 00 3C */	b lbl_80548658
lbl_80548620:
/* 80548620  2C 03 00 03 */	cmpwi r3, 3
/* 80548624  40 80 00 34 */	bge lbl_80548658
/* 80548628  48 00 00 28 */	b lbl_80548650
lbl_8054862C:
/* 8054862C  3B E0 00 01 */	li r31, 1
/* 80548630  48 00 00 2C */	b lbl_8054865C
lbl_80548634:
/* 80548634  4B FF D8 BD */	bl aNSC_getP_free_ftr_order
/* 80548638  28 03 00 00 */	cmplwi r3, 0
/* 8054863C  40 82 00 0C */	bne lbl_80548648
/* 80548640  3B E0 00 02 */	li r31, 2
/* 80548644  48 00 00 18 */	b lbl_8054865C
lbl_80548648:
/* 80548648  3B E0 00 03 */	li r31, 3
/* 8054864C  48 00 00 10 */	b lbl_8054865C
lbl_80548650:
/* 80548650  3B E0 00 00 */	li r31, 0
/* 80548654  48 00 00 08 */	b lbl_8054865C
lbl_80548658:
/* 80548658  3B E0 00 04 */	li r31, 4
lbl_8054865C:
/* 8054865C  38 60 00 04 */	li r3, 4
/* 80548660  38 80 00 09 */	li r4, 9
/* 80548664  38 A0 00 00 */	li r5, 0
/* 80548668  4B E4 FD D1 */	bl mDemo_Set_OrderValue
/* 8054866C  3C 60 80 6A */	lis r3, msg_no_1441@ha /* 0x806A4A90@ha */
/* 80548670  57 FF 10 3A */	slwi r31, r31, 2
/* 80548674  38 63 4A 90 */	addi r3, r3, msg_no_1441@l /* 0x806A4A90@l */
/* 80548678  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8054867C  4B FF E6 69 */	bl aNSC_get_msg_no
/* 80548680  7C 65 1B 78 */	mr r5, r3
/* 80548684  7F C3 F3 78 */	mr r3, r30
/* 80548688  7F 84 E3 78 */	mr r4, r28
/* 8054868C  4B FF E6 A1 */	bl aNSC_Set_continue_msg_num
/* 80548690  3C 80 80 6A */	lis r4, next_act_idx_1442@ha /* 0x806A4AA4@ha */
/* 80548694  7F 83 E3 78 */	mr r3, r28
/* 80548698  38 A4 4A A4 */	addi r5, r4, next_act_idx_1442@l /* 0x806A4AA4@l */
/* 8054869C  7F A4 EB 78 */	mr r4, r29
/* 805486A0  7C A5 F8 2E */	lwzx r5, r5, r31
/* 805486A4  48 00 28 79 */	bl aNSC_setupAction
lbl_805486A8:
/* 805486A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805486AC  4B B5 28 71 */	bl func_8009AF1C
/* 805486B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805486B4  7C 08 03 A6 */	mtlr r0
/* 805486B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805486BC  4E 80 00 20 */	blr 
