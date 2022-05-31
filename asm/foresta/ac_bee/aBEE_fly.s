lbl_8050D184:
/* 8050D184  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050D188  7C 08 02 A6 */	mflr r0
/* 8050D18C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050D190  39 61 00 30 */	addi r11, r1, 0x30
/* 8050D194  4B B8 DD 3D */	bl func_8009AED0
/* 8050D198  7C 7F 1B 78 */	mr r31, r3
/* 8050D19C  7C 9E 23 78 */	mr r30, r4
/* 8050D1A0  4B FF FD D9 */	bl aBEE_calc_fly_angle
/* 8050D1A4  4B EC EF 15 */	bl mPlib_Get_item_net_catch_label
/* 8050D1A8  7C 1F 18 40 */	cmplw r31, r3
/* 8050D1AC  40 82 00 18 */	bne lbl_8050D1C4
/* 8050D1B0  7F E3 FB 78 */	mr r3, r31
/* 8050D1B4  7F C5 F3 78 */	mr r5, r30
/* 8050D1B8  38 80 00 02 */	li r4, 2
/* 8050D1BC  48 00 05 05 */	bl aBEE_setupAction
/* 8050D1C0  48 00 01 E0 */	b lbl_8050D3A0
lbl_8050D1C4:
/* 8050D1C4  A8 1F 00 DC */	lha r0, 0xdc(r31)
/* 8050D1C8  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8050D1CC  41 81 01 D4 */	bgt lbl_8050D3A0
/* 8050D1D0  7F C3 F3 78 */	mr r3, r30
/* 8050D1D4  4B ED 11 35 */	bl mPlib_check_player_actor_main_index_Pitfall
/* 8050D1D8  2C 03 00 00 */	cmpwi r3, 0
/* 8050D1DC  41 82 00 18 */	beq lbl_8050D1F4
/* 8050D1E0  7F E3 FB 78 */	mr r3, r31
/* 8050D1E4  7F C5 F3 78 */	mr r5, r30
/* 8050D1E8  38 80 00 03 */	li r4, 3
/* 8050D1EC  48 00 04 D5 */	bl aBEE_setupAction
/* 8050D1F0  48 00 01 B0 */	b lbl_8050D3A0
lbl_8050D1F4:
/* 8050D1F4  4B ED 08 6D */	bl mPlib_Get_status_for_bee
/* 8050D1F8  2C 03 00 02 */	cmpwi r3, 2
/* 8050D1FC  41 82 00 14 */	beq lbl_8050D210
/* 8050D200  40 80 00 54 */	bge lbl_8050D254
/* 8050D204  2C 03 00 01 */	cmpwi r3, 1
/* 8050D208  40 80 00 1C */	bge lbl_8050D224
/* 8050D20C  48 00 00 48 */	b lbl_8050D254
lbl_8050D210:
/* 8050D210  7F E3 FB 78 */	mr r3, r31
/* 8050D214  7F C5 F3 78 */	mr r5, r30
/* 8050D218  38 80 00 05 */	li r4, 5
/* 8050D21C  48 00 04 A5 */	bl aBEE_setupAction
/* 8050D220  48 00 01 80 */	b lbl_8050D3A0
lbl_8050D224:
/* 8050D224  3C 60 80 65 */	lis r3, lit_541@ha /* 0x80648EC0@ha */
/* 8050D228  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8050D22C  C0 03 8E C0 */	lfs f0, lit_541@l(r3)  /* 0x80648EC0@l */
/* 8050D230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D234  40 80 00 48 */	bge lbl_8050D27C
/* 8050D238  7F C3 F3 78 */	mr r3, r30
/* 8050D23C  4B EC D7 C5 */	bl mPlib_request_main_stung_bee_type1
/* 8050D240  7F E3 FB 78 */	mr r3, r31
/* 8050D244  7F C5 F3 78 */	mr r5, r30
/* 8050D248  38 80 00 04 */	li r4, 4
/* 8050D24C  48 00 04 75 */	bl aBEE_setupAction
/* 8050D250  48 00 01 50 */	b lbl_8050D3A0
lbl_8050D254:
/* 8050D254  3C 60 80 65 */	lis r3, lit_541@ha /* 0x80648EC0@ha */
/* 8050D258  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8050D25C  C0 03 8E C0 */	lfs f0, lit_541@l(r3)  /* 0x80648EC0@l */
/* 8050D260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D264  40 80 00 18 */	bge lbl_8050D27C
/* 8050D268  7F E3 FB 78 */	mr r3, r31
/* 8050D26C  7F C5 F3 78 */	mr r5, r30
/* 8050D270  38 80 00 03 */	li r4, 3
/* 8050D274  48 00 04 4D */	bl aBEE_setupAction
/* 8050D278  48 00 01 28 */	b lbl_8050D3A0
lbl_8050D27C:
/* 8050D27C  80 7F 04 48 */	lwz r3, 0x448(r31)
/* 8050D280  2C 03 00 00 */	cmpwi r3, 0
/* 8050D284  40 81 00 10 */	ble lbl_8050D294
/* 8050D288  38 03 FF FF */	addi r0, r3, -1
/* 8050D28C  90 1F 04 48 */	stw r0, 0x448(r31)
/* 8050D290  48 00 01 04 */	b lbl_8050D394
lbl_8050D294:
/* 8050D294  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050D298  83 83 52 F0 */	lwz r28, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8050D29C  7F 83 E3 78 */	mr r3, r28
/* 8050D2A0  4B EC C3 A1 */	bl get_player_actor_withoutCheck
/* 8050D2A4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050D2A8  7C 7D 1B 78 */	mr r29, r3
/* 8050D2AC  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8050D2B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8050D2B4  4B EC C3 8D */	bl get_player_actor_withoutCheck
/* 8050D2B8  81 83 13 08 */	lwz r12, 0x1308(r3)
/* 8050D2BC  7F A3 EB 78 */	mr r3, r29
/* 8050D2C0  7F 84 E3 78 */	mr r4, r28
/* 8050D2C4  7D 89 03 A6 */	mtctr r12
/* 8050D2C8  4E 80 04 21 */	bctrl 
/* 8050D2CC  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050D2D0  C0 03 8E 78 */	lfs f0, lit_442@l(r3)  /* 0x80648E78@l */
/* 8050D2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D2D8  41 81 00 14 */	bgt lbl_8050D2EC
/* 8050D2DC  38 61 00 08 */	addi r3, r1, 8
/* 8050D2E0  4B EC ED 71 */	bl mPlib_Check_StopNet
/* 8050D2E4  2C 03 00 00 */	cmpwi r3, 0
/* 8050D2E8  41 82 00 5C */	beq lbl_8050D344
lbl_8050D2EC:
/* 8050D2EC  3C 60 80 65 */	lis r3, lit_613@ha /* 0x80648EEC@ha */
/* 8050D2F0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8050D2F4  C0 03 8E EC */	lfs f0, lit_613@l(r3)  /* 0x80648EEC@l */
/* 8050D2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D2FC  40 80 00 48 */	bge lbl_8050D344
/* 8050D300  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050D304  83 83 52 F0 */	lwz r28, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8050D308  7F 83 E3 78 */	mr r3, r28
/* 8050D30C  4B EC C3 35 */	bl get_player_actor_withoutCheck
/* 8050D310  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050D314  7C 7D 1B 78 */	mr r29, r3
/* 8050D318  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8050D31C  80 63 00 00 */	lwz r3, 0(r3)
/* 8050D320  4B EC C3 21 */	bl get_player_actor_withoutCheck
/* 8050D324  81 83 13 0C */	lwz r12, 0x130c(r3)
/* 8050D328  7F A3 EB 78 */	mr r3, r29
/* 8050D32C  7F 84 E3 78 */	mr r4, r28
/* 8050D330  7F E5 FB 78 */	mr r5, r31
/* 8050D334  38 C0 00 01 */	li r6, 1
/* 8050D338  7D 89 03 A6 */	mtctr r12
/* 8050D33C  4E 80 04 21 */	bctrl 
/* 8050D340  48 00 00 54 */	b lbl_8050D394
lbl_8050D344:
/* 8050D344  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050D348  83 83 52 F0 */	lwz r28, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8050D34C  7F 83 E3 78 */	mr r3, r28
/* 8050D350  4B EC C2 F1 */	bl get_player_actor_withoutCheck
/* 8050D354  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050D358  7C 7D 1B 78 */	mr r29, r3
/* 8050D35C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8050D360  80 63 00 00 */	lwz r3, 0(r3)
/* 8050D364  4B EC C2 DD */	bl get_player_actor_withoutCheck
/* 8050D368  81 83 13 04 */	lwz r12, 0x1304(r3)
/* 8050D36C  3C 60 80 65 */	lis r3, lit_614@ha /* 0x80648EF0@ha */
/* 8050D370  38 C3 8E F0 */	addi r6, r3, lit_614@l /* 0x80648EF0@l */
/* 8050D374  7F 84 E3 78 */	mr r4, r28
/* 8050D378  C0 26 00 00 */	lfs f1, 0(r6)
/* 8050D37C  7F A3 EB 78 */	mr r3, r29
/* 8050D380  7F E5 FB 78 */	mr r5, r31
/* 8050D384  38 FF 00 28 */	addi r7, r31, 0x28
/* 8050D388  38 C0 00 01 */	li r6, 1
/* 8050D38C  7D 89 03 A6 */	mtctr r12
/* 8050D390  4E 80 04 21 */	bctrl 
lbl_8050D394:
/* 8050D394  7F E3 FB 78 */	mr r3, r31
/* 8050D398  7F C4 F3 78 */	mr r4, r30
/* 8050D39C  4B FF F6 E9 */	bl aBEE_fly_move_common
lbl_8050D3A0:
/* 8050D3A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8050D3A4  4B B8 DB 79 */	bl func_8009AF1C
/* 8050D3A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D3AC  7C 08 03 A6 */	mtlr r0
/* 8050D3B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050D3B4  4E 80 00 20 */	blr 
