lbl_805AC3B8:
/* 805AC3B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805AC3BC  7C 08 02 A6 */	mflr r0
/* 805AC3C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805AC3C4  39 61 00 50 */	addi r11, r1, 0x50
/* 805AC3C8  4B AE EB 0D */	bl func_8009AED4
/* 805AC3CC  7C 9E 23 78 */	mr r30, r4
/* 805AC3D0  7C 7F 1B 78 */	mr r31, r3
/* 805AC3D4  7F C3 F3 78 */	mr r3, r30
/* 805AC3D8  4B E2 D2 69 */	bl get_player_actor_withoutCheck
/* 805AC3DC  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805AC3E0  7C 7D 1B 78 */	mr r29, r3
/* 805AC3E4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805AC3E8  38 61 00 14 */	addi r3, r1, 0x14
/* 805AC3EC  38 81 00 10 */	addi r4, r1, 0x10
/* 805AC3F0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805AC3F4  38 A1 00 24 */	addi r5, r1, 0x24
/* 805AC3F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AC3FC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805AC400  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AC404  4B DF 93 5D */	bl mFI_Wpos2BlockNum
/* 805AC408  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805AC40C  38 61 00 0C */	addi r3, r1, 0xc
/* 805AC410  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805AC414  38 81 00 08 */	addi r4, r1, 8
/* 805AC418  38 A1 00 18 */	addi r5, r1, 0x18
/* 805AC41C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805AC420  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AC424  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805AC428  90 01 00 20 */	stw r0, 0x20(r1)
/* 805AC42C  4B DF 93 35 */	bl mFI_Wpos2BlockNum
/* 805AC430  7F A4 EB 78 */	mr r4, r29
/* 805AC434  38 60 00 01 */	li r3, 1
/* 805AC438  4B DE DE 2D */	bl mDemo_Check
/* 805AC43C  2C 03 00 00 */	cmpwi r3, 0
/* 805AC440  40 82 00 58 */	bne lbl_805AC498
/* 805AC444  7F A4 EB 78 */	mr r4, r29
/* 805AC448  38 60 00 05 */	li r3, 5
/* 805AC44C  4B DE DE 19 */	bl mDemo_Check
/* 805AC450  2C 03 00 00 */	cmpwi r3, 0
/* 805AC454  40 82 00 44 */	bne lbl_805AC498
/* 805AC458  7F A4 EB 78 */	mr r4, r29
/* 805AC45C  38 60 00 10 */	li r3, 0x10
/* 805AC460  4B DE DE 05 */	bl mDemo_Check
/* 805AC464  2C 03 00 00 */	cmpwi r3, 0
/* 805AC468  40 82 00 30 */	bne lbl_805AC498
/* 805AC46C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AC470  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AC474  7C 03 00 00 */	cmpw r3, r0
/* 805AC478  40 82 00 14 */	bne lbl_805AC48C
/* 805AC47C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805AC480  80 01 00 08 */	lwz r0, 8(r1)
/* 805AC484  7C 03 00 00 */	cmpw r3, r0
/* 805AC488  41 82 00 10 */	beq lbl_805AC498
lbl_805AC48C:
/* 805AC48C  7F E3 FB 78 */	mr r3, r31
/* 805AC490  4B DC 7F B1 */	bl Actor_delete
/* 805AC494  48 00 00 58 */	b lbl_805AC4EC
lbl_805AC498:
/* 805AC498  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AC49C  4B DC 4B 79 */	bl cKF_SkeletonInfo_R_play
/* 805AC4A0  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805AC4A4  7F E3 FB 78 */	mr r3, r31
/* 805AC4A8  7F C4 F3 78 */	mr r4, r30
/* 805AC4AC  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805AC4B0  FC 00 00 1E */	fctiwz f0, f0
/* 805AC4B4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805AC4B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AC4BC  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805AC4C0  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805AC4C4  7D 89 03 A6 */	mtctr r12
/* 805AC4C8  4E 80 04 21 */	bctrl 
/* 805AC4CC  80 7F 02 C0 */	lwz r3, 0x2c0(r31)
/* 805AC4D0  38 63 00 01 */	addi r3, r3, 1
/* 805AC4D4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 805AC4D8  90 7F 02 C0 */	stw r3, 0x2c0(r31)
/* 805AC4DC  41 82 00 10 */	beq lbl_805AC4EC
/* 805AC4E0  80 7F 02 BC */	lwz r3, 0x2bc(r31)
/* 805AC4E4  38 03 FF FF */	addi r0, r3, -1
/* 805AC4E8  90 1F 02 BC */	stw r0, 0x2bc(r31)
lbl_805AC4EC:
/* 805AC4EC  39 61 00 50 */	addi r11, r1, 0x50
/* 805AC4F0  4B AE EA 31 */	bl func_8009AF20
/* 805AC4F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AC4F8  7C 08 03 A6 */	mtlr r0
/* 805AC4FC  38 21 00 50 */	addi r1, r1, 0x50
/* 805AC500  4E 80 00 20 */	blr 
