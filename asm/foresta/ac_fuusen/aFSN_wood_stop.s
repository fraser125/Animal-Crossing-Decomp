lbl_8050E20C:
/* 8050E20C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8050E210  7C 08 02 A6 */	mflr r0
/* 8050E214  90 01 00 74 */	stw r0, 0x74(r1)
/* 8050E218  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8050E21C  7C 7F 1B 78 */	mr r31, r3
/* 8050E220  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8050E224  7C 9E 23 78 */	mr r30, r4
/* 8050E228  80 A3 01 84 */	lwz r5, 0x184(r3)
/* 8050E22C  38 05 FF FF */	addi r0, r5, -1
/* 8050E230  90 03 01 84 */	stw r0, 0x184(r3)
/* 8050E234  80 03 01 84 */	lwz r0, 0x184(r3)
/* 8050E238  2C 00 06 12 */	cmpwi r0, 0x612
/* 8050E23C  41 81 00 18 */	bgt lbl_8050E254
/* 8050E240  38 00 06 12 */	li r0, 0x612
/* 8050E244  38 A0 00 03 */	li r5, 3
/* 8050E248  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8050E24C  48 00 08 D5 */	bl aFSN_setupAction
/* 8050E250  48 00 04 18 */	b lbl_8050E668
lbl_8050E254:
/* 8050E254  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8050E258  38 61 00 54 */	addi r3, r1, 0x54
/* 8050E25C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050E260  38 81 00 3C */	addi r4, r1, 0x3c
/* 8050E264  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8050E268  90 01 00 40 */	stw r0, 0x40(r1)
/* 8050E26C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050E270  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050E274  4B E9 72 C9 */	bl mFI_Wpos2UtCenterWpos
/* 8050E278  38 61 00 48 */	addi r3, r1, 0x48
/* 8050E27C  38 81 00 54 */	addi r4, r1, 0x54
/* 8050E280  4B EA CC 3D */	bl xyz_t_move
/* 8050E284  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8050E288  38 61 00 30 */	addi r3, r1, 0x30
/* 8050E28C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050E290  90 81 00 30 */	stw r4, 0x30(r1)
/* 8050E294  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050E298  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050E29C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8050E2A0  4B E9 91 91 */	bl mFI_GetUnitFG
/* 8050E2A4  28 03 00 00 */	cmplwi r3, 0
/* 8050E2A8  41 82 00 60 */	beq lbl_8050E308
/* 8050E2AC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8050E2B0  28 00 08 61 */	cmplwi r0, 0x861
/* 8050E2B4  40 82 00 54 */	bne lbl_8050E308
/* 8050E2B8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8050E2BC  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E2C0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050E2C4  C0 23 8E FC */	lfs f1, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E2C8  38 61 00 24 */	addi r3, r1, 0x24
/* 8050E2CC  90 81 00 24 */	stw r4, 0x24(r1)
/* 8050E2D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8050E2D4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050E2D8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8050E2DC  4B E8 16 BD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8050E2E0  3C 80 80 65 */	lis r4, lit_610@ha /* 0x80648F68@ha */
/* 8050E2E4  3C 60 80 65 */	lis r3, lit_611@ha /* 0x80648F6C@ha */
/* 8050E2E8  C0 64 8F 68 */	lfs f3, lit_610@l(r4)  /* 0x80648F68@l */
/* 8050E2EC  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8050E2F0  C0 03 8F 6C */	lfs f0, lit_611@l(r3)  /* 0x80648F6C@l */
/* 8050E2F4  EC 23 08 2A */	fadds f1, f3, f1
/* 8050E2F8  EC 02 00 2A */	fadds f0, f2, f0
/* 8050E2FC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8050E300  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8050E304  48 00 00 64 */	b lbl_8050E368
lbl_8050E308:
/* 8050E308  3C 80 80 65 */	lis r4, lit_612@ha /* 0x80648F70@ha */
/* 8050E30C  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E310  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8050E314  C0 04 8F 70 */	lfs f0, lit_612@l(r4)  /* 0x80648F70@l */
/* 8050E318  C0 23 8E FC */	lfs f1, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E31C  38 61 00 18 */	addi r3, r1, 0x18
/* 8050E320  EC 02 00 28 */	fsubs f0, f2, f0
/* 8050E324  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8050E328  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8050E32C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050E330  90 81 00 18 */	stw r4, 0x18(r1)
/* 8050E334  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8050E338  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050E33C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050E340  4B E8 16 59 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8050E344  3C 80 80 65 */	lis r4, lit_613@ha /* 0x80648F74@ha */
/* 8050E348  3C 60 80 65 */	lis r3, lit_614@ha /* 0x80648F78@ha */
/* 8050E34C  C0 64 8F 74 */	lfs f3, lit_613@l(r4)  /* 0x80648F74@l */
/* 8050E350  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8050E354  C0 03 8F 78 */	lfs f0, lit_614@l(r3)  /* 0x80648F78@l */
/* 8050E358  EC 23 08 2A */	fadds f1, f3, f1
/* 8050E35C  EC 02 00 2A */	fadds f0, f2, f0
/* 8050E360  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8050E364  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_8050E368:
/* 8050E368  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 8050E36C  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E370  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8050E374  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8050E378  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8050E37C  EC 63 00 28 */	fsubs f3, f3, f0
/* 8050E380  C0 03 8E FC */	lfs f0, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E384  EC 22 08 28 */	fsubs f1, f2, f1
/* 8050E388  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8050E38C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8050E390  EC 82 08 2A */	fadds f4, f2, f1
/* 8050E394  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8050E398  40 81 00 68 */	ble lbl_8050E400
/* 8050E39C  FC 20 20 34 */	frsqrte f1, f4
/* 8050E3A0  3C 60 80 65 */	lis r3, lit_601@ha /* 0x80648F3C@ha */
/* 8050E3A4  38 83 8F 3C */	addi r4, r3, lit_601@l /* 0x80648F3C@l */
/* 8050E3A8  3C 60 80 65 */	lis r3, lit_602@ha /* 0x80648F44@ha */
/* 8050E3AC  C8 64 00 00 */	lfd f3, 0(r4)
/* 8050E3B0  FC 01 00 72 */	fmul f0, f1, f1
/* 8050E3B4  C8 43 8F 44 */	lfd f2, lit_602@l(r3)  /* 0x80648F44@l */
/* 8050E3B8  FC 23 00 72 */	fmul f1, f3, f1
/* 8050E3BC  FC 04 00 32 */	fmul f0, f4, f0
/* 8050E3C0  FC 02 00 28 */	fsub f0, f2, f0
/* 8050E3C4  FC 21 00 32 */	fmul f1, f1, f0
/* 8050E3C8  FC 01 00 72 */	fmul f0, f1, f1
/* 8050E3CC  FC 23 00 72 */	fmul f1, f3, f1
/* 8050E3D0  FC 04 00 32 */	fmul f0, f4, f0
/* 8050E3D4  FC 02 00 28 */	fsub f0, f2, f0
/* 8050E3D8  FC 21 00 32 */	fmul f1, f1, f0
/* 8050E3DC  FC 01 00 72 */	fmul f0, f1, f1
/* 8050E3E0  FC 23 00 72 */	fmul f1, f3, f1
/* 8050E3E4  FC 04 00 32 */	fmul f0, f4, f0
/* 8050E3E8  FC 02 00 28 */	fsub f0, f2, f0
/* 8050E3EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8050E3F0  FC 04 00 32 */	fmul f0, f4, f0
/* 8050E3F4  FC 00 00 18 */	frsp f0, f0
/* 8050E3F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8050E3FC  C0 81 00 14 */	lfs f4, 0x14(r1)
lbl_8050E400:
/* 8050E400  3C 60 80 65 */	lis r3, lit_686@ha /* 0x80648F88@ha */
/* 8050E404  C0 03 8F 88 */	lfs f0, lit_686@l(r3)  /* 0x80648F88@l */
/* 8050E408  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8050E40C  40 81 01 DC */	ble lbl_8050E5E8
/* 8050E410  3C 60 80 65 */	lis r3, lit_600@ha /* 0x80648F34@ha */
/* 8050E414  3C 80 80 65 */	lis r4, lit_601@ha /* 0x80648F3C@ha */
/* 8050E418  38 A3 8F 34 */	addi r5, r3, lit_600@l /* 0x80648F34@l */
/* 8050E41C  C8 E4 8F 3C */	lfd f7, lit_601@l(r4)  /* 0x80648F3C@l */
/* 8050E420  C9 05 00 00 */	lfd f8, 0(r5)
/* 8050E424  3C 60 80 65 */	lis r3, lit_602@ha /* 0x80648F44@ha */
/* 8050E428  38 C3 8F 44 */	addi r6, r3, lit_602@l /* 0x80648F44@l */
/* 8050E42C  3C 80 80 65 */	lis r4, lit_599@ha /* 0x80648F2C@ha */
/* 8050E430  FC 20 40 34 */	frsqrte f1, f8
/* 8050E434  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648F04@ha */
/* 8050E438  38 A3 8F 04 */	addi r5, r3, lit_447@l /* 0x80648F04@l */
/* 8050E43C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8050E440  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E444  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050E448  FC 41 00 72 */	fmul f2, f1, f1
/* 8050E44C  C0 83 8E FC */	lfs f4, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E450  C0 64 8F 2C */	lfs f3, lit_599@l(r4)  /* 0x80648F2C@l */
/* 8050E454  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050E458  FC A7 00 72 */	fmul f5, f7, f1
/* 8050E45C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8050E460  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E464  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E468  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050E46C  FC 45 01 72 */	fmul f2, f5, f5
/* 8050E470  FC A7 01 72 */	fmul f5, f7, f5
/* 8050E474  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E478  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E47C  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050E480  FC 45 01 72 */	fmul f2, f5, f5
/* 8050E484  FC A7 01 72 */	fmul f5, f7, f5
/* 8050E488  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E48C  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E490  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050E494  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E498  FC 40 10 18 */	frsp f2, f2
/* 8050E49C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8050E4A0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8050E4A4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8050E4A8  4B EA CD 09 */	bl add_calc
/* 8050E4AC  3C 60 80 65 */	lis r3, lit_600@ha /* 0x80648F34@ha */
/* 8050E4B0  3C 80 80 65 */	lis r4, lit_601@ha /* 0x80648F3C@ha */
/* 8050E4B4  38 A3 8F 34 */	addi r5, r3, lit_600@l /* 0x80648F34@l */
/* 8050E4B8  C8 E4 8F 3C */	lfd f7, lit_601@l(r4)  /* 0x80648F3C@l */
/* 8050E4BC  C9 05 00 00 */	lfd f8, 0(r5)
/* 8050E4C0  3C 60 80 65 */	lis r3, lit_602@ha /* 0x80648F44@ha */
/* 8050E4C4  38 C3 8F 44 */	addi r6, r3, lit_602@l /* 0x80648F44@l */
/* 8050E4C8  3C 80 80 65 */	lis r4, lit_599@ha /* 0x80648F2C@ha */
/* 8050E4CC  FC 20 40 34 */	frsqrte f1, f8
/* 8050E4D0  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648F04@ha */
/* 8050E4D4  38 A3 8F 04 */	addi r5, r3, lit_447@l /* 0x80648F04@l */
/* 8050E4D8  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8050E4DC  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E4E0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050E4E4  FC 41 00 72 */	fmul f2, f1, f1
/* 8050E4E8  C0 83 8E FC */	lfs f4, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E4EC  C0 64 8F 2C */	lfs f3, lit_599@l(r4)  /* 0x80648F2C@l */
/* 8050E4F0  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8050E4F4  FC A7 00 72 */	fmul f5, f7, f1
/* 8050E4F8  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8050E4FC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E500  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E504  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050E508  FC 45 01 72 */	fmul f2, f5, f5
/* 8050E50C  FC A7 01 72 */	fmul f5, f7, f5
/* 8050E510  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E514  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E518  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050E51C  FC 45 01 72 */	fmul f2, f5, f5
/* 8050E520  FC A7 01 72 */	fmul f5, f7, f5
/* 8050E524  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E528  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E52C  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050E530  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E534  FC 40 10 18 */	frsp f2, f2
/* 8050E538  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8050E53C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8050E540  EC 40 10 28 */	fsubs f2, f0, f2
/* 8050E544  4B EA CC 6D */	bl add_calc
/* 8050E548  3C 60 80 65 */	lis r3, lit_600@ha /* 0x80648F34@ha */
/* 8050E54C  3C 80 80 65 */	lis r4, lit_601@ha /* 0x80648F3C@ha */
/* 8050E550  38 A3 8F 34 */	addi r5, r3, lit_600@l /* 0x80648F34@l */
/* 8050E554  C8 E4 8F 3C */	lfd f7, lit_601@l(r4)  /* 0x80648F3C@l */
/* 8050E558  C9 05 00 00 */	lfd f8, 0(r5)
/* 8050E55C  3C 60 80 65 */	lis r3, lit_602@ha /* 0x80648F44@ha */
/* 8050E560  38 C3 8F 44 */	addi r6, r3, lit_602@l /* 0x80648F44@l */
/* 8050E564  3C 80 80 65 */	lis r4, lit_599@ha /* 0x80648F2C@ha */
/* 8050E568  FC 20 40 34 */	frsqrte f1, f8
/* 8050E56C  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648F04@ha */
/* 8050E570  38 A3 8F 04 */	addi r5, r3, lit_447@l /* 0x80648F04@l */
/* 8050E574  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8050E578  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E57C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050E580  FC 41 00 72 */	fmul f2, f1, f1
/* 8050E584  C0 83 8E FC */	lfs f4, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E588  C0 64 8F 2C */	lfs f3, lit_599@l(r4)  /* 0x80648F2C@l */
/* 8050E58C  38 7F 00 30 */	addi r3, r31, 0x30
/* 8050E590  FC A7 00 72 */	fmul f5, f7, f1
/* 8050E594  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8050E598  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E59C  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E5A0  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050E5A4  FC 45 01 72 */	fmul f2, f5, f5
/* 8050E5A8  FC A7 01 72 */	fmul f5, f7, f5
/* 8050E5AC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E5B0  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E5B4  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050E5B8  FC 45 01 72 */	fmul f2, f5, f5
/* 8050E5BC  FC A7 01 72 */	fmul f5, f7, f5
/* 8050E5C0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E5C4  FC 46 10 28 */	fsub f2, f6, f2
/* 8050E5C8  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050E5CC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050E5D0  FC 40 10 18 */	frsp f2, f2
/* 8050E5D4  D0 41 00 08 */	stfs f2, 8(r1)
/* 8050E5D8  C0 41 00 08 */	lfs f2, 8(r1)
/* 8050E5DC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8050E5E0  4B EA CB D1 */	bl add_calc
/* 8050E5E4  48 00 00 84 */	b lbl_8050E668
lbl_8050E5E8:
/* 8050E5E8  38 61 00 48 */	addi r3, r1, 0x48
/* 8050E5EC  4B EC FA 69 */	bl mPlib_Check_tree_shaken_big
/* 8050E5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8050E5F4  41 82 00 20 */	beq lbl_8050E614
/* 8050E5F8  38 00 00 00 */	li r0, 0
/* 8050E5FC  7F E3 FB 78 */	mr r3, r31
/* 8050E600  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 8050E604  7F C4 F3 78 */	mr r4, r30
/* 8050E608  38 A0 00 03 */	li r5, 3
/* 8050E60C  48 00 05 15 */	bl aFSN_setupAction
/* 8050E610  48 00 00 58 */	b lbl_8050E668
lbl_8050E614:
/* 8050E614  38 61 00 48 */	addi r3, r1, 0x48
/* 8050E618  4B EC F9 D5 */	bl mPlib_Check_tree_shaken_little
/* 8050E61C  2C 03 00 00 */	cmpwi r3, 0
/* 8050E620  41 82 00 3C */	beq lbl_8050E65C
/* 8050E624  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 8050E628  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8050E62C  40 82 00 10 */	bne lbl_8050E63C
/* 8050E630  38 00 01 F4 */	li r0, 0x1f4
/* 8050E634  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 8050E638  48 00 00 14 */	b lbl_8050E64C
lbl_8050E63C:
/* 8050E63C  38 60 FE 0C */	li r3, -500
/* 8050E640  38 00 00 00 */	li r0, 0
/* 8050E644  B0 7F 00 E0 */	sth r3, 0xe0(r31)
/* 8050E648  B0 1F 00 E0 */	sth r0, 0xe0(r31)
lbl_8050E64C:
/* 8050E64C  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 8050E650  38 03 00 01 */	addi r0, r3, 1
/* 8050E654  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 8050E658  48 00 00 10 */	b lbl_8050E668
lbl_8050E65C:
/* 8050E65C  38 00 00 00 */	li r0, 0
/* 8050E660  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 8050E664  90 1F 01 8C */	stw r0, 0x18c(r31)
lbl_8050E668:
/* 8050E668  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8050E66C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8050E670  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8050E674  7C 08 03 A6 */	mtlr r0
/* 8050E678  38 21 00 70 */	addi r1, r1, 0x70
/* 8050E67C  4E 80 00 20 */	blr 
