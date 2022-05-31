lbl_8055644C:
/* 8055644C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556450  7C 08 02 A6 */	mflr r0
/* 80556454  38 A0 00 01 */	li r5, 1
/* 80556458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055645C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80556460  7C 9F 23 78 */	mr r31, r4
/* 80556464  38 80 00 00 */	li r4, 0
/* 80556468  93 C1 00 08 */	stw r30, 8(r1)
/* 8055646C  7C 7E 1B 78 */	mr r30, r3
/* 80556470  7F E3 FB 78 */	mr r3, r31
/* 80556474  4B E9 AE 45 */	bl goto_next_scene
/* 80556478  38 00 00 03 */	li r0, 3
/* 8055647C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80556480  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80556484  98 1F 20 D1 */	stb r0, 0x20d1(r31)
/* 80556488  3C 63 00 02 */	addis r3, r3, 2
/* 8055648C  38 00 00 04 */	li r0, 4
/* 80556490  98 03 61 4F */	stb r0, 0x614f(r3)
/* 80556494  4B E4 46 59 */	bl mEv_SetFirstJob
/* 80556498  4B E4 48 51 */	bl mEv_SetFirstIntro
/* 8055649C  4B E6 43 7D */	bl mEnv_DecideWeather_NormalGameStart
/* 805564A0  7F C3 F3 78 */	mr r3, r30
/* 805564A4  4B FF EF 49 */	bl aNG2_set_pl_face_type
/* 805564A8  4B E8 A0 09 */	bl mPr_SetNowPrivateCloth
/* 805564AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805564B0  38 00 00 01 */	li r0, 1
/* 805564B4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805564B8  38 60 41 C2 */	li r3, 0x41c2
/* 805564BC  3C 84 00 02 */	addis r4, r4, 2
/* 805564C0  98 04 65 21 */	stb r0, 0x6521(r4)
/* 805564C4  4B E2 56 49 */	bl mBGMPsComp_make_ps_wipe
/* 805564C8  38 60 00 12 */	li r3, 0x12
/* 805564CC  4B E2 63 55 */	bl mBGMPsComp_scene_mode
/* 805564D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805564D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805564D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805564DC  7C 08 03 A6 */	mtlr r0
/* 805564E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805564E4  4E 80 00 20 */	blr 
