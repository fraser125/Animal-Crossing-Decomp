lbl_805BC81C:
/* 805BC81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC820  7C 08 02 A6 */	mflr r0
/* 805BC824  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC82C  93 C1 00 08 */	stw r30, 8(r1)
/* 805BC830  7C 7E 1B 78 */	mr r30, r3
/* 805BC834  4B E0 2E 75 */	bl func_803BF6A8
/* 805BC838  7C 60 1B 78 */	mr r0, r3
/* 805BC83C  88 7E 09 AA */	lbz r3, 0x9aa(r30)
/* 805BC840  7C 1F 03 78 */	mr r31, r0
/* 805BC844  4B E3 EE 51 */	bl mCD_card_format_bg
/* 805BC848  2C 03 00 00 */	cmpwi r3, 0
/* 805BC84C  41 82 00 98 */	beq lbl_805BC8E4
/* 805BC850  40 80 00 10 */	bge lbl_805BC860
/* 805BC854  2C 03 FF FF */	cmpwi r3, -1
/* 805BC858  40 80 00 50 */	bge lbl_805BC8A8
/* 805BC85C  48 00 00 88 */	b lbl_805BC8E4
lbl_805BC860:
/* 805BC860  2C 03 00 02 */	cmpwi r3, 2
/* 805BC864  40 80 00 80 */	bge lbl_805BC8E4
/* 805BC868  7F E3 FB 78 */	mr r3, r31
/* 805BC86C  4B E0 44 E1 */	bl mMsg_Unset_LockContinue
/* 805BC870  88 1E 09 AB */	lbz r0, 0x9ab(r30)
/* 805BC874  28 00 00 04 */	cmplwi r0, 4
/* 805BC878  40 82 00 14 */	bne lbl_805BC88C
/* 805BC87C  7F E3 FB 78 */	mr r3, r31
/* 805BC880  38 80 09 5A */	li r4, 0x95a
/* 805BC884  4B E0 37 41 */	bl mMsg_Set_continue_msg_num
/* 805BC888  48 00 00 10 */	b lbl_805BC898
lbl_805BC88C:
/* 805BC88C  7F E3 FB 78 */	mr r3, r31
/* 805BC890  38 80 09 54 */	li r4, 0x954
/* 805BC894  4B E0 37 31 */	bl mMsg_Set_continue_msg_num
lbl_805BC898:
/* 805BC898  7F C3 F3 78 */	mr r3, r30
/* 805BC89C  38 80 00 0D */	li r4, 0xd
/* 805BC8A0  48 00 00 5D */	bl aSTC_clip_change_talk_proc
/* 805BC8A4  48 00 00 40 */	b lbl_805BC8E4
lbl_805BC8A8:
/* 805BC8A8  7F E3 FB 78 */	mr r3, r31
/* 805BC8AC  4B E0 44 A1 */	bl mMsg_Unset_LockContinue
/* 805BC8B0  88 1E 09 AB */	lbz r0, 0x9ab(r30)
/* 805BC8B4  28 00 00 04 */	cmplwi r0, 4
/* 805BC8B8  40 82 00 14 */	bne lbl_805BC8CC
/* 805BC8BC  7F E3 FB 78 */	mr r3, r31
/* 805BC8C0  38 80 09 58 */	li r4, 0x958
/* 805BC8C4  4B E0 37 01 */	bl mMsg_Set_continue_msg_num
/* 805BC8C8  48 00 00 10 */	b lbl_805BC8D8
lbl_805BC8CC:
/* 805BC8CC  7F E3 FB 78 */	mr r3, r31
/* 805BC8D0  38 80 09 52 */	li r4, 0x952
/* 805BC8D4  4B E0 36 F1 */	bl mMsg_Set_continue_msg_num
lbl_805BC8D8:
/* 805BC8D8  7F C3 F3 78 */	mr r3, r30
/* 805BC8DC  38 80 00 0F */	li r4, 0xf
/* 805BC8E0  48 00 00 1D */	bl aSTC_clip_change_talk_proc
lbl_805BC8E4:
/* 805BC8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC8EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BC8F0  7C 08 03 A6 */	mtlr r0
/* 805BC8F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC8F8  4E 80 00 20 */	blr 
