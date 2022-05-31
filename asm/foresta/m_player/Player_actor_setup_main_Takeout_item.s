lbl_804FC3C0:
/* 804FC3C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC3C4  7C 08 02 A6 */	mflr r0
/* 804FC3C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC3CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC3D0  4B B9 EB 05 */	bl func_8009AED4
/* 804FC3D4  7C 7D 1B 78 */	mr r29, r3
/* 804FC3D8  7C 9E 23 78 */	mr r30, r4
/* 804FC3DC  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804FC3E0  4B FE 45 C5 */	bl Player_actor_Get_ItemKind
/* 804FC3E4  38 00 00 07 */	li r0, 7
/* 804FC3E8  7C 7F 07 74 */	extsb r31, r3
/* 804FC3EC  38 BD 0D 14 */	addi r5, r29, 0xd14
/* 804FC3F0  38 9D 0D 5C */	addi r4, r29, 0xd5c
/* 804FC3F4  7C 09 03 A6 */	mtctr r0
lbl_804FC3F8:
/* 804FC3F8  80 64 00 04 */	lwz r3, 4(r4)
/* 804FC3FC  84 04 00 08 */	lwzu r0, 8(r4)
/* 804FC400  90 65 00 04 */	stw r3, 4(r5)
/* 804FC404  94 05 00 08 */	stwu r0, 8(r5)
/* 804FC408  42 00 FF F0 */	bdnz lbl_804FC3F8
/* 804FC40C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804FC410  7F E3 FB 78 */	mr r3, r31
/* 804FC414  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804FC418  D0 1D 0D 50 */	stfs f0, 0xd50(r29)
/* 804FC41C  4B ED C8 C5 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804FC420  3C E0 80 64 */	lis r7, lit_2671@ha /* 0x80646C4C@ha */
/* 804FC424  3C C0 80 64 */	lis r6, lit_6257@ha /* 0x80647E60@ha */
/* 804FC428  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804FC42C  C0 46 7E 60 */	lfs f2, lit_6257@l(r6)  /* 0x80647E60@l */
/* 804FC430  C0 64 68 F4 */	lfs f3, lit_950@l(r4)  /* 0x806468F4@l */
/* 804FC434  7C 65 1B 78 */	mr r5, r3
/* 804FC438  C0 27 6C 4C */	lfs f1, lit_2671@l(r7)  /* 0x80646C4C@l */
/* 804FC43C  7F A3 EB 78 */	mr r3, r29
/* 804FC440  7F E4 FB 78 */	mr r4, r31
/* 804FC444  38 C0 00 01 */	li r6, 1
/* 804FC448  4B FE 4C 65 */	bl Player_actor_LoadOrDestruct_Item
/* 804FC44C  7F E3 FB 78 */	mr r3, r31
/* 804FC450  4B FE 46 3D */	bl Player_actor_Get_BasicItemMainIndex_fromItemKind
/* 804FC454  7C 64 1B 78 */	mr r4, r3
/* 804FC458  7F A3 EB 78 */	mr r3, r29
/* 804FC45C  4B FD 92 31 */	bl Player_actor_Set_now_item_main_index
/* 804FC460  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804FC464  9B FD 11 2B */	stb r31, 0x112b(r29)
/* 804FC468  38 00 00 00 */	li r0, 0
/* 804FC46C  41 80 00 10 */	blt lbl_804FC47C
/* 804FC470  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804FC474  40 80 00 08 */	bge lbl_804FC47C
/* 804FC478  38 00 00 01 */	li r0, 1
lbl_804FC47C:
/* 804FC47C  2C 00 00 00 */	cmpwi r0, 0
/* 804FC480  41 82 00 64 */	beq lbl_804FC4E4
/* 804FC484  38 00 00 01 */	li r0, 1
/* 804FC488  7F A3 EB 78 */	mr r3, r29
/* 804FC48C  90 1D 0E 68 */	stw r0, 0xe68(r29)
/* 804FC490  7F C4 F3 78 */	mr r4, r30
/* 804FC494  4B FE 47 0D */	bl Player_actor_Get_umbrella_p
/* 804FC498  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FC49C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FC4A0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FC4A4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FC4A8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FC4AC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FC4B0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FC4B4  7F A3 EB 78 */	mr r3, r29
/* 804FC4B8  FC 40 08 90 */	fmr f2, f1
/* 804FC4BC  7F C4 F3 78 */	mr r4, r30
/* 804FC4C0  38 A0 00 11 */	li r5, 0x11
/* 804FC4C4  38 C0 00 11 */	li r6, 0x11
/* 804FC4C8  38 E0 00 00 */	li r7, 0
/* 804FC4CC  39 00 00 00 */	li r8, 0
/* 804FC4D0  4B FD A3 41 */	bl Player_actor_InitAnimation_Base2
/* 804FC4D4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FC4D8  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FC4DC  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 804FC4E0  48 00 00 40 */	b lbl_804FC520
lbl_804FC4E4:
/* 804FC4E4  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FC4E8  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804FC4EC  38 A3 6C 4C */	addi r5, r3, lit_2671@l /* 0x80646C4C@l */
/* 804FC4F0  C0 44 7A 44 */	lfs f2, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804FC4F4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FC4F8  7F A3 EB 78 */	mr r3, r29
/* 804FC4FC  7F C4 F3 78 */	mr r4, r30
/* 804FC500  38 A0 00 0E */	li r5, 0xe
/* 804FC504  38 C0 00 0E */	li r6, 0xe
/* 804FC508  38 E0 00 00 */	li r7, 0
/* 804FC50C  39 00 00 00 */	li r8, 0
/* 804FC510  4B FD A4 25 */	bl Player_actor_InitAnimation_Base3
/* 804FC514  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FC518  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FC51C  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
lbl_804FC520:
/* 804FC520  7F A3 EB 78 */	mr r3, r29
/* 804FC524  7F C4 F3 78 */	mr r4, r30
/* 804FC528  4B FD 93 D1 */	bl Player_actor_setup_main_Base
/* 804FC52C  7F A3 EB 78 */	mr r3, r29
/* 804FC530  4B FE 2F 55 */	bl Player_actor_sound_GASAGOSO
/* 804FC534  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC538  4B B9 E9 E9 */	bl func_8009AF20
/* 804FC53C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FC540  7C 08 03 A6 */	mtlr r0
/* 804FC544  38 21 00 20 */	addi r1, r1, 0x20
/* 804FC548  4E 80 00 20 */	blr 
