lbl_804A714C:
/* 804A714C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7150  7C 08 02 A6 */	mflr r0
/* 804A7154  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7158  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A715C  7C 7F 1B 78 */	mr r31, r3
/* 804A7160  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A7164  7C 9E 23 78 */	mr r30, r4
/* 804A7168  A8 03 01 F8 */	lha r0, 0x1f8(r3)
/* 804A716C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804A7170  40 82 00 4C */	bne lbl_804A71BC
/* 804A7174  7F E4 FB 78 */	mr r4, r31
/* 804A7178  38 60 00 08 */	li r3, 8
/* 804A717C  4B EF 30 E9 */	bl mDemo_Check
/* 804A7180  2C 03 00 01 */	cmpwi r3, 1
/* 804A7184  40 82 00 28 */	bne lbl_804A71AC
/* 804A7188  4B EF 32 89 */	bl mDemo_Check_ListenAble
/* 804A718C  2C 03 00 00 */	cmpwi r3, 0
/* 804A7190  40 82 00 A8 */	bne lbl_804A7238
/* 804A7194  4B EF 32 21 */	bl mDemo_Set_ListenAble
/* 804A7198  38 60 00 01 */	li r3, 1
/* 804A719C  4B EF 17 85 */	bl mDemo_Set_camera
/* 804A71A0  38 60 00 00 */	li r3, 0
/* 804A71A4  4B F3 68 81 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 804A71A8  48 00 00 90 */	b lbl_804A7238
lbl_804A71AC:
/* 804A71AC  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A71B0  60 00 00 40 */	ori r0, r0, 0x40
/* 804A71B4  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A71B8  48 00 00 80 */	b lbl_804A7238
lbl_804A71BC:
/* 804A71BC  3C C0 80 4A */	lis r6, aSMAN_set_talk_info_normal_init@ha /* 0x804A6FCC@ha */
/* 804A71C0  38 BF 01 DC */	addi r5, r31, 0x1dc
/* 804A71C4  38 C6 6F CC */	addi r6, r6, aSMAN_set_talk_info_normal_init@l /* 0x804A6FCC@l */
/* 804A71C8  4B F5 01 85 */	bl mRlib_PSnowman_NormalTalk
/* 804A71CC  2C 03 00 00 */	cmpwi r3, 0
/* 804A71D0  40 82 00 68 */	bne lbl_804A7238
/* 804A71D4  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A71D8  7F E3 FB 78 */	mr r3, r31
/* 804A71DC  80 BF 01 4C */	lwz r5, 0x14c(r31)
/* 804A71E0  7F C4 F3 78 */	mr r4, r30
/* 804A71E4  60 00 00 04 */	ori r0, r0, 4
/* 804A71E8  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A71EC  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A71F0  60 00 00 80 */	ori r0, r0, 0x80
/* 804A71F4  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A71F8  A8 05 01 F8 */	lha r0, 0x1f8(r5)
/* 804A71FC  60 00 00 80 */	ori r0, r0, 0x80
/* 804A7200  B0 05 01 F8 */	sth r0, 0x1f8(r5)
/* 804A7204  4B FF D4 1D */	bl aSMAN_MakeBreakEffect
/* 804A7208  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804A720C  38 61 00 08 */	addi r3, r1, 8
/* 804A7210  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A7214  90 81 00 08 */	stw r4, 8(r1)
/* 804A7218  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A721C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A7220  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A7224  4B F3 D5 15 */	bl mQst_BackSnowman
/* 804A7228  7F E3 FB 78 */	mr r3, r31
/* 804A722C  4B EC D2 15 */	bl Actor_delete
/* 804A7230  38 60 00 00 */	li r3, 0
/* 804A7234  48 00 00 08 */	b lbl_804A723C
lbl_804A7238:
/* 804A7238  38 60 00 01 */	li r3, 1
lbl_804A723C:
/* 804A723C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7240  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A7244  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A7248  7C 08 03 A6 */	mtlr r0
/* 804A724C  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7250  4E 80 00 20 */	blr 
