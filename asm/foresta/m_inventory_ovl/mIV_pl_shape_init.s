lbl_805E1BE4:
/* 805E1BE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E1BE8  7C 08 02 A6 */	mflr r0
/* 805E1BEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E1BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E1BF4  4B AB 92 E1 */	bl func_8009AED4
/* 805E1BF8  7C 7D 1B 78 */	mr r29, r3
/* 805E1BFC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E1C00  83 DF 09 88 */	lwz r30, 0x988(r31)
/* 805E1C04  4B DF 7A C9 */	bl mPlib_get_player_mdl_p
/* 805E1C08  7C 64 1B 78 */	mr r4, r3
/* 805E1C0C  7F C3 F3 78 */	mr r3, r30
/* 805E1C10  38 DE 00 E0 */	addi r6, r30, 0xe0
/* 805E1C14  38 FE 01 82 */	addi r7, r30, 0x182
/* 805E1C18  38 A0 00 00 */	li r5, 0
/* 805E1C1C  4B D8 EE 79 */	bl cKF_SkeletonInfo_R_ct
/* 805E1C20  4B DF 7A AD */	bl mPlib_get_player_mdl_p
/* 805E1C24  7C 64 1B 78 */	mr r4, r3
/* 805E1C28  38 7E 00 70 */	addi r3, r30, 0x70
/* 805E1C2C  38 DE 00 E0 */	addi r6, r30, 0xe0
/* 805E1C30  38 FE 01 82 */	addi r7, r30, 0x182
/* 805E1C34  38 A0 00 00 */	li r5, 0
/* 805E1C38  4B D8 EE 5D */	bl cKF_SkeletonInfo_R_ct
/* 805E1C3C  38 00 00 00 */	li r0, 0
/* 805E1C40  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 805E1C44  B0 1F 00 04 */	sth r0, 4(r31)
/* 805E1C48  4B FF F7 7D */	bl mIV_get_player_item_anime_id
/* 805E1C4C  B0 7F 00 06 */	sth r3, 6(r31)
/* 805E1C50  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E1C54  38 83 B4 00 */	addi r4, r3, lit_744@l /* 0x8064B400@l */
/* 805E1C58  38 00 00 00 */	li r0, 0
/* 805E1C5C  B0 1F 00 08 */	sth r0, 8(r31)
/* 805E1C60  7F A3 EB 78 */	mr r3, r29
/* 805E1C64  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E1C68  4B FF FC 55 */	bl mIV_pl_load_player_anime
/* 805E1C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E1C70  4B AB 92 B1 */	bl func_8009AF20
/* 805E1C74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E1C78  7C 08 03 A6 */	mtlr r0
/* 805E1C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805E1C80  4E 80 00 20 */	blr 
