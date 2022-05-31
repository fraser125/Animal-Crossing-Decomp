lbl_8057F8F0:
/* 8057F8F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057F8F4  7C 08 02 A6 */	mflr r0
/* 8057F8F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057F8FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F900  4B B1 B5 D5 */	bl func_8009AED4
/* 8057F904  7C 7D 1B 78 */	mr r29, r3
/* 8057F908  7C 9E 23 78 */	mr r30, r4
/* 8057F90C  4B FF FE 8D */	bl aSTM_look_player
/* 8057F910  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057F914  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057F918  3C 63 00 02 */	addis r3, r3, 2
/* 8057F91C  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 8057F920  28 03 00 00 */	cmplwi r3, 0
/* 8057F924  41 82 00 DC */	beq lbl_8057FA00
/* 8057F928  83 E3 00 00 */	lwz r31, 0(r3)
/* 8057F92C  28 1F 00 00 */	cmplwi r31, 0
/* 8057F930  41 82 00 D0 */	beq lbl_8057FA00
/* 8057F934  80 03 00 04 */	lwz r0, 4(r3)
/* 8057F938  2C 00 00 02 */	cmpwi r0, 2
/* 8057F93C  41 82 00 5C */	beq lbl_8057F998
/* 8057F940  40 80 00 C0 */	bge lbl_8057FA00
/* 8057F944  2C 00 00 01 */	cmpwi r0, 1
/* 8057F948  40 80 00 08 */	bge lbl_8057F950
/* 8057F94C  48 00 00 B4 */	b lbl_8057FA00
lbl_8057F950:
/* 8057F950  4B E1 B3 DD */	bl mEv_CheckFirstIntro
/* 8057F954  2C 03 00 00 */	cmpwi r3, 0
/* 8057F958  41 82 00 A8 */	beq lbl_8057FA00
/* 8057F95C  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 8057F960  28 03 00 00 */	cmplwi r3, 0
/* 8057F964  41 82 00 9C */	beq lbl_8057FA00
/* 8057F968  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8057F96C  2C 00 00 00 */	cmpwi r0, 0
/* 8057F970  40 82 00 90 */	bne lbl_8057FA00
/* 8057F974  7F C3 F3 78 */	mr r3, r30
/* 8057F978  4B E5 9C F9 */	bl mPlib_get_player_actor_main_index
/* 8057F97C  2C 03 00 4E */	cmpwi r3, 0x4e
/* 8057F980  41 82 00 80 */	beq lbl_8057FA00
/* 8057F984  7F A3 EB 78 */	mr r3, r29
/* 8057F988  7F C4 F3 78 */	mr r4, r30
/* 8057F98C  38 A0 00 01 */	li r5, 1
/* 8057F990  48 00 0A 15 */	bl aSTM_setup_think_proc
/* 8057F994  48 00 00 6C */	b lbl_8057FA00
lbl_8057F998:
/* 8057F998  4B DF CF 05 */	bl mBGMPsComp_execute_bgm_num_get
/* 8057F99C  98 7D 09 A6 */	stb r3, 0x9a6(r29)
/* 8057F9A0  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 8057F9A4  28 03 00 00 */	cmplwi r3, 0
/* 8057F9A8  41 82 00 58 */	beq lbl_8057FA00
/* 8057F9AC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8057F9B0  2C 00 00 00 */	cmpwi r0, 0
/* 8057F9B4  40 82 00 4C */	bne lbl_8057FA00
/* 8057F9B8  7F C3 F3 78 */	mr r3, r30
/* 8057F9BC  4B E5 9C B5 */	bl mPlib_get_player_actor_main_index
/* 8057F9C0  2C 03 00 4E */	cmpwi r3, 0x4e
/* 8057F9C4  41 82 00 3C */	beq lbl_8057FA00
/* 8057F9C8  7F A3 EB 78 */	mr r3, r29
/* 8057F9CC  7F C4 F3 78 */	mr r4, r30
/* 8057F9D0  38 A0 00 01 */	li r5, 1
/* 8057F9D4  48 00 09 D1 */	bl aSTM_setup_think_proc
/* 8057F9D8  38 60 00 01 */	li r3, 1
/* 8057F9DC  4B DF CE 45 */	bl mBGMPsComp_scene_mode
/* 8057F9E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057F9E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057F9E8  3C 63 00 02 */	addis r3, r3, 2
/* 8057F9EC  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8057F9F0  28 00 00 04 */	cmplwi r0, 4
/* 8057F9F4  41 82 00 0C */	beq lbl_8057FA00
/* 8057F9F8  38 00 00 03 */	li r0, 3
/* 8057F9FC  98 1D 09 A1 */	stb r0, 0x9a1(r29)
lbl_8057FA00:
/* 8057FA00  39 61 00 20 */	addi r11, r1, 0x20
/* 8057FA04  4B B1 B5 1D */	bl func_8009AF20
/* 8057FA08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057FA0C  7C 08 03 A6 */	mtlr r0
/* 8057FA10  38 21 00 20 */	addi r1, r1, 0x20
/* 8057FA14  4E 80 00 20 */	blr 
