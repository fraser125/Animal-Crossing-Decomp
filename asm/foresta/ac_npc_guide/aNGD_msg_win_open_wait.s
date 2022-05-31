lbl_805537DC:
/* 805537DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805537E0  7C 08 02 A6 */	mflr r0
/* 805537E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805537E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805537EC  4B B4 76 E5 */	bl func_8009AED0
/* 805537F0  7C 7C 1B 78 */	mr r28, r3
/* 805537F4  7C 9D 23 78 */	mr r29, r4
/* 805537F8  4B E6 BE B1 */	bl func_803BF6A8
/* 805537FC  7C 7E 1B 78 */	mr r30, r3
/* 80553800  4B E6 BF 65 */	bl mMsg_Check_not_series_main_wait
/* 80553804  2C 03 00 01 */	cmpwi r3, 1
/* 80553808  40 82 00 8C */	bne lbl_80553894
/* 8055380C  80 1C 09 98 */	lwz r0, 0x998(r28)
/* 80553810  3B E0 FF FF */	li r31, -1
/* 80553814  2C 00 00 0C */	cmpwi r0, 0xc
/* 80553818  41 82 00 28 */	beq lbl_80553840
/* 8055381C  40 80 00 10 */	bge lbl_8055382C
/* 80553820  2C 00 00 06 */	cmpwi r0, 6
/* 80553824  41 82 00 14 */	beq lbl_80553838
/* 80553828  48 00 00 24 */	b lbl_8055384C
lbl_8055382C:
/* 8055382C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80553830  41 82 00 18 */	beq lbl_80553848
/* 80553834  48 00 00 18 */	b lbl_8055384C
lbl_80553838:
/* 80553838  3B E0 00 00 */	li r31, 0
/* 8055383C  48 00 00 10 */	b lbl_8055384C
lbl_80553840:
/* 80553840  3B E0 00 01 */	li r31, 1
/* 80553844  48 00 00 08 */	b lbl_8055384C
lbl_80553848:
/* 80553848  3B E0 00 02 */	li r31, 2
lbl_8055384C:
/* 8055384C  2C 1F 00 00 */	cmpwi r31, 0
/* 80553850  41 80 00 44 */	blt lbl_80553894
/* 80553854  7F C3 F3 78 */	mr r3, r30
/* 80553858  4B E6 D4 F5 */	bl mMsg_Unset_LockContinue
/* 8055385C  3C 60 80 6A */	lis r3, msg_no@ha /* 0x806A62D8@ha */
/* 80553860  57 FF 10 3A */	slwi r31, r31, 2
/* 80553864  38 83 62 D8 */	addi r4, r3, msg_no@l /* 0x806A62D8@l */
/* 80553868  7F C3 F3 78 */	mr r3, r30
/* 8055386C  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80553870  4B E6 C7 55 */	bl mMsg_Set_continue_msg_num
/* 80553874  7F C3 F3 78 */	mr r3, r30
/* 80553878  4B E6 D4 B1 */	bl mMsg_Set_ForceNext
/* 8055387C  3C 80 80 6A */	lis r4, next_act_idx@ha /* 0x806A62E4@ha */
/* 80553880  7F 83 E3 78 */	mr r3, r28
/* 80553884  38 A4 62 E4 */	addi r5, r4, next_act_idx@l /* 0x806A62E4@l */
/* 80553888  7F A4 EB 78 */	mr r4, r29
/* 8055388C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80553890  48 00 10 79 */	bl aNGD_setupAction
lbl_80553894:
/* 80553894  39 61 00 20 */	addi r11, r1, 0x20
/* 80553898  4B B4 76 85 */	bl func_8009AF1C
/* 8055389C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805538A0  7C 08 03 A6 */	mtlr r0
/* 805538A4  38 21 00 20 */	addi r1, r1, 0x20
/* 805538A8  4E 80 00 20 */	blr 
