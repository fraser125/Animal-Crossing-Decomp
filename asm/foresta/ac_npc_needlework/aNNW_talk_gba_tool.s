lbl_805630A8:
/* 805630A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805630AC  7C 08 02 A6 */	mflr r0
/* 805630B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805630B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805630B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805630BC  7C 7E 1B 78 */	mr r30, r3
/* 805630C0  4B E5 C5 E9 */	bl func_803BF6A8
/* 805630C4  7C 60 1B 78 */	mr r0, r3
/* 805630C8  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 805630CC  7C 1F 03 78 */	mr r31, r0
/* 805630D0  4B FF E1 F5 */	bl aNNW_check_GBA
/* 805630D4  2C 03 00 00 */	cmpwi r3, 0
/* 805630D8  41 82 00 88 */	beq lbl_80563160
/* 805630DC  40 80 00 10 */	bge lbl_805630EC
/* 805630E0  2C 03 FF FF */	cmpwi r3, -1
/* 805630E4  40 80 00 38 */	bge lbl_8056311C
/* 805630E8  48 00 00 78 */	b lbl_80563160
lbl_805630EC:
/* 805630EC  2C 03 00 02 */	cmpwi r3, 2
/* 805630F0  40 80 00 70 */	bge lbl_80563160
/* 805630F4  88 1E 09 B2 */	lbz r0, 0x9b2(r30)
/* 805630F8  2C 00 00 23 */	cmpwi r0, 0x23
/* 805630FC  41 82 00 08 */	beq lbl_80563104
/* 80563100  48 00 00 10 */	b lbl_80563110
lbl_80563104:
/* 80563104  7F C3 F3 78 */	mr r3, r30
/* 80563108  48 00 13 95 */	bl aNNW_change_talk_proc_next
/* 8056310C  48 00 00 54 */	b lbl_80563160
lbl_80563110:
/* 80563110  7F C3 F3 78 */	mr r3, r30
/* 80563114  48 00 13 89 */	bl aNNW_change_talk_proc_next
/* 80563118  48 00 00 48 */	b lbl_80563160
lbl_8056311C:
/* 8056311C  88 7E 09 BD */	lbz r3, 0x9bd(r30)
/* 80563120  28 03 00 05 */	cmplwi r3, 5
/* 80563124  40 80 00 10 */	bge lbl_80563134
/* 80563128  38 03 00 01 */	addi r0, r3, 1
/* 8056312C  98 1E 09 BD */	stb r0, 0x9bd(r30)
/* 80563130  48 00 00 30 */	b lbl_80563160
lbl_80563134:
/* 80563134  38 60 00 47 */	li r3, 0x47
/* 80563138  48 0C AD ED */	bl sAdo_SysLevStop
/* 8056313C  4B E5 C5 6D */	bl func_803BF6A8
/* 80563140  4B E5 DC 0D */	bl mMsg_Unset_LockContinue
/* 80563144  7F E3 FB 78 */	mr r3, r31
/* 80563148  38 80 30 08 */	li r4, 0x3008
/* 8056314C  4B E5 CE 79 */	bl mMsg_Set_continue_msg_num
/* 80563150  7F C3 F3 78 */	mr r3, r30
/* 80563154  38 80 00 01 */	li r4, 1
/* 80563158  48 00 13 31 */	bl aNNW_change_talk_proc
/* 8056315C  4B AE 66 91 */	bl mGcgba_EndComm
lbl_80563160:
/* 80563160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563168  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056316C  7C 08 03 A6 */	mtlr r0
/* 80563170  38 21 00 10 */	addi r1, r1, 0x10
/* 80563174  4E 80 00 20 */	blr 
