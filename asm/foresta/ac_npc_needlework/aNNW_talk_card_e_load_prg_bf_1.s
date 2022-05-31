lbl_80563974:
/* 80563974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563978  7C 08 02 A6 */	mflr r0
/* 8056397C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563984  93 C1 00 08 */	stw r30, 8(r1)
/* 80563988  7C 7E 1B 78 */	mr r30, r3
/* 8056398C  4B E5 BD 1D */	bl func_803BF6A8
/* 80563990  7C 60 1B 78 */	mr r0, r3
/* 80563994  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80563998  7C 1F 03 78 */	mr r31, r0
/* 8056399C  4B FF D9 29 */	bl aNNW_check_GBA
/* 805639A0  2C 03 00 00 */	cmpwi r3, 0
/* 805639A4  41 82 00 6C */	beq lbl_80563A10
/* 805639A8  40 80 00 10 */	bge lbl_805639B8
/* 805639AC  2C 03 FF FF */	cmpwi r3, -1
/* 805639B0  40 80 00 1C */	bge lbl_805639CC
/* 805639B4  48 00 00 5C */	b lbl_80563A10
lbl_805639B8:
/* 805639B8  2C 03 00 02 */	cmpwi r3, 2
/* 805639BC  40 80 00 54 */	bge lbl_80563A10
/* 805639C0  7F C3 F3 78 */	mr r3, r30
/* 805639C4  48 00 0A D9 */	bl aNNW_change_talk_proc_next
/* 805639C8  48 00 00 48 */	b lbl_80563A10
lbl_805639CC:
/* 805639CC  88 7E 09 BD */	lbz r3, 0x9bd(r30)
/* 805639D0  28 03 00 05 */	cmplwi r3, 5
/* 805639D4  40 80 00 10 */	bge lbl_805639E4
/* 805639D8  38 03 00 01 */	addi r0, r3, 1
/* 805639DC  98 1E 09 BD */	stb r0, 0x9bd(r30)
/* 805639E0  48 00 00 30 */	b lbl_80563A10
lbl_805639E4:
/* 805639E4  38 60 00 47 */	li r3, 0x47
/* 805639E8  48 0C A5 3D */	bl sAdo_SysLevStop
/* 805639EC  7F E3 FB 78 */	mr r3, r31
/* 805639F0  4B E5 D3 5D */	bl mMsg_Unset_LockContinue
/* 805639F4  7F E3 FB 78 */	mr r3, r31
/* 805639F8  38 80 30 08 */	li r4, 0x3008
/* 805639FC  4B E5 C5 C9 */	bl mMsg_Set_continue_msg_num
/* 80563A00  7F C3 F3 78 */	mr r3, r30
/* 80563A04  38 80 00 01 */	li r4, 1
/* 80563A08  48 00 0A 81 */	bl aNNW_change_talk_proc
/* 80563A0C  4B AE 5D E1 */	bl mGcgba_EndComm
lbl_80563A10:
/* 80563A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563A18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563A1C  7C 08 03 A6 */	mtlr r0
/* 80563A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80563A24  4E 80 00 20 */	blr 
