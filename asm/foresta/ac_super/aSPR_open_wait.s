lbl_805BD69C:
/* 805BD69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD6A0  7C 08 02 A6 */	mflr r0
/* 805BD6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BD6A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BD6AC  7C 7F 1B 78 */	mr r31, r3
/* 805BD6B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BD6B4  7C 9E 23 78 */	mr r30, r4
/* 805BD6B8  7F C3 F3 78 */	mr r3, r30
/* 805BD6BC  4B E2 0C C5 */	bl mPlib_check_player_actor_main_index_OutDoorMove
/* 805BD6C0  2C 03 00 00 */	cmpwi r3, 0
/* 805BD6C4  40 82 00 E0 */	bne lbl_805BD7A4
/* 805BD6C8  4B E2 D0 49 */	bl mSP_ShopOpen
/* 805BD6CC  2C 03 00 02 */	cmpwi r3, 2
/* 805BD6D0  41 82 00 20 */	beq lbl_805BD6F0
/* 805BD6D4  4B E2 D0 3D */	bl mSP_ShopOpen
/* 805BD6D8  2C 03 00 06 */	cmpwi r3, 6
/* 805BD6DC  41 82 00 14 */	beq lbl_805BD6F0
/* 805BD6E0  7F E3 FB 78 */	mr r3, r31
/* 805BD6E4  38 80 00 02 */	li r4, 2
/* 805BD6E8  48 00 01 B1 */	bl aSPR_setup_action
/* 805BD6EC  48 00 00 B8 */	b lbl_805BD7A4
lbl_805BD6F0:
/* 805BD6F0  7F E3 FB 78 */	mr r3, r31
/* 805BD6F4  7F C4 F3 78 */	mr r4, r30
/* 805BD6F8  4B FF FB C9 */	bl aSPR_check_player
/* 805BD6FC  2C 03 00 02 */	cmpwi r3, 2
/* 805BD700  41 82 00 28 */	beq lbl_805BD728
/* 805BD704  7F E3 FB 78 */	mr r3, r31
/* 805BD708  7F C4 F3 78 */	mr r4, r30
/* 805BD70C  4B FF FB B5 */	bl aSPR_check_player
/* 805BD710  2C 03 00 00 */	cmpwi r3, 0
/* 805BD714  40 82 00 90 */	bne lbl_805BD7A4
/* 805BD718  7F E3 FB 78 */	mr r3, r31
/* 805BD71C  38 80 00 02 */	li r4, 2
/* 805BD720  48 00 01 79 */	bl aSPR_setup_action
/* 805BD724  48 00 00 80 */	b lbl_805BD7A4
lbl_805BD728:
/* 805BD728  7F C3 F3 78 */	mr r3, r30
/* 805BD72C  4B FF FB 3D */	bl aSPR_check_player2
/* 805BD730  2C 03 00 00 */	cmpwi r3, 0
/* 805BD734  41 82 00 70 */	beq lbl_805BD7A4
/* 805BD738  7F C3 F3 78 */	mr r3, r30
/* 805BD73C  4B E1 BF 05 */	bl get_player_actor_withoutCheck
/* 805BD740  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805BD744  3C 60 80 65 */	lis r3, lit_604@ha /* 0x8064AB78@ha */
/* 805BD748  38 83 AB 78 */	addi r4, r3, lit_604@l /* 0x8064AB78@l */
/* 805BD74C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BD750  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064AB7C@ha */
/* 805BD754  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BD758  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805BD75C  C0 23 AB 7C */	lfs f1, lit_605@l(r3)  /* 0x8064AB7C@l */
/* 805BD760  EC 02 00 28 */	fsubs f0, f2, f0
/* 805BD764  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BD768  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD76C  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD770  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BD774  4B E2 D7 5D */	bl mSP_SetTanukiShopStatus
/* 805BD778  7F C3 F3 78 */	mr r3, r30
/* 805BD77C  7F E7 FB 78 */	mr r7, r31
/* 805BD780  38 81 00 08 */	addi r4, r1, 8
/* 805BD784  38 A0 60 00 */	li r5, 0x6000
/* 805BD788  38 C0 00 01 */	li r6, 1
/* 805BD78C  4B E1 CE FD */	bl mPlib_request_main_door_type1
/* 805BD790  2C 03 00 00 */	cmpwi r3, 0
/* 805BD794  41 82 00 10 */	beq lbl_805BD7A4
/* 805BD798  7F E3 FB 78 */	mr r3, r31
/* 805BD79C  38 80 00 04 */	li r4, 4
/* 805BD7A0  48 00 00 F9 */	bl aSPR_setup_action
lbl_805BD7A4:
/* 805BD7A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD7A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BD7AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BD7B0  7C 08 03 A6 */	mtlr r0
/* 805BD7B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805BD7B8  4E 80 00 20 */	blr 
