lbl_805B9CCC:
/* 805B9CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9CD0  7C 08 02 A6 */	mflr r0
/* 805B9CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9CD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9CDC  7C 9F 23 78 */	mr r31, r4
/* 805B9CE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9CE4  7C 7E 1B 78 */	mr r30, r3
/* 805B9CE8  7F E3 FB 78 */	mr r3, r31
/* 805B9CEC  4B E2 46 95 */	bl mPlib_check_player_actor_main_index_OutDoorMove
/* 805B9CF0  2C 03 00 00 */	cmpwi r3, 0
/* 805B9CF4  40 82 00 C8 */	bne lbl_805B9DBC
/* 805B9CF8  4B E3 0A 19 */	bl mSP_ShopOpen
/* 805B9CFC  2C 03 00 02 */	cmpwi r3, 2
/* 805B9D00  41 82 00 2C */	beq lbl_805B9D2C
/* 805B9D04  4B E3 0A 0D */	bl mSP_ShopOpen
/* 805B9D08  2C 03 00 06 */	cmpwi r3, 6
/* 805B9D0C  41 82 00 20 */	beq lbl_805B9D2C
/* 805B9D10  38 9E 00 28 */	addi r4, r30, 0x28
/* 805B9D14  38 60 00 08 */	li r3, 8
/* 805B9D18  48 07 42 91 */	bl sAdo_OngenTrgStart
/* 805B9D1C  7F C3 F3 78 */	mr r3, r30
/* 805B9D20  38 80 00 02 */	li r4, 2
/* 805B9D24  48 00 01 A9 */	bl aSHOP_setup_action
/* 805B9D28  48 00 00 94 */	b lbl_805B9DBC
lbl_805B9D2C:
/* 805B9D2C  7F C3 F3 78 */	mr r3, r30
/* 805B9D30  7F E4 FB 78 */	mr r4, r31
/* 805B9D34  4B FF FC 75 */	bl aSHOP_check_player
/* 805B9D38  2C 03 00 01 */	cmpwi r3, 1
/* 805B9D3C  40 82 00 80 */	bne lbl_805B9DBC
/* 805B9D40  7F E3 FB 78 */	mr r3, r31
/* 805B9D44  4B FF FC 0D */	bl aSHOP_check_player2
/* 805B9D48  2C 03 00 01 */	cmpwi r3, 1
/* 805B9D4C  40 82 00 70 */	bne lbl_805B9DBC
/* 805B9D50  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064AABC@ha */
/* 805B9D54  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805B9D58  38 83 AA BC */	addi r4, r3, lit_616@l /* 0x8064AABC@l */
/* 805B9D5C  7F E3 FB 78 */	mr r3, r31
/* 805B9D60  C0 04 00 00 */	lfs f0, 0(r4)
/* 805B9D64  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B9D68  D0 01 00 08 */	stfs f0, 8(r1)
/* 805B9D6C  4B E1 F8 D5 */	bl get_player_actor_withoutCheck
/* 805B9D70  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805B9D74  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064AABC@ha */
/* 805B9D78  C0 23 AA BC */	lfs f1, lit_616@l(r3)  /* 0x8064AABC@l */
/* 805B9D7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805B9D80  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B9D84  EC 01 00 2A */	fadds f0, f1, f0
/* 805B9D88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B9D8C  4B E3 11 45 */	bl mSP_SetTanukiShopStatus
/* 805B9D90  7F E3 FB 78 */	mr r3, r31
/* 805B9D94  7F C7 F3 78 */	mr r7, r30
/* 805B9D98  38 81 00 08 */	addi r4, r1, 8
/* 805B9D9C  38 A0 60 00 */	li r5, 0x6000
/* 805B9DA0  38 C0 00 01 */	li r6, 1
/* 805B9DA4  4B E2 08 E5 */	bl mPlib_request_main_door_type1
/* 805B9DA8  2C 03 00 00 */	cmpwi r3, 0
/* 805B9DAC  41 82 00 10 */	beq lbl_805B9DBC
/* 805B9DB0  7F C3 F3 78 */	mr r3, r30
/* 805B9DB4  38 80 00 04 */	li r4, 4
/* 805B9DB8  48 00 01 15 */	bl aSHOP_setup_action
lbl_805B9DBC:
/* 805B9DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9DC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9DC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B9DC8  7C 08 03 A6 */	mtlr r0
/* 805B9DCC  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9DD0  4E 80 00 20 */	blr 
