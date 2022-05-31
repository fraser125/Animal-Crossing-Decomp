lbl_8053FB08:
/* 8053FB08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FB0C  7C 08 02 A6 */	mflr r0
/* 8053FB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FB14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FB18  7C 7F 1B 78 */	mr r31, r3
/* 8053FB1C  A0 03 00 06 */	lhz r0, 6(r3)
/* 8053FB20  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8053FB24  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053FB28  40 82 00 58 */	bne lbl_8053FB80
/* 8053FB2C  81 9F 09 68 */	lwz r12, 0x968(r31)
/* 8053FB30  7D 89 03 A6 */	mtctr r12
/* 8053FB34  4E 80 04 21 */	bctrl 
/* 8053FB38  2C 03 00 01 */	cmpwi r3, 1
/* 8053FB3C  40 82 00 98 */	bne lbl_8053FBD4
/* 8053FB40  4B E5 A8 BD */	bl mDemo_Check_SpeakerAble
/* 8053FB44  2C 03 00 01 */	cmpwi r3, 1
/* 8053FB48  40 82 00 8C */	bne lbl_8053FBD4
/* 8053FB4C  7F E3 FB 78 */	mr r3, r31
/* 8053FB50  4B E7 F7 E9 */	bl mMld_ActorMakeMelody
/* 8053FB54  7F E3 FB 78 */	mr r3, r31
/* 8053FB58  38 80 00 02 */	li r4, 2
/* 8053FB5C  4B FF FF 21 */	bl aNPC_act_talk_chg_step
/* 8053FB60  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8053FB64  28 03 00 00 */	cmplwi r3, 0
/* 8053FB68  41 82 00 6C */	beq lbl_8053FBD4
/* 8053FB6C  88 1F 09 7D */	lbz r0, 0x97d(r31)
/* 8053FB70  28 00 00 01 */	cmplwi r0, 1
/* 8053FB74  40 82 00 60 */	bne lbl_8053FBD4
/* 8053FB78  4B E8 C2 75 */	bl mNpc_SetAnimalLastTalk
/* 8053FB7C  48 00 00 58 */	b lbl_8053FBD4
lbl_8053FB80:
/* 8053FB80  88 1F 07 C9 */	lbz r0, 0x7c9(r31)
/* 8053FB84  28 00 00 00 */	cmplwi r0, 0
/* 8053FB88  41 82 00 1C */	beq lbl_8053FBA4
/* 8053FB8C  4B E7 F7 AD */	bl mMld_ActorMakeMelody
/* 8053FB90  4B E5 A8 25 */	bl mDemo_Set_ListenAble
/* 8053FB94  7F E3 FB 78 */	mr r3, r31
/* 8053FB98  38 80 00 02 */	li r4, 2
/* 8053FB9C  4B FF FE E1 */	bl aNPC_act_talk_chg_step
/* 8053FBA0  48 00 00 34 */	b lbl_8053FBD4
lbl_8053FBA4:
/* 8053FBA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053FBA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053FBAC  3C 84 00 02 */	addis r4, r4, 2
/* 8053FBB0  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8053FBB4  81 84 00 04 */	lwz r12, 4(r4)
/* 8053FBB8  7D 89 03 A6 */	mtctr r12
/* 8053FBBC  4E 80 04 21 */	bctrl 
/* 8053FBC0  2C 03 00 01 */	cmpwi r3, 1
/* 8053FBC4  40 82 00 10 */	bne lbl_8053FBD4
/* 8053FBC8  7F E3 FB 78 */	mr r3, r31
/* 8053FBCC  38 80 00 02 */	li r4, 2
/* 8053FBD0  4B FF FE AD */	bl aNPC_act_talk_chg_step
lbl_8053FBD4:
/* 8053FBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FBDC  7C 08 03 A6 */	mtlr r0
/* 8053FBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FBE4  4E 80 00 20 */	blr 
