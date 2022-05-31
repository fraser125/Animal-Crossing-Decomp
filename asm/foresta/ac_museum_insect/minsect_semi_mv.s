lbl_8045E2A8:
/* 8045E2A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045E2AC  7C 08 02 A6 */	mflr r0
/* 8045E2B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045E2B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8045E2B8  4B C3 CC 1D */	bl func_8009AED4
/* 8045E2BC  7C 7D 1B 78 */	mr r29, r3
/* 8045E2C0  7C 9E 23 78 */	mr r30, r4
/* 8045E2C4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8045E2C8  3B E5 FF FC */	addi r31, r5, -4
/* 8045E2CC  4B FF E3 AD */	bl get_now_mind_flag
/* 8045E2D0  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 8045E2D4  2C 00 00 00 */	cmpwi r0, 0
/* 8045E2D8  41 82 02 7C */	beq lbl_8045E554
/* 8045E2DC  7F A3 EB 78 */	mr r3, r29
/* 8045E2E0  4B FF FE 15 */	bl mi_semi_hane_anime
/* 8045E2E4  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 8045E2E8  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045E2EC  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 8045E2F0  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045E2F4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8045E2F8  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045E2FC  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8045E300  FC 60 30 34 */	frsqrte f3, f6
/* 8045E304  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045E308  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8045E30C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045E310  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045E314  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045E318  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045E31C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045E320  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045E324  FC 26 00 72 */	fmul f1, f6, f1
/* 8045E328  FC 24 08 28 */	fsub f1, f4, f1
/* 8045E32C  FC 63 00 72 */	fmul f3, f3, f1
/* 8045E330  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045E334  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045E338  FC 26 00 72 */	fmul f1, f6, f1
/* 8045E33C  FC 24 08 28 */	fsub f1, f4, f1
/* 8045E340  FC 63 00 72 */	fmul f3, f3, f1
/* 8045E344  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045E348  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045E34C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045E350  FC 24 08 28 */	fsub f1, f4, f1
/* 8045E354  FC 23 00 72 */	fmul f1, f3, f1
/* 8045E358  FC 26 00 72 */	fmul f1, f6, f1
/* 8045E35C  FC 20 08 18 */	frsp f1, f1
/* 8045E360  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045E364  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045E368  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045E36C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045E370  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045E374  40 81 00 54 */	ble lbl_8045E3C8
/* 8045E378  FC 20 10 34 */	frsqrte f1, f2
/* 8045E37C  FC 01 00 72 */	fmul f0, f1, f1
/* 8045E380  FC 25 00 72 */	fmul f1, f5, f1
/* 8045E384  FC 02 00 32 */	fmul f0, f2, f0
/* 8045E388  FC 04 00 28 */	fsub f0, f4, f0
/* 8045E38C  FC 21 00 32 */	fmul f1, f1, f0
/* 8045E390  FC 01 00 72 */	fmul f0, f1, f1
/* 8045E394  FC 25 00 72 */	fmul f1, f5, f1
/* 8045E398  FC 02 00 32 */	fmul f0, f2, f0
/* 8045E39C  FC 04 00 28 */	fsub f0, f4, f0
/* 8045E3A0  FC 21 00 32 */	fmul f1, f1, f0
/* 8045E3A4  FC 01 00 72 */	fmul f0, f1, f1
/* 8045E3A8  FC 25 00 72 */	fmul f1, f5, f1
/* 8045E3AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8045E3B0  FC 04 00 28 */	fsub f0, f4, f0
/* 8045E3B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8045E3B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8045E3BC  FC 00 00 18 */	frsp f0, f0
/* 8045E3C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045E3C4  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8045E3C8:
/* 8045E3C8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045E3CC  A8 9D 00 74 */	lha r4, 0x74(r29)
/* 8045E3D0  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8045E3D4  38 7D 00 72 */	addi r3, r29, 0x72
/* 8045E3D8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045E3DC  38 A0 00 88 */	li r5, 0x88
/* 8045E3E0  38 C0 00 2D */	li r6, 0x2d
/* 8045E3E4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8045E3E8  4B F5 CF 29 */	bl add_calc_short_angle2
/* 8045E3EC  7F A3 EB 78 */	mr r3, r29
/* 8045E3F0  7F C4 F3 78 */	mr r4, r30
/* 8045E3F4  4B FF FD E5 */	bl mi_semi_check_player
/* 8045E3F8  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 8045E3FC  38 03 FF FF */	addi r0, r3, -1
/* 8045E400  B0 1D 00 76 */	sth r0, 0x76(r29)
/* 8045E404  A8 1D 00 76 */	lha r0, 0x76(r29)
/* 8045E408  2C 00 00 00 */	cmpwi r0, 0
/* 8045E40C  40 80 00 0C */	bge lbl_8045E418
/* 8045E410  38 00 00 00 */	li r0, 0
/* 8045E414  B0 1D 00 76 */	sth r0, 0x76(r29)
lbl_8045E418:
/* 8045E418  A8 1D 00 76 */	lha r0, 0x76(r29)
/* 8045E41C  2C 00 03 84 */	cmpwi r0, 0x384
/* 8045E420  40 81 00 0C */	ble lbl_8045E42C
/* 8045E424  38 00 03 84 */	li r0, 0x384
/* 8045E428  B0 1D 00 76 */	sth r0, 0x76(r29)
lbl_8045E42C:
/* 8045E42C  A8 1D 00 76 */	lha r0, 0x76(r29)
/* 8045E430  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 8045E434  40 81 00 10 */	ble lbl_8045E444
/* 8045E438  38 00 00 00 */	li r0, 0
/* 8045E43C  B0 1D 00 74 */	sth r0, 0x74(r29)
/* 8045E440  48 00 01 14 */	b lbl_8045E554
lbl_8045E444:
/* 8045E444  A8 1D 00 78 */	lha r0, 0x78(r29)
/* 8045E448  2C 00 00 00 */	cmpwi r0, 0
/* 8045E44C  41 82 00 0C */	beq lbl_8045E458
/* 8045E450  38 00 F8 E4 */	li r0, -1820
/* 8045E454  B0 1D 00 74 */	sth r0, 0x74(r29)
lbl_8045E458:
/* 8045E458  A8 7D 00 6E */	lha r3, 0x6e(r29)
/* 8045E45C  38 03 FF FF */	addi r0, r3, -1
/* 8045E460  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8045E464  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 8045E468  2C 00 00 00 */	cmpwi r0, 0
/* 8045E46C  40 80 00 78 */	bge lbl_8045E4E4
/* 8045E470  A8 1D 00 78 */	lha r0, 0x78(r29)
/* 8045E474  2C 00 00 00 */	cmpwi r0, 0
/* 8045E478  41 82 00 38 */	beq lbl_8045E4B0
/* 8045E47C  38 00 00 00 */	li r0, 0
/* 8045E480  B0 1D 00 78 */	sth r0, 0x78(r29)
/* 8045E484  B0 1D 00 74 */	sth r0, 0x74(r29)
/* 8045E488  4B BF E8 6D */	bl fqrand
/* 8045E48C  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 8045E490  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 8045E494  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045E498  FC 00 00 1E */	fctiwz f0, f0
/* 8045E49C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045E4A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8045E4A4  38 03 01 68 */	addi r0, r3, 0x168
/* 8045E4A8  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8045E4AC  48 00 00 38 */	b lbl_8045E4E4
lbl_8045E4B0:
/* 8045E4B0  38 60 00 01 */	li r3, 1
/* 8045E4B4  38 00 F8 E4 */	li r0, -1820
/* 8045E4B8  B0 7D 00 78 */	sth r3, 0x78(r29)
/* 8045E4BC  B0 1D 00 74 */	sth r0, 0x74(r29)
/* 8045E4C0  4B BF E8 35 */	bl fqrand
/* 8045E4C4  3C 60 80 64 */	lis r3, lit_872@ha /* 0x806446B4@ha */
/* 8045E4C8  C0 03 46 B4 */	lfs f0, lit_872@l(r3)  /* 0x806446B4@l */
/* 8045E4CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045E4D0  FC 00 00 1E */	fctiwz f0, f0
/* 8045E4D4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045E4D8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8045E4DC  38 03 2E E0 */	addi r0, r3, 0x2ee0
/* 8045E4E0  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_8045E4E4:
/* 8045E4E4  A8 1D 00 78 */	lha r0, 0x78(r29)
/* 8045E4E8  2C 00 00 01 */	cmpwi r0, 1
/* 8045E4EC  40 82 00 68 */	bne lbl_8045E554
/* 8045E4F0  A8 7D 00 72 */	lha r3, 0x72(r29)
/* 8045E4F4  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 8045E4F8  7C 03 00 00 */	cmpw r3, r0
/* 8045E4FC  40 82 00 58 */	bne lbl_8045E554
/* 8045E500  7F C3 F3 78 */	mr r3, r30
/* 8045E504  4B F7 B1 3D */	bl get_player_actor_withoutCheck
/* 8045E508  7C 64 1B 78 */	mr r4, r3
/* 8045E50C  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8045E510  38 84 00 28 */	addi r4, r4, 0x28
/* 8045E514  4B F5 CA C1 */	bl search_position_distance
/* 8045E518  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 8045E51C  C0 03 45 D0 */	lfs f0, lit_464@l(r3)  /* 0x806445D0@l */
/* 8045E520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045E524  40 80 00 1C */	bge lbl_8045E540
/* 8045E528  3C 80 80 64 */	lis r4, semi_sound_data@ha /* 0x806446A4@ha */
/* 8045E52C  7F A3 EB 78 */	mr r3, r29
/* 8045E530  38 84 46 A4 */	addi r4, r4, semi_sound_data@l /* 0x806446A4@l */
/* 8045E534  38 BD 00 1C */	addi r5, r29, 0x1c
/* 8045E538  7C 84 F8 AE */	lbzx r4, r4, r31
/* 8045E53C  48 1C FA 09 */	bl sAdo_OngenPos
lbl_8045E540:
/* 8045E540  A8 1D 00 70 */	lha r0, 0x70(r29)
/* 8045E544  2C 00 00 00 */	cmpwi r0, 0
/* 8045E548  41 81 00 0C */	bgt lbl_8045E554
/* 8045E54C  38 00 00 07 */	li r0, 7
/* 8045E550  B0 1D 00 70 */	sth r0, 0x70(r29)
lbl_8045E554:
/* 8045E554  39 61 00 30 */	addi r11, r1, 0x30
/* 8045E558  4B C3 C9 C9 */	bl func_8009AF20
/* 8045E55C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045E560  7C 08 03 A6 */	mtlr r0
/* 8045E564  38 21 00 30 */	addi r1, r1, 0x30
/* 8045E568  4E 80 00 20 */	blr 
