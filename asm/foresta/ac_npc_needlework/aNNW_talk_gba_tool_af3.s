lbl_80563358:
/* 80563358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056335C  7C 08 02 A6 */	mflr r0
/* 80563360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563368  93 C1 00 08 */	stw r30, 8(r1)
/* 8056336C  7C 7E 1B 78 */	mr r30, r3
/* 80563370  4B E5 C3 39 */	bl func_803BF6A8
/* 80563374  7C 60 1B 78 */	mr r0, r3
/* 80563378  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 8056337C  7C 1F 03 78 */	mr r31, r0
/* 80563380  4B FF E0 C1 */	bl aNNW_SendData
/* 80563384  2C 03 00 00 */	cmpwi r3, 0
/* 80563388  41 82 00 78 */	beq lbl_80563400
/* 8056338C  40 80 00 10 */	bge lbl_8056339C
/* 80563390  2C 03 FF FF */	cmpwi r3, -1
/* 80563394  40 80 00 40 */	bge lbl_805633D4
/* 80563398  48 00 00 68 */	b lbl_80563400
lbl_8056339C:
/* 8056339C  2C 03 00 02 */	cmpwi r3, 2
/* 805633A0  40 80 00 60 */	bge lbl_80563400
/* 805633A4  38 60 00 47 */	li r3, 0x47
/* 805633A8  48 0C AB 7D */	bl sAdo_SysLevStop
/* 805633AC  4B E5 C2 FD */	bl func_803BF6A8
/* 805633B0  4B E5 D9 9D */	bl mMsg_Unset_LockContinue
/* 805633B4  4B E5 C2 F5 */	bl func_803BF6A8
/* 805633B8  38 80 30 0B */	li r4, 0x300b
/* 805633BC  4B E5 CC 09 */	bl mMsg_Set_continue_msg_num
/* 805633C0  7F C3 F3 78 */	mr r3, r30
/* 805633C4  38 80 00 01 */	li r4, 1
/* 805633C8  48 00 10 C1 */	bl aNNW_change_talk_proc
/* 805633CC  4B AE 64 21 */	bl mGcgba_EndComm
/* 805633D0  48 00 00 30 */	b lbl_80563400
lbl_805633D4:
/* 805633D4  38 60 00 47 */	li r3, 0x47
/* 805633D8  48 0C AB 4D */	bl sAdo_SysLevStop
/* 805633DC  4B E5 C2 CD */	bl func_803BF6A8
/* 805633E0  4B E5 D9 6D */	bl mMsg_Unset_LockContinue
/* 805633E4  7F E3 FB 78 */	mr r3, r31
/* 805633E8  38 80 30 0A */	li r4, 0x300a
/* 805633EC  4B E5 CB D9 */	bl mMsg_Set_continue_msg_num
/* 805633F0  7F C3 F3 78 */	mr r3, r30
/* 805633F4  38 80 00 01 */	li r4, 1
/* 805633F8  48 00 10 91 */	bl aNNW_change_talk_proc
/* 805633FC  4B AE 63 F1 */	bl mGcgba_EndComm
lbl_80563400:
/* 80563400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563408  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056340C  7C 08 03 A6 */	mtlr r0
/* 80563410  38 21 00 10 */	addi r1, r1, 0x10
/* 80563414  4E 80 00 20 */	blr 
