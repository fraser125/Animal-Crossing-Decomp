lbl_8054D2D0:
/* 8054D2D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054D2D4  7C 08 02 A6 */	mflr r0
/* 8054D2D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054D2DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054D2E0  4B B4 DB F1 */	bl func_8009AED0
/* 8054D2E4  7C 9D 23 78 */	mr r29, r4
/* 8054D2E8  7C 7E 1B 78 */	mr r30, r3
/* 8054D2EC  7F A3 EB 78 */	mr r3, r29
/* 8054D2F0  4B E8 C3 51 */	bl get_player_actor_withoutCheck
/* 8054D2F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054D2F8  7C 60 1B 78 */	mr r0, r3
/* 8054D2FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054D300  7F C3 F3 78 */	mr r3, r30
/* 8054D304  3F E4 00 02 */	addis r31, r4, 2
/* 8054D308  7C 1C 03 78 */	mr r28, r0
/* 8054D30C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8054D310  7F A4 EB 78 */	mr r4, r29
/* 8054D314  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 8054D318  7D 89 03 A6 */	mtctr r12
/* 8054D31C  4E 80 04 21 */	bctrl 
/* 8054D320  7F C3 F3 78 */	mr r3, r30
/* 8054D324  48 00 00 D9 */	bl aNSC_BGcheck
/* 8054D328  3C 60 80 65 */	lis r3, lit_2199@ha /* 0x80649530@ha */
/* 8054D32C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8054D330  C0 03 95 30 */	lfs f0, lit_2199@l(r3)  /* 0x80649530@l */
/* 8054D334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054D338  40 80 00 08 */	bge lbl_8054D340
/* 8054D33C  D0 1E 00 30 */	stfs f0, 0x30(r30)
lbl_8054D340:
/* 8054D340  7F C3 F3 78 */	mr r3, r30
/* 8054D344  7F 84 E3 78 */	mr r4, r28
/* 8054D348  48 00 0C B9 */	bl aNSC_set_zone_data
/* 8054D34C  7F C3 F3 78 */	mr r3, r30
/* 8054D350  48 00 0D 35 */	bl aNSC_set_player_angl
/* 8054D354  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 8054D358  7F C3 F3 78 */	mr r3, r30
/* 8054D35C  7F A4 EB 78 */	mr r4, r29
/* 8054D360  7D 89 03 A6 */	mtctr r12
/* 8054D364  4E 80 04 21 */	bctrl 
/* 8054D368  7F C3 F3 78 */	mr r3, r30
/* 8054D36C  48 00 03 35 */	bl aNSC_talk_demo_proc
/* 8054D370  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8054D374  7F C3 F3 78 */	mr r3, r30
/* 8054D378  7F A4 EB 78 */	mr r4, r29
/* 8054D37C  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 8054D380  7D 89 03 A6 */	mtctr r12
/* 8054D384  4E 80 04 21 */	bctrl 
/* 8054D388  7F C3 F3 78 */	mr r3, r30
/* 8054D38C  7F A4 EB 78 */	mr r4, r29
/* 8054D390  48 00 02 71 */	bl aNSC_sell_camera
/* 8054D394  39 61 00 20 */	addi r11, r1, 0x20
/* 8054D398  4B B4 DB 85 */	bl func_8009AF1C
/* 8054D39C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054D3A0  7C 08 03 A6 */	mtlr r0
/* 8054D3A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8054D3A8  4E 80 00 20 */	blr 
