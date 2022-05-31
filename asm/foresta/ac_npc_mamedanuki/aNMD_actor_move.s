lbl_8055A320:
/* 8055A320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055A324  7C 08 02 A6 */	mflr r0
/* 8055A328  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055A32C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055A330  4B B4 0B A1 */	bl func_8009AED0
/* 8055A334  7C 9D 23 78 */	mr r29, r4
/* 8055A338  7C 7E 1B 78 */	mr r30, r3
/* 8055A33C  7F A3 EB 78 */	mr r3, r29
/* 8055A340  4B E7 F3 01 */	bl get_player_actor_withoutCheck
/* 8055A344  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055A348  7C 60 1B 78 */	mr r0, r3
/* 8055A34C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055A350  7F C3 F3 78 */	mr r3, r30
/* 8055A354  3F E4 00 02 */	addis r31, r4, 2
/* 8055A358  7C 1C 03 78 */	mr r28, r0
/* 8055A35C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8055A360  7F A4 EB 78 */	mr r4, r29
/* 8055A364  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 8055A368  7D 89 03 A6 */	mtctr r12
/* 8055A36C  4E 80 04 21 */	bctrl 
/* 8055A370  7F C3 F3 78 */	mr r3, r30
/* 8055A374  48 00 00 E1 */	bl aNSC_BGcheck
/* 8055A378  3C 60 80 65 */	lis r3, lit_2047@ha /* 0x80649700@ha */
/* 8055A37C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8055A380  C0 03 97 00 */	lfs f0, lit_2047@l(r3)  /* 0x80649700@l */
/* 8055A384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055A388  40 80 00 08 */	bge lbl_8055A390
/* 8055A38C  D0 1E 00 30 */	stfs f0, 0x30(r30)
lbl_8055A390:
/* 8055A390  7F C3 F3 78 */	mr r3, r30
/* 8055A394  7F 84 E3 78 */	mr r4, r28
/* 8055A398  48 00 0C 45 */	bl aNSC_set_zone_data
/* 8055A39C  7F C3 F3 78 */	mr r3, r30
/* 8055A3A0  48 00 0C C5 */	bl aNSC_set_player_angl
/* 8055A3A4  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 8055A3A8  7F C3 F3 78 */	mr r3, r30
/* 8055A3AC  7F A4 EB 78 */	mr r4, r29
/* 8055A3B0  7D 89 03 A6 */	mtctr r12
/* 8055A3B4  4E 80 04 21 */	bctrl 
/* 8055A3B8  7F C3 F3 78 */	mr r3, r30
/* 8055A3BC  48 00 02 D1 */	bl aNSC_talk_demo_proc
/* 8055A3C0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8055A3C4  7F C3 F3 78 */	mr r3, r30
/* 8055A3C8  7F A4 EB 78 */	mr r4, r29
/* 8055A3CC  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 8055A3D0  7D 89 03 A6 */	mtctr r12
/* 8055A3D4  4E 80 04 21 */	bctrl 
/* 8055A3D8  7F C3 F3 78 */	mr r3, r30
/* 8055A3DC  4B FF FE D5 */	bl aNMD_weight_ctrl
/* 8055A3E0  7F C3 F3 78 */	mr r3, r30
/* 8055A3E4  7F A4 EB 78 */	mr r4, r29
/* 8055A3E8  48 00 02 05 */	bl aNSC_sell_camera
/* 8055A3EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055A3F0  4B B4 0B 2D */	bl func_8009AF1C
/* 8055A3F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055A3F8  7C 08 03 A6 */	mtlr r0
/* 8055A3FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8055A400  4E 80 00 20 */	blr 
