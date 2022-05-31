lbl_805634A4:
/* 805634A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805634A8  7C 08 02 A6 */	mflr r0
/* 805634AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805634B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805634B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805634B8  7C 7E 1B 78 */	mr r30, r3
/* 805634BC  4B E5 C1 ED */	bl func_803BF6A8
/* 805634C0  7C 60 1B 78 */	mr r0, r3
/* 805634C4  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 805634C8  7C 1F 03 78 */	mr r31, r0
/* 805634CC  4B FF E0 6D */	bl aNNW_IsEditor
/* 805634D0  2C 03 00 01 */	cmpwi r3, 1
/* 805634D4  41 82 00 20 */	beq lbl_805634F4
/* 805634D8  40 80 00 10 */	bge lbl_805634E8
/* 805634DC  2C 03 FF FF */	cmpwi r3, -1
/* 805634E0  41 82 00 54 */	beq lbl_80563534
/* 805634E4  48 00 00 7C */	b lbl_80563560
lbl_805634E8:
/* 805634E8  2C 03 00 03 */	cmpwi r3, 3
/* 805634EC  40 80 00 74 */	bge lbl_80563560
/* 805634F0  48 00 00 14 */	b lbl_80563504
lbl_805634F4:
/* 805634F4  7F C3 F3 78 */	mr r3, r30
/* 805634F8  38 80 00 2B */	li r4, 0x2b
/* 805634FC  48 00 0F 8D */	bl aNNW_change_talk_proc
/* 80563500  48 00 00 60 */	b lbl_80563560
lbl_80563504:
/* 80563504  38 60 00 47 */	li r3, 0x47
/* 80563508  48 0C AA 1D */	bl sAdo_SysLevStop
/* 8056350C  4B E5 C1 9D */	bl func_803BF6A8
/* 80563510  4B E5 D8 3D */	bl mMsg_Unset_LockContinue
/* 80563514  7F E3 FB 78 */	mr r3, r31
/* 80563518  38 80 30 0D */	li r4, 0x300d
/* 8056351C  4B E5 CA A9 */	bl mMsg_Set_continue_msg_num
/* 80563520  7F C3 F3 78 */	mr r3, r30
/* 80563524  38 80 00 01 */	li r4, 1
/* 80563528  48 00 0F 61 */	bl aNNW_change_talk_proc
/* 8056352C  4B AE 62 C1 */	bl mGcgba_EndComm
/* 80563530  48 00 00 30 */	b lbl_80563560
lbl_80563534:
/* 80563534  38 60 00 47 */	li r3, 0x47
/* 80563538  48 0C A9 ED */	bl sAdo_SysLevStop
/* 8056353C  4B E5 C1 6D */	bl func_803BF6A8
/* 80563540  4B E5 D8 0D */	bl mMsg_Unset_LockContinue
/* 80563544  7F E3 FB 78 */	mr r3, r31
/* 80563548  38 80 30 0E */	li r4, 0x300e
/* 8056354C  4B E5 CA 79 */	bl mMsg_Set_continue_msg_num
/* 80563550  7F C3 F3 78 */	mr r3, r30
/* 80563554  38 80 00 01 */	li r4, 1
/* 80563558  48 00 0F 31 */	bl aNNW_change_talk_proc
/* 8056355C  4B AE 62 91 */	bl mGcgba_EndComm
lbl_80563560:
/* 80563560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563568  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056356C  7C 08 03 A6 */	mtlr r0
/* 80563570  38 21 00 10 */	addi r1, r1, 0x10
/* 80563574  4E 80 00 20 */	blr 
