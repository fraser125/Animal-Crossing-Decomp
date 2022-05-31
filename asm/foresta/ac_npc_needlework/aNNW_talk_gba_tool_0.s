lbl_80563178:
/* 80563178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056317C  7C 08 02 A6 */	mflr r0
/* 80563180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563188  93 C1 00 08 */	stw r30, 8(r1)
/* 8056318C  7C 7E 1B 78 */	mr r30, r3
/* 80563190  4B E5 C5 19 */	bl func_803BF6A8
/* 80563194  7C 60 1B 78 */	mr r0, r3
/* 80563198  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 8056319C  7C 1F 03 78 */	mr r31, r0
/* 805631A0  4B FF E3 99 */	bl aNNW_IsEditor
/* 805631A4  2C 03 00 01 */	cmpwi r3, 1
/* 805631A8  41 82 00 20 */	beq lbl_805631C8
/* 805631AC  40 80 00 10 */	bge lbl_805631BC
/* 805631B0  2C 03 FF FF */	cmpwi r3, -1
/* 805631B4  41 82 00 44 */	beq lbl_805631F8
/* 805631B8  48 00 00 48 */	b lbl_80563200
lbl_805631BC:
/* 805631BC  2C 03 00 03 */	cmpwi r3, 3
/* 805631C0  40 80 00 40 */	bge lbl_80563200
/* 805631C4  48 00 00 34 */	b lbl_805631F8
lbl_805631C8:
/* 805631C8  7F C3 F3 78 */	mr r3, r30
/* 805631CC  38 80 00 3D */	li r4, 0x3d
/* 805631D0  48 00 12 B9 */	bl aNNW_change_talk_proc
/* 805631D4  38 60 00 47 */	li r3, 0x47
/* 805631D8  48 0C AD 4D */	bl sAdo_SysLevStop
/* 805631DC  4B E5 C4 CD */	bl func_803BF6A8
/* 805631E0  4B E5 DB 6D */	bl mMsg_Unset_LockContinue
/* 805631E4  7F E3 FB 78 */	mr r3, r31
/* 805631E8  38 80 2F FD */	li r4, 0x2ffd
/* 805631EC  4B E5 CD D9 */	bl mMsg_Set_continue_msg_num
/* 805631F0  4B AE 65 FD */	bl mGcgba_EndComm
/* 805631F4  48 00 00 0C */	b lbl_80563200
lbl_805631F8:
/* 805631F8  7F C3 F3 78 */	mr r3, r30
/* 805631FC  48 00 12 A1 */	bl aNNW_change_talk_proc_next
lbl_80563200:
/* 80563200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563208  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056320C  7C 08 03 A6 */	mtlr r0
/* 80563210  38 21 00 10 */	addi r1, r1, 0x10
/* 80563214  4E 80 00 20 */	blr 
