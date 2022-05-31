lbl_8042914C:
/* 8042914C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429150  7C 08 02 A6 */	mflr r0
/* 80429154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042915C  7C 7F 1B 78 */	mr r31, r3
/* 80429160  4B F9 65 49 */	bl func_803BF6A8
/* 80429164  4B F9 7B 35 */	bl mMsg_Check_MainNormalContinue
/* 80429168  2C 03 00 00 */	cmpwi r3, 0
/* 8042916C  41 82 00 48 */	beq lbl_804291B4
/* 80429170  4B F5 A3 D1 */	bl func_80383540
/* 80429174  4B F5 A9 F9 */	bl mChoice_Get_ChoseNum
/* 80429178  2C 03 00 00 */	cmpwi r3, 0
/* 8042917C  40 82 00 20 */	bne lbl_8042919C
/* 80429180  7F E3 FB 78 */	mr r3, r31
/* 80429184  38 80 00 07 */	li r4, 7
/* 80429188  48 00 02 F5 */	bl aHTC_setup_move_proc
/* 8042918C  4B F9 65 1D */	bl func_803BF6A8
/* 80429190  38 80 11 2D */	li r4, 0x112d
/* 80429194  4B F9 6E 31 */	bl mMsg_Set_continue_msg_num
/* 80429198  48 00 00 1C */	b lbl_804291B4
lbl_8042919C:
/* 8042919C  7F E3 FB 78 */	mr r3, r31
/* 804291A0  38 80 00 04 */	li r4, 4
/* 804291A4  48 00 02 D9 */	bl aHTC_setup_move_proc
/* 804291A8  4B F9 65 01 */	bl func_803BF6A8
/* 804291AC  38 80 11 2E */	li r4, 0x112e
/* 804291B0  4B F9 6E 15 */	bl mMsg_Set_continue_msg_num
lbl_804291B4:
/* 804291B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804291B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804291BC  7C 08 03 A6 */	mtlr r0
/* 804291C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804291C4  4E 80 00 20 */	blr 
