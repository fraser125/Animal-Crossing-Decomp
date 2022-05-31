lbl_8057A424:
/* 8057A424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A428  7C 08 02 A6 */	mflr r0
/* 8057A42C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A430  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A434  4B B2 0A 99 */	bl func_8009AECC
/* 8057A438  7C 7B 1B 78 */	mr r27, r3
/* 8057A43C  7C 9C 23 78 */	mr r28, r4
/* 8057A440  4B E4 52 69 */	bl func_803BF6A8
/* 8057A444  7C 60 1B 78 */	mr r0, r3
/* 8057A448  38 60 00 1C */	li r3, 0x1c
/* 8057A44C  7C 1D 03 78 */	mr r29, r0
/* 8057A450  4B FF DE 2D */	bl aNSC_get_msg_no
/* 8057A454  7C 7E 1B 78 */	mr r30, r3
/* 8057A458  38 60 00 1D */	li r3, 0x1d
/* 8057A45C  4B FF DE 21 */	bl aNSC_get_msg_no
/* 8057A460  7C 7F 1B 78 */	mr r31, r3
/* 8057A464  7F A3 EB 78 */	mr r3, r29
/* 8057A468  4B E4 5B 65 */	bl mMsg_Get_msg_num
/* 8057A46C  7C 03 F0 00 */	cmpw r3, r30
/* 8057A470  41 82 00 0C */	beq lbl_8057A47C
/* 8057A474  7C 03 F8 00 */	cmpw r3, r31
/* 8057A478  40 82 00 80 */	bne lbl_8057A4F8
lbl_8057A47C:
/* 8057A47C  7F A3 EB 78 */	mr r3, r29
/* 8057A480  4B E4 68 19 */	bl mMsg_Check_MainNormalContinue
/* 8057A484  2C 03 00 00 */	cmpwi r3, 0
/* 8057A488  41 82 00 70 */	beq lbl_8057A4F8
/* 8057A48C  3B C0 FF FF */	li r30, -1
/* 8057A490  4B E0 90 B1 */	bl func_80383540
/* 8057A494  4B E0 96 D9 */	bl mChoice_Get_ChoseNum
/* 8057A498  2C 03 00 01 */	cmpwi r3, 1
/* 8057A49C  41 82 00 1C */	beq lbl_8057A4B8
/* 8057A4A0  40 80 00 34 */	bge lbl_8057A4D4
/* 8057A4A4  2C 03 00 00 */	cmpwi r3, 0
/* 8057A4A8  40 80 00 08 */	bge lbl_8057A4B0
/* 8057A4AC  48 00 00 28 */	b lbl_8057A4D4
lbl_8057A4B0:
/* 8057A4B0  3B C0 00 00 */	li r30, 0
/* 8057A4B4  48 00 00 20 */	b lbl_8057A4D4
lbl_8057A4B8:
/* 8057A4B8  38 60 00 15 */	li r3, 0x15
/* 8057A4BC  4B FF DD C1 */	bl aNSC_get_msg_no
/* 8057A4C0  7C 65 1B 78 */	mr r5, r3
/* 8057A4C4  7F A3 EB 78 */	mr r3, r29
/* 8057A4C8  7F 64 DB 78 */	mr r4, r27
/* 8057A4CC  4B FF DD F9 */	bl aNSC_Set_continue_msg_num
/* 8057A4D0  3B C0 00 01 */	li r30, 1
lbl_8057A4D4:
/* 8057A4D4  2C 1E FF FF */	cmpwi r30, -1
/* 8057A4D8  41 82 00 20 */	beq lbl_8057A4F8
/* 8057A4DC  3C 60 80 6C */	lis r3, next_act_idx_1583@ha /* 0x806C0338@ha */
/* 8057A4E0  57 C0 10 3A */	slwi r0, r30, 2
/* 8057A4E4  38 83 03 38 */	addi r4, r3, next_act_idx_1583@l /* 0x806C0338@l */
/* 8057A4E8  7F 63 DB 78 */	mr r3, r27
/* 8057A4EC  7C A4 00 2E */	lwzx r5, r4, r0
/* 8057A4F0  7F 84 E3 78 */	mr r4, r28
/* 8057A4F4  48 00 1F C1 */	bl aNSC_setupAction
lbl_8057A4F8:
/* 8057A4F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A4FC  4B B2 0A 1D */	bl func_8009AF18
/* 8057A500  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A504  7C 08 03 A6 */	mtlr r0
/* 8057A508  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A50C  4E 80 00 20 */	blr 
