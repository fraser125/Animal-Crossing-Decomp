lbl_803772C0:
/* 803772C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803772C4  7C 08 02 A6 */	mflr r0
/* 803772C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803772CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803772D0  7C 7F 1B 78 */	mr r31, r3
/* 803772D4  48 06 23 6D */	bl get_player_actor_withoutCheck
/* 803772D8  7C 64 1B 78 */	mr r4, r3
/* 803772DC  7F E3 FB 78 */	mr r3, r31
/* 803772E0  38 84 00 28 */	addi r4, r4, 0x28
/* 803772E4  38 A1 00 08 */	addi r5, r1, 8
/* 803772E8  48 04 44 3D */	bl Game_play_Projection_Trans
/* 803772EC  3C 60 80 64 */	lis r3, lit_489@ha /* 0x806412A0@ha */
/* 803772F0  C0 21 00 08 */	lfs f1, 8(r1)
/* 803772F4  C0 03 12 A0 */	lfs f0, lit_489@l(r3)  /* 0x806412A0@l */
/* 803772F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803772FC  4C 41 13 82 */	cror 2, 1, 2
/* 80377300  40 82 00 B4 */	bne lbl_803773B4
/* 80377304  3C 60 80 64 */	lis r3, lit_490@ha /* 0x806412A4@ha */
/* 80377308  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8037730C  C0 03 12 A4 */	lfs f0, lit_490@l(r3)  /* 0x806412A4@l */
/* 80377310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80377314  4C 41 13 82 */	cror 2, 1, 2
/* 80377318  40 82 00 9C */	bne lbl_803773B4
/* 8037731C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377320  38 83 C9 68 */	addi r4, r3, banti@l /* 0x8112C968@l */
/* 80377324  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80377328  2C 00 00 00 */	cmpwi r0, 0
/* 8037732C  40 82 00 18 */	bne lbl_80377344
/* 80377330  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 80377334  38 00 00 01 */	li r0, 1
/* 80377338  C0 03 12 9C */	lfs f0, data_8064129C@l(r3)  /* 0x8064129C@l */
/* 8037733C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80377340  D0 04 00 18 */	stfs f0, 0x18(r4)
lbl_80377344:
/* 80377344  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377348  3C 80 80 64 */	lis r4, lit_491@ha /* 0x806412A8@ha */
/* 8037734C  38 A3 C9 68 */	addi r5, r3, banti@l /* 0x8112C968@l */
/* 80377350  C0 24 12 A8 */	lfs f1, lit_491@l(r4)  /* 0x806412A8@l */
/* 80377354  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 80377358  3C 60 80 64 */	lis r3, lit_492@ha /* 0x806412AC@ha */
/* 8037735C  C0 03 12 AC */	lfs f0, lit_492@l(r3)  /* 0x806412AC@l */
/* 80377360  EC 22 08 2A */	fadds f1, f2, f1
/* 80377364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80377368  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 8037736C  40 81 00 D8 */	ble lbl_80377444
/* 80377370  3C 60 80 64 */	lis r3, lit_493@ha /* 0x806412B0@ha */
/* 80377374  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80377378  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8037737C  C0 03 12 B0 */	lfs f0, lit_493@l(r3)  /* 0x806412B0@l */
/* 80377380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80377384  40 80 00 18 */	bge lbl_8037739C
/* 80377388  38 60 00 01 */	li r3, 1
/* 8037738C  38 00 00 00 */	li r0, 0
/* 80377390  90 65 00 10 */	stw r3, 0x10(r5)
/* 80377394  90 05 00 04 */	stw r0, 4(r5)
/* 80377398  48 00 00 AC */	b lbl_80377444
lbl_8037739C:
/* 8037739C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 803773A0  2C 00 00 00 */	cmpwi r0, 0
/* 803773A4  40 82 00 A0 */	bne lbl_80377444
/* 803773A8  38 00 00 01 */	li r0, 1
/* 803773AC  90 05 00 04 */	stw r0, 4(r5)
/* 803773B0  48 00 00 94 */	b lbl_80377444
lbl_803773B4:
/* 803773B4  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 803773B8  38 83 C9 68 */	addi r4, r3, banti@l /* 0x8112C968@l */
/* 803773BC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803773C0  2C 00 00 01 */	cmpwi r0, 1
/* 803773C4  40 82 00 18 */	bne lbl_803773DC
/* 803773C8  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 803773CC  38 00 00 00 */	li r0, 0
/* 803773D0  C0 03 12 9C */	lfs f0, data_8064129C@l(r3)  /* 0x8064129C@l */
/* 803773D4  90 04 00 14 */	stw r0, 0x14(r4)
/* 803773D8  D0 04 00 18 */	stfs f0, 0x18(r4)
lbl_803773DC:
/* 803773DC  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 803773E0  3C 80 80 64 */	lis r4, lit_491@ha /* 0x806412A8@ha */
/* 803773E4  38 A3 C9 68 */	addi r5, r3, banti@l /* 0x8112C968@l */
/* 803773E8  C0 24 12 A8 */	lfs f1, lit_491@l(r4)  /* 0x806412A8@l */
/* 803773EC  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 803773F0  3C 60 80 64 */	lis r3, lit_492@ha /* 0x806412AC@ha */
/* 803773F4  C0 03 12 AC */	lfs f0, lit_492@l(r3)  /* 0x806412AC@l */
/* 803773F8  EC 22 08 2A */	fadds f1, f2, f1
/* 803773FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80377400  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 80377404  40 81 00 40 */	ble lbl_80377444
/* 80377408  3C 60 80 64 */	lis r3, lit_493@ha /* 0x806412B0@ha */
/* 8037740C  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80377410  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80377414  C0 03 12 B0 */	lfs f0, lit_493@l(r3)  /* 0x806412B0@l */
/* 80377418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037741C  40 80 00 14 */	bge lbl_80377430
/* 80377420  38 00 00 00 */	li r0, 0
/* 80377424  90 05 00 10 */	stw r0, 0x10(r5)
/* 80377428  90 05 00 04 */	stw r0, 4(r5)
/* 8037742C  48 00 00 18 */	b lbl_80377444
lbl_80377430:
/* 80377430  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80377434  2C 00 00 01 */	cmpwi r0, 1
/* 80377438  40 82 00 0C */	bne lbl_80377444
/* 8037743C  38 00 00 01 */	li r0, 1
/* 80377440  90 05 00 04 */	stw r0, 4(r5)
lbl_80377444:
/* 80377444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80377448  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037744C  7C 08 03 A6 */	mtlr r0
/* 80377450  38 21 00 20 */	addi r1, r1, 0x20
/* 80377454  4E 80 00 20 */	blr 
