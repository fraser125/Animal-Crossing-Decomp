lbl_805507A4:
/* 805507A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805507A8  7C 08 02 A6 */	mflr r0
/* 805507AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805507B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805507B4  4B B4 A7 19 */	bl func_8009AECC
/* 805507B8  7C 7B 1B 78 */	mr r27, r3
/* 805507BC  7C 9C 23 78 */	mr r28, r4
/* 805507C0  4B E6 EE E9 */	bl func_803BF6A8
/* 805507C4  7C 60 1B 78 */	mr r0, r3
/* 805507C8  38 60 00 1C */	li r3, 0x1c
/* 805507CC  7C 1D 03 78 */	mr r29, r0
/* 805507D0  4B FF DE 2D */	bl aNSC_get_msg_no
/* 805507D4  7C 7E 1B 78 */	mr r30, r3
/* 805507D8  38 60 00 1D */	li r3, 0x1d
/* 805507DC  4B FF DE 21 */	bl aNSC_get_msg_no
/* 805507E0  7C 7F 1B 78 */	mr r31, r3
/* 805507E4  7F A3 EB 78 */	mr r3, r29
/* 805507E8  4B E6 F7 E5 */	bl mMsg_Get_msg_num
/* 805507EC  7C 03 F0 00 */	cmpw r3, r30
/* 805507F0  41 82 00 0C */	beq lbl_805507FC
/* 805507F4  7C 03 F8 00 */	cmpw r3, r31
/* 805507F8  40 82 00 80 */	bne lbl_80550878
lbl_805507FC:
/* 805507FC  7F A3 EB 78 */	mr r3, r29
/* 80550800  4B E7 04 99 */	bl mMsg_Check_MainNormalContinue
/* 80550804  2C 03 00 00 */	cmpwi r3, 0
/* 80550808  41 82 00 70 */	beq lbl_80550878
/* 8055080C  3B C0 FF FF */	li r30, -1
/* 80550810  4B E3 2D 31 */	bl func_80383540
/* 80550814  4B E3 33 59 */	bl mChoice_Get_ChoseNum
/* 80550818  2C 03 00 01 */	cmpwi r3, 1
/* 8055081C  41 82 00 1C */	beq lbl_80550838
/* 80550820  40 80 00 34 */	bge lbl_80550854
/* 80550824  2C 03 00 00 */	cmpwi r3, 0
/* 80550828  40 80 00 08 */	bge lbl_80550830
/* 8055082C  48 00 00 28 */	b lbl_80550854
lbl_80550830:
/* 80550830  3B C0 00 00 */	li r30, 0
/* 80550834  48 00 00 20 */	b lbl_80550854
lbl_80550838:
/* 80550838  38 60 00 15 */	li r3, 0x15
/* 8055083C  4B FF DD C1 */	bl aNSC_get_msg_no
/* 80550840  7C 65 1B 78 */	mr r5, r3
/* 80550844  7F A3 EB 78 */	mr r3, r29
/* 80550848  7F 64 DB 78 */	mr r4, r27
/* 8055084C  4B FF DD F9 */	bl aNSC_Set_continue_msg_num
/* 80550850  3B C0 00 01 */	li r30, 1
lbl_80550854:
/* 80550854  2C 1E FF FF */	cmpwi r30, -1
/* 80550858  41 82 00 20 */	beq lbl_80550878
/* 8055085C  3C 60 80 6A */	lis r3, next_act_idx_1608@ha /* 0x806A5D74@ha */
/* 80550860  57 C0 10 3A */	slwi r0, r30, 2
/* 80550864  38 83 5D 74 */	addi r4, r3, next_act_idx_1608@l /* 0x806A5D74@l */
/* 80550868  7F 63 DB 78 */	mr r3, r27
/* 8055086C  7C A4 00 2E */	lwzx r5, r4, r0
/* 80550870  7F 84 E3 78 */	mr r4, r28
/* 80550874  48 00 1F C1 */	bl aNSC_setupAction
lbl_80550878:
/* 80550878  39 61 00 20 */	addi r11, r1, 0x20
/* 8055087C  4B B4 A6 9D */	bl func_8009AF18
/* 80550880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550884  7C 08 03 A6 */	mtlr r0
/* 80550888  38 21 00 20 */	addi r1, r1, 0x20
/* 8055088C  4E 80 00 20 */	blr 
