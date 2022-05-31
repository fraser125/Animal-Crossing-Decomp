lbl_8051E940:
/* 8051E940  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051E944  7C 08 02 A6 */	mflr r0
/* 8051E948  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051E94C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051E950  7C 7F 1B 78 */	mr r31, r3
/* 8051E954  38 60 00 01 */	li r3, 1
/* 8051E958  4B E7 9E F1 */	bl mDemo_Set_talk_turn
/* 8051E95C  38 60 00 03 */	li r3, 3
/* 8051E960  4B E7 9F C1 */	bl mDemo_Set_camera
/* 8051E964  4B B3 E3 91 */	bl fqrand
/* 8051E968  3C 60 80 65 */	lis r3, lit_598@ha /* 0x806490F4@ha */
/* 8051E96C  C0 03 90 F4 */	lfs f0, lit_598@l(r3)  /* 0x806490F4@l */
/* 8051E970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E974  40 80 00 34 */	bge lbl_8051E9A8
/* 8051E978  38 60 23 F8 */	li r3, 0x23f8
/* 8051E97C  4B E7 9B 99 */	bl mDemo_Set_msg_num
/* 8051E980  3C 60 80 52 */	lis r3, aEDZ_talk_stop_player@ha /* 0x8051E69C@ha */
/* 8051E984  38 00 00 02 */	li r0, 2
/* 8051E988  38 83 E6 9C */	addi r4, r3, aEDZ_talk_stop_player@l /* 0x8051E69C@l */
/* 8051E98C  38 60 00 01 */	li r3, 1
/* 8051E990  90 9F 09 98 */	stw r4, 0x998(r31)
/* 8051E994  98 1F 09 A3 */	stb r0, 0x9a3(r31)
/* 8051E998  4B E7 9E 21 */	bl mDemo_Set_talk_return_demo_wait
/* 8051E99C  7F E3 FB 78 */	mr r3, r31
/* 8051E9A0  4B EB B6 25 */	bl mPlib_Set_able_force_speak_label
/* 8051E9A4  48 00 00 34 */	b lbl_8051E9D8
lbl_8051E9A8:
/* 8051E9A8  4B B3 E3 4D */	bl fqrand
/* 8051E9AC  3C 60 80 65 */	lis r3, lit_599@ha /* 0x806490F8@ha */
/* 8051E9B0  C0 03 90 F8 */	lfs f0, lit_599@l(r3)  /* 0x806490F8@l */
/* 8051E9B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051E9B8  FC 00 00 1E */	fctiwz f0, f0
/* 8051E9BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051E9C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051E9C4  38 63 23 F9 */	addi r3, r3, 0x23f9
/* 8051E9C8  4B E7 9B 4D */	bl mDemo_Set_msg_num
/* 8051E9CC  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8051E9D0  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8051E9D4  90 1F 09 98 */	stw r0, 0x998(r31)
lbl_8051E9D8:
/* 8051E9D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051E9DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051E9E0  7C 08 03 A6 */	mtlr r0
/* 8051E9E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8051E9E8  4E 80 00 20 */	blr 
