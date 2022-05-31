lbl_8055CE9C:
/* 8055CE9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055CEA0  7C 08 02 A6 */	mflr r0
/* 8055CEA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055CEA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CEAC  4B B3 E0 21 */	bl func_8009AECC
/* 8055CEB0  7C 7B 1B 78 */	mr r27, r3
/* 8055CEB4  7C 9C 23 78 */	mr r28, r4
/* 8055CEB8  4B E6 27 F1 */	bl func_803BF6A8
/* 8055CEBC  7C 60 1B 78 */	mr r0, r3
/* 8055CEC0  38 60 00 1C */	li r3, 0x1c
/* 8055CEC4  7C 1D 03 78 */	mr r29, r0
/* 8055CEC8  4B FF E7 15 */	bl aNSC_get_msg_no
/* 8055CECC  7C 7E 1B 78 */	mr r30, r3
/* 8055CED0  38 60 00 1D */	li r3, 0x1d
/* 8055CED4  4B FF E7 09 */	bl aNSC_get_msg_no
/* 8055CED8  7C 7F 1B 78 */	mr r31, r3
/* 8055CEDC  7F A3 EB 78 */	mr r3, r29
/* 8055CEE0  4B E6 30 ED */	bl mMsg_Get_msg_num
/* 8055CEE4  7C 03 F0 00 */	cmpw r3, r30
/* 8055CEE8  41 82 00 0C */	beq lbl_8055CEF4
/* 8055CEEC  7C 03 F8 00 */	cmpw r3, r31
/* 8055CEF0  40 82 00 80 */	bne lbl_8055CF70
lbl_8055CEF4:
/* 8055CEF4  7F A3 EB 78 */	mr r3, r29
/* 8055CEF8  4B E6 3D A1 */	bl mMsg_Check_MainNormalContinue
/* 8055CEFC  2C 03 00 00 */	cmpwi r3, 0
/* 8055CF00  41 82 00 70 */	beq lbl_8055CF70
/* 8055CF04  3B C0 FF FF */	li r30, -1
/* 8055CF08  4B E2 66 39 */	bl func_80383540
/* 8055CF0C  4B E2 6C 61 */	bl mChoice_Get_ChoseNum
/* 8055CF10  2C 03 00 01 */	cmpwi r3, 1
/* 8055CF14  41 82 00 1C */	beq lbl_8055CF30
/* 8055CF18  40 80 00 34 */	bge lbl_8055CF4C
/* 8055CF1C  2C 03 00 00 */	cmpwi r3, 0
/* 8055CF20  40 80 00 08 */	bge lbl_8055CF28
/* 8055CF24  48 00 00 28 */	b lbl_8055CF4C
lbl_8055CF28:
/* 8055CF28  3B C0 00 00 */	li r30, 0
/* 8055CF2C  48 00 00 20 */	b lbl_8055CF4C
lbl_8055CF30:
/* 8055CF30  38 60 00 3C */	li r3, 0x3c
/* 8055CF34  4B FF E6 A9 */	bl aNSC_get_msg_no
/* 8055CF38  7C 65 1B 78 */	mr r5, r3
/* 8055CF3C  7F A3 EB 78 */	mr r3, r29
/* 8055CF40  7F 64 DB 78 */	mr r4, r27
/* 8055CF44  4B FF E6 D1 */	bl aNSC_Set_continue_msg_num
/* 8055CF48  3B C0 00 01 */	li r30, 1
lbl_8055CF4C:
/* 8055CF4C  2C 1E FF FF */	cmpwi r30, -1
/* 8055CF50  41 82 00 20 */	beq lbl_8055CF70
/* 8055CF54  3C 60 80 6B */	lis r3, next_act_idx_1480@ha /* 0x806A9F04@ha */
/* 8055CF58  57 C0 10 3A */	slwi r0, r30, 2
/* 8055CF5C  38 83 9F 04 */	addi r4, r3, next_act_idx_1480@l /* 0x806A9F04@l */
/* 8055CF60  7F 63 DB 78 */	mr r3, r27
/* 8055CF64  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055CF68  7F 84 E3 78 */	mr r4, r28
/* 8055CF6C  48 00 1E 65 */	bl aNSC_setupAction
lbl_8055CF70:
/* 8055CF70  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CF74  4B B3 DF A5 */	bl func_8009AF18
/* 8055CF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055CF7C  7C 08 03 A6 */	mtlr r0
/* 8055CF80  38 21 00 20 */	addi r1, r1, 0x20
/* 8055CF84  4E 80 00 20 */	blr 
