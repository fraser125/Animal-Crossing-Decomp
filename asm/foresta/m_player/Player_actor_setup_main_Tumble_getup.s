lbl_804E832C:
/* 804E832C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8330  7C 08 02 A6 */	mflr r0
/* 804E8334  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E8338  39 61 00 20 */	addi r11, r1, 0x20
/* 804E833C  4B BB 2B 95 */	bl func_8009AED0
/* 804E8340  7C 7C 1B 78 */	mr r28, r3
/* 804E8344  7C 9D 23 78 */	mr r29, r4
/* 804E8348  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804E834C  4B FF 86 59 */	bl Player_actor_Get_ItemKind
/* 804E8350  7C 7F 07 74 */	extsb r31, r3
/* 804E8354  7F E3 FB 78 */	mr r3, r31
/* 804E8358  4B FF FF AD */	bl Player_actor_Get_PlayerAnimeIndex_fromItemKind_Tumble_getup
/* 804E835C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E8360  7C 60 1B 78 */	mr r0, r3
/* 804E8364  C0 24 83 54 */	lfs f1, lit_7381@l(r4)  /* 0x80648354@l */
/* 804E8368  7F 83 E3 78 */	mr r3, r28
/* 804E836C  7C 1E 03 78 */	mr r30, r0
/* 804E8370  7F A4 EB 78 */	mr r4, r29
/* 804E8374  7F E5 FB 78 */	mr r5, r31
/* 804E8378  4B FF FD E1 */	bl Player_actor_setup_Item_Tumble_getup
/* 804E837C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E8380  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E8384  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E8388  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E838C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E8390  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E8394  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804E8398  7F 83 E3 78 */	mr r3, r28
/* 804E839C  FC 40 08 90 */	fmr f2, f1
/* 804E83A0  7F A4 EB 78 */	mr r4, r29
/* 804E83A4  7F C5 F3 78 */	mr r5, r30
/* 804E83A8  7F C6 F3 78 */	mr r6, r30
/* 804E83AC  38 E0 00 00 */	li r7, 0
/* 804E83B0  39 00 00 00 */	li r8, 0
/* 804E83B4  4B FE E4 5D */	bl Player_actor_InitAnimation_Base2
/* 804E83B8  7F 83 E3 78 */	mr r3, r28
/* 804E83BC  4B FE D1 89 */	bl Player_actor_set_tex_anime_pattern
/* 804E83C0  7F 83 E3 78 */	mr r3, r28
/* 804E83C4  7F A4 EB 78 */	mr r4, r29
/* 804E83C8  4B FE D5 31 */	bl Player_actor_setup_main_Base
/* 804E83CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E83D0  4B BB 2B 4D */	bl func_8009AF1C
/* 804E83D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E83D8  7C 08 03 A6 */	mtlr r0
/* 804E83DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E83E0  4E 80 00 20 */	blr 
