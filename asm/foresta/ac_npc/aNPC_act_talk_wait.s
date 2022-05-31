lbl_80533268:
/* 80533268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053326C  7C 08 02 A6 */	mflr r0
/* 80533270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533278  7C 7F 1B 78 */	mr r31, r3
/* 8053327C  A0 03 00 06 */	lhz r0, 6(r3)
/* 80533280  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80533284  2C 00 00 0D */	cmpwi r0, 0xd
/* 80533288  40 82 00 58 */	bne lbl_805332E0
/* 8053328C  81 9F 09 68 */	lwz r12, 0x968(r31)
/* 80533290  7D 89 03 A6 */	mtctr r12
/* 80533294  4E 80 04 21 */	bctrl 
/* 80533298  2C 03 00 01 */	cmpwi r3, 1
/* 8053329C  40 82 00 98 */	bne lbl_80533334
/* 805332A0  4B E6 71 5D */	bl mDemo_Check_SpeakerAble
/* 805332A4  2C 03 00 01 */	cmpwi r3, 1
/* 805332A8  40 82 00 8C */	bne lbl_80533334
/* 805332AC  7F E3 FB 78 */	mr r3, r31
/* 805332B0  4B E8 C0 89 */	bl mMld_ActorMakeMelody
/* 805332B4  7F E3 FB 78 */	mr r3, r31
/* 805332B8  38 80 00 02 */	li r4, 2
/* 805332BC  4B FF FF 39 */	bl aNPC_act_talk_chg_step
/* 805332C0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 805332C4  28 03 00 00 */	cmplwi r3, 0
/* 805332C8  41 82 00 6C */	beq lbl_80533334
/* 805332CC  88 1F 09 7D */	lbz r0, 0x97d(r31)
/* 805332D0  28 00 00 01 */	cmplwi r0, 1
/* 805332D4  40 82 00 60 */	bne lbl_80533334
/* 805332D8  4B E9 8B 15 */	bl mNpc_SetAnimalLastTalk
/* 805332DC  48 00 00 58 */	b lbl_80533334
lbl_805332E0:
/* 805332E0  88 1F 07 C9 */	lbz r0, 0x7c9(r31)
/* 805332E4  28 00 00 00 */	cmplwi r0, 0
/* 805332E8  41 82 00 1C */	beq lbl_80533304
/* 805332EC  4B E8 C0 4D */	bl mMld_ActorMakeMelody
/* 805332F0  4B E6 70 C5 */	bl mDemo_Set_ListenAble
/* 805332F4  7F E3 FB 78 */	mr r3, r31
/* 805332F8  38 80 00 02 */	li r4, 2
/* 805332FC  4B FF FE F9 */	bl aNPC_act_talk_chg_step
/* 80533300  48 00 00 34 */	b lbl_80533334
lbl_80533304:
/* 80533304  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80533308  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053330C  3C 84 00 02 */	addis r4, r4, 2
/* 80533310  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 80533314  81 84 00 04 */	lwz r12, 4(r4)
/* 80533318  7D 89 03 A6 */	mtctr r12
/* 8053331C  4E 80 04 21 */	bctrl 
/* 80533320  2C 03 00 01 */	cmpwi r3, 1
/* 80533324  40 82 00 10 */	bne lbl_80533334
/* 80533328  7F E3 FB 78 */	mr r3, r31
/* 8053332C  38 80 00 02 */	li r4, 2
/* 80533330  4B FF FE C5 */	bl aNPC_act_talk_chg_step
lbl_80533334:
/* 80533334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053333C  7C 08 03 A6 */	mtlr r0
/* 80533340  38 21 00 10 */	addi r1, r1, 0x10
/* 80533344  4E 80 00 20 */	blr 
