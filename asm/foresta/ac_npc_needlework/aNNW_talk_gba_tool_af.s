lbl_80563218:
/* 80563218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056321C  7C 08 02 A6 */	mflr r0
/* 80563220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563228  93 C1 00 08 */	stw r30, 8(r1)
/* 8056322C  7C 7E 1B 78 */	mr r30, r3
/* 80563230  4B E5 C4 79 */	bl func_803BF6A8
/* 80563234  7C 60 1B 78 */	mr r0, r3
/* 80563238  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 8056323C  7C 1F 03 78 */	mr r31, r0
/* 80563240  4B FF E0 FD */	bl aNNW_mGcgba_boot
/* 80563244  2C 03 00 00 */	cmpwi r3, 0
/* 80563248  41 82 00 58 */	beq lbl_805632A0
/* 8056324C  40 80 00 10 */	bge lbl_8056325C
/* 80563250  2C 03 FF FF */	cmpwi r3, -1
/* 80563254  40 80 00 20 */	bge lbl_80563274
/* 80563258  48 00 00 48 */	b lbl_805632A0
lbl_8056325C:
/* 8056325C  2C 03 00 02 */	cmpwi r3, 2
/* 80563260  40 80 00 40 */	bge lbl_805632A0
/* 80563264  7F C3 F3 78 */	mr r3, r30
/* 80563268  38 80 00 26 */	li r4, 0x26
/* 8056326C  48 00 12 1D */	bl aNNW_change_talk_proc
/* 80563270  48 00 00 30 */	b lbl_805632A0
lbl_80563274:
/* 80563274  38 60 00 47 */	li r3, 0x47
/* 80563278  48 0C AC AD */	bl sAdo_SysLevStop
/* 8056327C  4B E5 C4 2D */	bl func_803BF6A8
/* 80563280  4B E5 DA CD */	bl mMsg_Unset_LockContinue
/* 80563284  7F E3 FB 78 */	mr r3, r31
/* 80563288  38 80 30 0A */	li r4, 0x300a
/* 8056328C  4B E5 CD 39 */	bl mMsg_Set_continue_msg_num
/* 80563290  7F C3 F3 78 */	mr r3, r30
/* 80563294  38 80 00 01 */	li r4, 1
/* 80563298  48 00 11 F1 */	bl aNNW_change_talk_proc
/* 8056329C  4B AE 65 51 */	bl mGcgba_EndComm
lbl_805632A0:
/* 805632A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805632A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805632A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805632AC  7C 08 03 A6 */	mtlr r0
/* 805632B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805632B4  4E 80 00 20 */	blr 
