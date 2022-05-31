lbl_8055181C:
/* 8055181C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551820  7C 08 02 A6 */	mflr r0
/* 80551824  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551828  39 61 00 20 */	addi r11, r1, 0x20
/* 8055182C  4B B4 96 A1 */	bl func_8009AECC
/* 80551830  7C 7B 1B 78 */	mr r27, r3
/* 80551834  7C 9C 23 78 */	mr r28, r4
/* 80551838  4B E6 DE 71 */	bl func_803BF6A8
/* 8055183C  7C 60 1B 78 */	mr r0, r3
/* 80551840  38 60 01 39 */	li r3, 0x139
/* 80551844  7C 1D 03 78 */	mr r29, r0
/* 80551848  4B FF CD B5 */	bl aNSC_get_msg_no
/* 8055184C  7C 7E 1B 78 */	mr r30, r3
/* 80551850  38 60 01 44 */	li r3, 0x144
/* 80551854  4B FF CD A9 */	bl aNSC_get_msg_no
/* 80551858  7C 7F 1B 78 */	mr r31, r3
/* 8055185C  7F A3 EB 78 */	mr r3, r29
/* 80551860  4B E6 E7 6D */	bl mMsg_Get_msg_num
/* 80551864  7C 03 F0 00 */	cmpw r3, r30
/* 80551868  41 82 00 0C */	beq lbl_80551874
/* 8055186C  7C 03 F8 00 */	cmpw r3, r31
/* 80551870  40 82 00 88 */	bne lbl_805518F8
lbl_80551874:
/* 80551874  7F A3 EB 78 */	mr r3, r29
/* 80551878  4B E6 F4 21 */	bl mMsg_Check_MainNormalContinue
/* 8055187C  2C 03 00 00 */	cmpwi r3, 0
/* 80551880  41 82 00 78 */	beq lbl_805518F8
/* 80551884  3B C0 FF FF */	li r30, -1
/* 80551888  4B E3 1C B9 */	bl func_80383540
/* 8055188C  4B E3 22 E1 */	bl mChoice_Get_ChoseNum
/* 80551890  2C 03 00 01 */	cmpwi r3, 1
/* 80551894  41 82 00 1C */	beq lbl_805518B0
/* 80551898  40 80 00 34 */	bge lbl_805518CC
/* 8055189C  2C 03 00 00 */	cmpwi r3, 0
/* 805518A0  40 80 00 08 */	bge lbl_805518A8
/* 805518A4  48 00 00 28 */	b lbl_805518CC
lbl_805518A8:
/* 805518A8  3B C0 00 00 */	li r30, 0
/* 805518AC  48 00 00 20 */	b lbl_805518CC
lbl_805518B0:
/* 805518B0  3B C0 00 01 */	li r30, 1
/* 805518B4  38 60 01 3A */	li r3, 0x13a
/* 805518B8  4B FF CD 45 */	bl aNSC_get_msg_no
/* 805518BC  7C 65 1B 78 */	mr r5, r3
/* 805518C0  7F A3 EB 78 */	mr r3, r29
/* 805518C4  7F 64 DB 78 */	mr r4, r27
/* 805518C8  4B FF CD BD */	bl aNSC_ChangeMsgData
lbl_805518CC:
/* 805518CC  2C 1E FF FF */	cmpwi r30, -1
/* 805518D0  41 82 00 28 */	beq lbl_805518F8
/* 805518D4  7F A3 EB 78 */	mr r3, r29
/* 805518D8  4B E6 F4 51 */	bl mMsg_Set_ForceNext
/* 805518DC  3C 60 80 6A */	lis r3, next_act_idx_1875@ha /* 0x806A5E7C@ha */
/* 805518E0  57 C0 10 3A */	slwi r0, r30, 2
/* 805518E4  38 83 5E 7C */	addi r4, r3, next_act_idx_1875@l /* 0x806A5E7C@l */
/* 805518E8  7F 63 DB 78 */	mr r3, r27
/* 805518EC  7C A4 00 2E */	lwzx r5, r4, r0
/* 805518F0  7F 84 E3 78 */	mr r4, r28
/* 805518F4  48 00 0F 41 */	bl aNSC_setupAction
lbl_805518F8:
/* 805518F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805518FC  4B B4 96 1D */	bl func_8009AF18
/* 80551900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551904  7C 08 03 A6 */	mtlr r0
/* 80551908  38 21 00 20 */	addi r1, r1, 0x20
/* 8055190C  4E 80 00 20 */	blr 
