lbl_80586608:
/* 80586608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058660C  7C 08 02 A6 */	mflr r0
/* 80586610  38 80 00 09 */	li r4, 9
/* 80586614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058661C  93 C1 00 08 */	stw r30, 8(r1)
/* 80586620  7C 7E 1B 78 */	mr r30, r3
/* 80586624  38 60 00 04 */	li r3, 4
/* 80586628  4B E1 1E 55 */	bl mDemo_Get_OrderValue
/* 8058662C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80586630  38 60 00 47 */	li r3, 0x47
/* 80586634  38 80 00 0A */	li r4, 0xa
/* 80586638  4B E1 77 95 */	bl mEv_get_save_area
/* 8058663C  2C 1F 00 01 */	cmpwi r31, 1
/* 80586640  7C 7F 1B 78 */	mr r31, r3
/* 80586644  40 82 00 AC */	bne lbl_805866F0
/* 80586648  4B E3 90 61 */	bl func_803BF6A8
/* 8058664C  4B E3 A6 4D */	bl mMsg_Check_MainNormalContinue
/* 80586650  2C 03 00 01 */	cmpwi r3, 1
/* 80586654  40 82 00 9C */	bne lbl_805866F0
/* 80586658  38 60 00 04 */	li r3, 4
/* 8058665C  38 80 00 09 */	li r4, 9
/* 80586660  38 A0 00 00 */	li r5, 0
/* 80586664  4B E1 1D D5 */	bl mDemo_Set_OrderValue
/* 80586668  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8058666C  38 80 00 01 */	li r4, 1
/* 80586670  4B FF FD C9 */	bl func_80586438
/* 80586674  B0 7F 00 02 */	sth r3, 2(r31)
/* 80586678  4B DF CE C9 */	bl func_80383540
/* 8058667C  4B DF D4 F1 */	bl mChoice_Get_ChoseNum
/* 80586680  2C 03 00 01 */	cmpwi r3, 1
/* 80586684  41 82 00 60 */	beq lbl_805866E4
/* 80586688  40 80 00 68 */	bge lbl_805866F0
/* 8058668C  2C 03 00 00 */	cmpwi r3, 0
/* 80586690  40 80 00 08 */	bge lbl_80586698
/* 80586694  48 00 00 5C */	b lbl_805866F0
lbl_80586698:
/* 80586698  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8058669C  38 80 00 10 */	li r4, 0x10
/* 805866A0  4B FF FE 15 */	bl aNTT_bitcheck_func
/* 805866A4  2C 03 00 00 */	cmpwi r3, 0
/* 805866A8  41 82 00 20 */	beq lbl_805866C8
/* 805866AC  4B E3 8F FD */	bl func_803BF6A8
/* 805866B0  38 80 1B 97 */	li r4, 0x1b97
/* 805866B4  4B E3 99 11 */	bl mMsg_Set_continue_msg_num
/* 805866B8  7F C3 F3 78 */	mr r3, r30
/* 805866BC  38 80 00 00 */	li r4, 0
/* 805866C0  48 00 04 A5 */	bl aNTT_change_talk_proc
/* 805866C4  48 00 00 2C */	b lbl_805866F0
lbl_805866C8:
/* 805866C8  4B E3 8F E1 */	bl func_803BF6A8
/* 805866CC  38 80 1B 98 */	li r4, 0x1b98
/* 805866D0  4B E3 98 F5 */	bl mMsg_Set_continue_msg_num
/* 805866D4  7F C3 F3 78 */	mr r3, r30
/* 805866D8  38 80 00 02 */	li r4, 2
/* 805866DC  48 00 04 89 */	bl aNTT_change_talk_proc
/* 805866E0  48 00 00 10 */	b lbl_805866F0
lbl_805866E4:
/* 805866E4  7F C3 F3 78 */	mr r3, r30
/* 805866E8  38 80 00 00 */	li r4, 0
/* 805866EC  48 00 04 79 */	bl aNTT_change_talk_proc
lbl_805866F0:
/* 805866F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805866F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805866F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805866FC  7C 08 03 A6 */	mtlr r0
/* 80586700  38 21 00 10 */	addi r1, r1, 0x10
/* 80586704  4E 80 00 20 */	blr 
