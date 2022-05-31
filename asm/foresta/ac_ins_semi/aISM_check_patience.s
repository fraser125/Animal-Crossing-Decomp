lbl_8059F3E0:
/* 8059F3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F3E4  7C 08 02 A6 */	mflr r0
/* 8059F3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F3F0  3B E0 00 00 */	li r31, 0
/* 8059F3F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8059F3F8  7C 7E 1B 78 */	mr r30, r3
/* 8059F3FC  38 7E 00 28 */	addi r3, r30, 0x28
/* 8059F400  4B E3 EB 85 */	bl mPlib_Check_tree_shaken
/* 8059F404  2C 03 00 01 */	cmpwi r3, 1
/* 8059F408  40 82 00 14 */	bne lbl_8059F41C
/* 8059F40C  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A218@ha */
/* 8059F410  C0 03 A2 18 */	lfs f0, lit_466@l(r3)  /* 0x8064A218@l */
/* 8059F414  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059F418  48 00 00 94 */	b lbl_8059F4AC
lbl_8059F41C:
/* 8059F41C  38 7E 00 28 */	addi r3, r30, 0x28
/* 8059F420  4B E3 CB C9 */	bl mPlib_Check_VibUnit_OneFrame
/* 8059F424  2C 03 00 01 */	cmpwi r3, 1
/* 8059F428  40 82 00 28 */	bne lbl_8059F450
/* 8059F42C  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A21C@ha */
/* 8059F430  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8059F434  C0 03 A2 1C */	lfs f0, lit_467@l(r3)  /* 0x8064A21C@l */
/* 8059F438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F43C  40 80 00 14 */	bge lbl_8059F450
/* 8059F440  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A218@ha */
/* 8059F444  C0 03 A2 18 */	lfs f0, lit_466@l(r3)  /* 0x8064A218@l */
/* 8059F448  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059F44C  48 00 00 60 */	b lbl_8059F4AC
lbl_8059F450:
/* 8059F450  7F C3 F3 78 */	mr r3, r30
/* 8059F454  4B FF FE 25 */	bl aISM_check_ball
/* 8059F458  2C 03 00 01 */	cmpwi r3, 1
/* 8059F45C  40 82 00 14 */	bne lbl_8059F470
/* 8059F460  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A218@ha */
/* 8059F464  C0 03 A2 18 */	lfs f0, lit_466@l(r3)  /* 0x8064A218@l */
/* 8059F468  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059F46C  48 00 00 40 */	b lbl_8059F4AC
lbl_8059F470:
/* 8059F470  7F C3 F3 78 */	mr r3, r30
/* 8059F474  4B FF FE 55 */	bl aISM_check_player_net
/* 8059F478  2C 03 00 01 */	cmpwi r3, 1
/* 8059F47C  40 82 00 14 */	bne lbl_8059F490
/* 8059F480  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A218@ha */
/* 8059F484  C0 03 A2 18 */	lfs f0, lit_466@l(r3)  /* 0x8064A218@l */
/* 8059F488  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059F48C  48 00 00 20 */	b lbl_8059F4AC
lbl_8059F490:
/* 8059F490  7F C3 F3 78 */	mr r3, r30
/* 8059F494  4B FF FE CD */	bl aISM_check_player_scoop
/* 8059F498  2C 03 00 01 */	cmpwi r3, 1
/* 8059F49C  40 82 00 10 */	bne lbl_8059F4AC
/* 8059F4A0  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A218@ha */
/* 8059F4A4  C0 03 A2 18 */	lfs f0, lit_466@l(r3)  /* 0x8064A218@l */
/* 8059F4A8  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
lbl_8059F4AC:
/* 8059F4AC  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064A220@ha */
/* 8059F4B0  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 8059F4B4  C0 03 A2 20 */	lfs f0, lit_468@l(r3)  /* 0x8064A220@l */
/* 8059F4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F4BC  40 81 00 08 */	ble lbl_8059F4C4
/* 8059F4C0  3B E0 00 01 */	li r31, 1
lbl_8059F4C4:
/* 8059F4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F4C8  7F E3 FB 78 */	mr r3, r31
/* 8059F4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F4D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059F4D4  7C 08 03 A6 */	mtlr r0
/* 8059F4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F4DC  4E 80 00 20 */	blr 
