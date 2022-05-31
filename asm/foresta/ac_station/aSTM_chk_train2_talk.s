lbl_805BC188:
/* 805BC188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC18C  7C 08 02 A6 */	mflr r0
/* 805BC190  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC198  93 C1 00 08 */	stw r30, 8(r1)
/* 805BC19C  7C 7E 1B 78 */	mr r30, r3
/* 805BC1A0  4B E0 35 09 */	bl func_803BF6A8
/* 805BC1A4  7C 7F 1B 78 */	mr r31, r3
/* 805BC1A8  4B E0 4A F1 */	bl mMsg_Check_MainNormalContinue
/* 805BC1AC  2C 03 00 01 */	cmpwi r3, 1
/* 805BC1B0  40 82 00 44 */	bne lbl_805BC1F4
/* 805BC1B4  88 1E 09 A9 */	lbz r0, 0x9a9(r30)
/* 805BC1B8  28 00 00 01 */	cmplwi r0, 1
/* 805BC1BC  40 82 00 14 */	bne lbl_805BC1D0
/* 805BC1C0  7F E3 FB 78 */	mr r3, r31
/* 805BC1C4  38 80 09 55 */	li r4, 0x955
/* 805BC1C8  4B E0 3D FD */	bl mMsg_Set_continue_msg_num
/* 805BC1CC  48 00 00 10 */	b lbl_805BC1DC
lbl_805BC1D0:
/* 805BC1D0  7F E3 FB 78 */	mr r3, r31
/* 805BC1D4  38 80 09 4F */	li r4, 0x94f
/* 805BC1D8  4B E0 3D ED */	bl mMsg_Set_continue_msg_num
lbl_805BC1DC:
/* 805BC1DC  7F C3 F3 78 */	mr r3, r30
/* 805BC1E0  38 80 00 05 */	li r4, 5
/* 805BC1E4  48 00 07 19 */	bl aSTC_clip_change_talk_proc
/* 805BC1E8  7F C3 F3 78 */	mr r3, r30
/* 805BC1EC  38 80 00 47 */	li r4, 0x47
/* 805BC1F0  4B FF FA C1 */	bl aSTC_clip_change_sound
lbl_805BC1F4:
/* 805BC1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC1FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BC200  7C 08 03 A6 */	mtlr r0
/* 805BC204  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC208  4E 80 00 20 */	blr 
