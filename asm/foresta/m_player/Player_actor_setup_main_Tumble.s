lbl_804E7C7C:
/* 804E7C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E7C80  7C 08 02 A6 */	mflr r0
/* 804E7C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E7C88  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7C8C  4B BB 32 45 */	bl func_8009AED0
/* 804E7C90  7C 7C 1B 78 */	mr r28, r3
/* 804E7C94  7C 9D 23 78 */	mr r29, r4
/* 804E7C98  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804E7C9C  4B FF 8D 09 */	bl Player_actor_Get_ItemKind
/* 804E7CA0  7C 7F 07 74 */	extsb r31, r3
/* 804E7CA4  7F E3 FB 78 */	mr r3, r31
/* 804E7CA8  4B FF FF 2D */	bl Player_actor_Get_PlayerAnimeIndex_fromItemKind_Tumble
/* 804E7CAC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E7CB0  7C 60 1B 78 */	mr r0, r3
/* 804E7CB4  C0 24 83 54 */	lfs f1, lit_7381@l(r4)  /* 0x80648354@l */
/* 804E7CB8  7F 83 E3 78 */	mr r3, r28
/* 804E7CBC  7C 1E 03 78 */	mr r30, r0
/* 804E7CC0  7F A4 EB 78 */	mr r4, r29
/* 804E7CC4  7F E5 FB 78 */	mr r5, r31
/* 804E7CC8  4B FF FE 1D */	bl Player_actor_setup_Item_Tumble
/* 804E7CCC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E7CD0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E7CD4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E7CD8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E7CDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E7CE0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E7CE4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804E7CE8  7F 83 E3 78 */	mr r3, r28
/* 804E7CEC  FC 40 08 90 */	fmr f2, f1
/* 804E7CF0  7F A4 EB 78 */	mr r4, r29
/* 804E7CF4  7F C5 F3 78 */	mr r5, r30
/* 804E7CF8  7F C6 F3 78 */	mr r6, r30
/* 804E7CFC  38 E0 00 00 */	li r7, 0
/* 804E7D00  39 00 00 00 */	li r8, 0
/* 804E7D04  4B FE EB 0D */	bl Player_actor_InitAnimation_Base2
/* 804E7D08  7F 83 E3 78 */	mr r3, r28
/* 804E7D0C  7F A4 EB 78 */	mr r4, r29
/* 804E7D10  4B FE DB E9 */	bl Player_actor_setup_main_Base
/* 804E7D14  7F 83 E3 78 */	mr r3, r28
/* 804E7D18  4B FF 76 B1 */	bl Player_actor_sound_Tumble
/* 804E7D1C  7F 83 E3 78 */	mr r3, r28
/* 804E7D20  7F A4 EB 78 */	mr r4, r29
/* 804E7D24  38 A0 00 00 */	li r5, 0
/* 804E7D28  4B FF FE D5 */	bl Player_actor_effect_Tumble
/* 804E7D2C  3C 60 00 40 */	lis r3, 0x40
/* 804E7D30  4B EC C2 E9 */	bl mISL_SetNowPlayerAction
/* 804E7D34  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7D38  4B BB 31 E5 */	bl func_8009AF1C
/* 804E7D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7D40  7C 08 03 A6 */	mtlr r0
/* 804E7D44  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7D48  4E 80 00 20 */	blr 
