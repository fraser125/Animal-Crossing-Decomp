lbl_804FC914:
/* 804FC914  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FC918  7C 08 02 A6 */	mflr r0
/* 804FC91C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FC920  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804FC924  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804FC928  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC92C  4B B9 E5 A9 */	bl func_8009AED4
/* 804FC930  7C 7D 1B 78 */	mr r29, r3
/* 804FC934  7C 9E 23 78 */	mr r30, r4
/* 804FC938  4B FE 40 09 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804FC93C  38 00 00 07 */	li r0, 7
/* 804FC940  7C 7F 07 74 */	extsb r31, r3
/* 804FC944  38 BD 0D 14 */	addi r5, r29, 0xd14
/* 804FC948  38 9D 0D 5C */	addi r4, r29, 0xd5c
/* 804FC94C  7C 09 03 A6 */	mtctr r0
lbl_804FC950:
/* 804FC950  80 64 00 04 */	lwz r3, 4(r4)
/* 804FC954  84 04 00 08 */	lwzu r0, 8(r4)
/* 804FC958  90 65 00 04 */	stw r3, 4(r5)
/* 804FC95C  94 05 00 08 */	stwu r0, 8(r5)
/* 804FC960  42 00 FF F0 */	bdnz lbl_804FC950
/* 804FC964  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804FC968  7F E3 FB 78 */	mr r3, r31
/* 804FC96C  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804FC970  D0 1D 0D 50 */	stfs f0, 0xd50(r29)
/* 804FC974  4B ED C3 6D */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804FC978  3C E0 80 64 */	lis r7, lit_2671@ha /* 0x80646C4C@ha */
/* 804FC97C  3C C0 80 64 */	lis r6, lit_6257@ha /* 0x80647E60@ha */
/* 804FC980  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804FC984  C0 46 7E 60 */	lfs f2, lit_6257@l(r6)  /* 0x80647E60@l */
/* 804FC988  C0 64 68 F4 */	lfs f3, lit_950@l(r4)  /* 0x806468F4@l */
/* 804FC98C  7C 65 1B 78 */	mr r5, r3
/* 804FC990  C0 27 6C 4C */	lfs f1, lit_2671@l(r7)  /* 0x80646C4C@l */
/* 804FC994  7F A3 EB 78 */	mr r3, r29
/* 804FC998  7F E4 FB 78 */	mr r4, r31
/* 804FC99C  38 C0 00 01 */	li r6, 1
/* 804FC9A0  4B FE 47 0D */	bl Player_actor_LoadOrDestruct_Item
/* 804FC9A4  7F E3 FB 78 */	mr r3, r31
/* 804FC9A8  4B FE 40 E5 */	bl Player_actor_Get_BasicItemMainIndex_fromItemKind
/* 804FC9AC  7C 64 1B 78 */	mr r4, r3
/* 804FC9B0  7F A3 EB 78 */	mr r3, r29
/* 804FC9B4  4B FD 8C D9 */	bl Player_actor_Set_now_item_main_index
/* 804FC9B8  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804FC9BC  9B FD 11 2B */	stb r31, 0x112b(r29)
/* 804FC9C0  38 00 00 00 */	li r0, 0
/* 804FC9C4  41 80 00 10 */	blt lbl_804FC9D4
/* 804FC9C8  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804FC9CC  40 80 00 08 */	bge lbl_804FC9D4
/* 804FC9D0  38 00 00 01 */	li r0, 1
lbl_804FC9D4:
/* 804FC9D4  2C 00 00 00 */	cmpwi r0, 0
/* 804FC9D8  41 82 00 68 */	beq lbl_804FCA40
/* 804FC9DC  80 9D 0E 64 */	lwz r4, 0xe64(r29)
/* 804FC9E0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FC9E4  C3 E3 83 54 */	lfs f31, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FC9E8  3B E0 00 4A */	li r31, 0x4a
/* 804FC9EC  28 04 00 00 */	cmplwi r4, 0
/* 804FC9F0  41 82 00 34 */	beq lbl_804FCA24
/* 804FC9F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FC9F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804FC9FC  3C 63 00 02 */	addis r3, r3, 2
/* 804FCA00  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 804FCA04  28 03 00 00 */	cmplwi r3, 0
/* 804FCA08  41 82 00 44 */	beq lbl_804FCA4C
/* 804FCA0C  81 83 00 04 */	lwz r12, 4(r3)
/* 804FCA10  7F A3 EB 78 */	mr r3, r29
/* 804FCA14  38 A0 00 02 */	li r5, 2
/* 804FCA18  7D 89 03 A6 */	mtctr r12
/* 804FCA1C  4E 80 04 21 */	bctrl 
/* 804FCA20  48 00 00 2C */	b lbl_804FCA4C
lbl_804FCA24:
/* 804FCA24  38 00 00 02 */	li r0, 2
/* 804FCA28  7F A3 EB 78 */	mr r3, r29
/* 804FCA2C  90 1D 0E 68 */	stw r0, 0xe68(r29)
/* 804FCA30  7F C4 F3 78 */	mr r4, r30
/* 804FCA34  4B FE 41 6D */	bl Player_actor_Get_umbrella_p
/* 804FCA38  90 7D 0E 64 */	stw r3, 0xe64(r29)
/* 804FCA3C  48 00 00 10 */	b lbl_804FCA4C
lbl_804FCA40:
/* 804FCA40  3C 60 80 64 */	lis r3, lit_3573@ha /* 0x80647A44@ha */
/* 804FCA44  3B E0 00 0E */	li r31, 0xe
/* 804FCA48  C3 E3 7A 44 */	lfs f31, lit_3573@l(r3)  /* 0x80647A44@l */
lbl_804FCA4C:
/* 804FCA4C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FCA50  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FCA54  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804FCA58  FC 80 F8 90 */	fmr f4, f31
/* 804FCA5C  C0 63 6C 4C */	lfs f3, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804FCA60  7F A3 EB 78 */	mr r3, r29
/* 804FCA64  FC 40 08 90 */	fmr f2, f1
/* 804FCA68  7F C4 F3 78 */	mr r4, r30
/* 804FCA6C  7F E5 FB 78 */	mr r5, r31
/* 804FCA70  7F E6 FB 78 */	mr r6, r31
/* 804FCA74  38 E0 00 00 */	li r7, 0
/* 804FCA78  39 00 00 00 */	li r8, 0
/* 804FCA7C  4B FD 9D 95 */	bl Player_actor_InitAnimation_Base2
/* 804FCA80  7F A3 EB 78 */	mr r3, r29
/* 804FCA84  7F C4 F3 78 */	mr r4, r30
/* 804FCA88  4B FD 8E 71 */	bl Player_actor_setup_main_Base
/* 804FCA8C  7F A3 EB 78 */	mr r3, r29
/* 804FCA90  4B FE 29 F5 */	bl Player_actor_sound_GASAGOSO
/* 804FCA94  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804FCA98  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCA9C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804FCAA0  4B B9 E4 81 */	bl func_8009AF20
/* 804FCAA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FCAA8  7C 08 03 A6 */	mtlr r0
/* 804FCAAC  38 21 00 30 */	addi r1, r1, 0x30
/* 804FCAB0  4E 80 00 20 */	blr 
