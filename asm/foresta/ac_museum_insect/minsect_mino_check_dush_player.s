lbl_80467DB0:
/* 80467DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80467DB4  7C 08 02 A6 */	mflr r0
/* 80467DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80467DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80467DC0  4B C3 31 15 */	bl func_8009AED4
/* 80467DC4  7C 9E 23 78 */	mr r30, r4
/* 80467DC8  7C 7D 1B 78 */	mr r29, r3
/* 80467DCC  7F C3 F3 78 */	mr r3, r30
/* 80467DD0  4B F7 18 71 */	bl get_player_actor_withoutCheck
/* 80467DD4  7C 7F 1B 78 */	mr r31, r3
/* 80467DD8  38 7D 00 1C */	addi r3, r29, 0x1c
/* 80467DDC  38 9F 00 28 */	addi r4, r31, 0x28
/* 80467DE0  4B F5 31 F5 */	bl search_position_distance
/* 80467DE4  3C 60 80 64 */	lis r3, lit_1032@ha /* 0x806446F0@ha */
/* 80467DE8  C0 03 46 F0 */	lfs f0, lit_1032@l(r3)  /* 0x806446F0@l */
/* 80467DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467DF0  40 80 00 5C */	bge lbl_80467E4C
/* 80467DF4  3C 60 80 64 */	lis r3, lit_1033@ha /* 0x806446F4@ha */
/* 80467DF8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80467DFC  C0 03 46 F4 */	lfs f0, lit_1033@l(r3)  /* 0x806446F4@l */
/* 80467E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467E04  40 81 00 48 */	ble lbl_80467E4C
/* 80467E08  4B BF 4E ED */	bl fqrand
/* 80467E0C  3C 60 80 64 */	lis r3, lit_584@ha /* 0x8064462C@ha */
/* 80467E10  C0 03 46 2C */	lfs f0, lit_584@l(r3)  /* 0x8064462C@l */
/* 80467E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467E18  40 81 00 24 */	ble lbl_80467E3C
/* 80467E1C  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 80467E20  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80467E24  40 80 00 18 */	bge lbl_80467E3C
/* 80467E28  7F A3 EB 78 */	mr r3, r29
/* 80467E2C  7F C5 F3 78 */	mr r5, r30
/* 80467E30  38 80 00 02 */	li r4, 2
/* 80467E34  48 00 08 01 */	bl minsect_mino_setupAction
/* 80467E38  48 00 00 14 */	b lbl_80467E4C
lbl_80467E3C:
/* 80467E3C  7F A3 EB 78 */	mr r3, r29
/* 80467E40  7F C5 F3 78 */	mr r5, r30
/* 80467E44  38 80 00 00 */	li r4, 0
/* 80467E48  48 00 07 ED */	bl minsect_mino_setupAction
lbl_80467E4C:
/* 80467E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80467E50  4B C3 30 D1 */	bl func_8009AF20
/* 80467E54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80467E58  7C 08 03 A6 */	mtlr r0
/* 80467E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80467E60  4E 80 00 20 */	blr 
