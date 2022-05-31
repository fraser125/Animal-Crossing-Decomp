lbl_8051D99C:
/* 8051D99C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D9A0  7C 08 02 A6 */	mflr r0
/* 8051D9A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D9A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D9AC  4B B7 D5 29 */	bl func_8009AED4
/* 8051D9B0  7C 9E 23 78 */	mr r30, r4
/* 8051D9B4  7C 7D 1B 78 */	mr r29, r3
/* 8051D9B8  7F C3 F3 78 */	mr r3, r30
/* 8051D9BC  4B EB BC B5 */	bl mPlib_get_player_actor_main_index
/* 8051D9C0  2C 03 00 54 */	cmpwi r3, 0x54
/* 8051D9C4  41 82 00 44 */	beq lbl_8051DA08
/* 8051D9C8  7F C3 F3 78 */	mr r3, r30
/* 8051D9CC  4B EB BC 75 */	bl get_player_actor_withoutCheck
/* 8051D9D0  7C 7F 1B 78 */	mr r31, r3
/* 8051D9D4  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8051D9D8  38 80 58 28 */	li r4, 0x5828
/* 8051D9DC  38 A0 00 01 */	li r5, 1
/* 8051D9E0  4B E5 83 61 */	bl Actor_info_fgName_search
/* 8051D9E4  7C 64 1B 79 */	or. r4, r3, r3
/* 8051D9E8  41 82 00 30 */	beq lbl_8051DA18
/* 8051D9EC  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 8051D9F0  7F C3 F3 78 */	mr r3, r30
/* 8051D9F4  7F A7 EB 78 */	mr r7, r29
/* 8051D9F8  38 84 00 28 */	addi r4, r4, 0x28
/* 8051D9FC  38 BF 00 28 */	addi r5, r31, 0x28
/* 8051DA00  4B EB CD B9 */	bl mPlib_request_main_wash_car_type1
/* 8051DA04  48 00 00 14 */	b lbl_8051DA18
lbl_8051DA08:
/* 8051DA08  7F A3 EB 78 */	mr r3, r29
/* 8051DA0C  7F C4 F3 78 */	mr r4, r30
/* 8051DA10  38 A0 00 02 */	li r5, 2
/* 8051DA14  48 00 03 31 */	bl aEDSN_setup_think_proc
lbl_8051DA18:
/* 8051DA18  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DA1C  4B B7 D5 05 */	bl func_8009AF20
/* 8051DA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051DA24  7C 08 03 A6 */	mtlr r0
/* 8051DA28  38 21 00 20 */	addi r1, r1, 0x20
/* 8051DA2C  4E 80 00 20 */	blr 
