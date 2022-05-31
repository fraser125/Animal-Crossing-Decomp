lbl_805AB160:
/* 805AB160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AB164  7C 08 02 A6 */	mflr r0
/* 805AB168  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AB16C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AB170  7C 7F 1B 78 */	mr r31, r3
/* 805AB174  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AB178  7C 9E 23 78 */	mr r30, r4
/* 805AB17C  7F C3 F3 78 */	mr r3, r30
/* 805AB180  4B E3 32 01 */	bl mPlib_check_player_actor_main_index_OutDoorMove
/* 805AB184  2C 03 00 00 */	cmpwi r3, 0
/* 805AB188  40 82 00 E0 */	bne lbl_805AB268
/* 805AB18C  4B E3 F5 85 */	bl mSP_ShopOpen
/* 805AB190  2C 03 00 02 */	cmpwi r3, 2
/* 805AB194  41 82 00 20 */	beq lbl_805AB1B4
/* 805AB198  4B E3 F5 79 */	bl mSP_ShopOpen
/* 805AB19C  2C 03 00 06 */	cmpwi r3, 6
/* 805AB1A0  41 82 00 14 */	beq lbl_805AB1B4
/* 805AB1A4  7F E3 FB 78 */	mr r3, r31
/* 805AB1A8  38 80 00 02 */	li r4, 2
/* 805AB1AC  48 00 01 B1 */	bl aCNV_setup_action
/* 805AB1B0  48 00 00 B8 */	b lbl_805AB268
lbl_805AB1B4:
/* 805AB1B4  7F E3 FB 78 */	mr r3, r31
/* 805AB1B8  7F C4 F3 78 */	mr r4, r30
/* 805AB1BC  4B FF FB C9 */	bl aCNV_check_player
/* 805AB1C0  2C 03 00 02 */	cmpwi r3, 2
/* 805AB1C4  41 82 00 28 */	beq lbl_805AB1EC
/* 805AB1C8  7F E3 FB 78 */	mr r3, r31
/* 805AB1CC  7F C4 F3 78 */	mr r4, r30
/* 805AB1D0  4B FF FB B5 */	bl aCNV_check_player
/* 805AB1D4  2C 03 00 00 */	cmpwi r3, 0
/* 805AB1D8  40 82 00 90 */	bne lbl_805AB268
/* 805AB1DC  7F E3 FB 78 */	mr r3, r31
/* 805AB1E0  38 80 00 02 */	li r4, 2
/* 805AB1E4  48 00 01 79 */	bl aCNV_setup_action
/* 805AB1E8  48 00 00 80 */	b lbl_805AB268
lbl_805AB1EC:
/* 805AB1EC  7F C3 F3 78 */	mr r3, r30
/* 805AB1F0  4B FF FB 3D */	bl aCNV_check_player2
/* 805AB1F4  2C 03 00 00 */	cmpwi r3, 0
/* 805AB1F8  41 82 00 70 */	beq lbl_805AB268
/* 805AB1FC  7F C3 F3 78 */	mr r3, r30
/* 805AB200  4B E2 E4 41 */	bl get_player_actor_withoutCheck
/* 805AB204  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805AB208  3C 60 80 65 */	lis r3, lit_604@ha /* 0x8064A648@ha */
/* 805AB20C  38 83 A6 48 */	addi r4, r3, lit_604@l /* 0x8064A648@l */
/* 805AB210  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805AB214  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064A64C@ha */
/* 805AB218  C0 04 00 00 */	lfs f0, 0(r4)
/* 805AB21C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805AB220  C0 23 A6 4C */	lfs f1, lit_605@l(r3)  /* 0x8064A64C@l */
/* 805AB224  EC 02 00 28 */	fsubs f0, f2, f0
/* 805AB228  D0 01 00 08 */	stfs f0, 8(r1)
/* 805AB22C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805AB230  EC 01 00 2A */	fadds f0, f1, f0
/* 805AB234  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805AB238  4B E3 FC 99 */	bl mSP_SetTanukiShopStatus
/* 805AB23C  7F C3 F3 78 */	mr r3, r30
/* 805AB240  7F E7 FB 78 */	mr r7, r31
/* 805AB244  38 81 00 08 */	addi r4, r1, 8
/* 805AB248  38 A0 60 00 */	li r5, 0x6000
/* 805AB24C  38 C0 00 01 */	li r6, 1
/* 805AB250  4B E2 F4 39 */	bl mPlib_request_main_door_type1
/* 805AB254  2C 03 00 00 */	cmpwi r3, 0
/* 805AB258  41 82 00 10 */	beq lbl_805AB268
/* 805AB25C  7F E3 FB 78 */	mr r3, r31
/* 805AB260  38 80 00 04 */	li r4, 4
/* 805AB264  48 00 00 F9 */	bl aCNV_setup_action
lbl_805AB268:
/* 805AB268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB26C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AB270  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AB274  7C 08 03 A6 */	mtlr r0
/* 805AB278  38 21 00 20 */	addi r1, r1, 0x20
/* 805AB27C  4E 80 00 20 */	blr 
