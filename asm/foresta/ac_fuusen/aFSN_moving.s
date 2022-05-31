lbl_8050DB5C:
/* 8050DB5C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8050DB60  7C 08 02 A6 */	mflr r0
/* 8050DB64  90 01 00 94 */	stw r0, 0x94(r1)
/* 8050DB68  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8050DB6C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8050DB70  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8050DB74  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8050DB78  39 61 00 70 */	addi r11, r1, 0x70
/* 8050DB7C  4B B8 D3 51 */	bl func_8009AECC
/* 8050DB80  7C 7E 1B 78 */	mr r30, r3
/* 8050DB84  7C 9C 23 78 */	mr r28, r4
/* 8050DB88  7F 9F E3 78 */	mr r31, r28
/* 8050DB8C  38 7E 00 28 */	addi r3, r30, 0x28
/* 8050DB90  4B E8 32 2D */	bl mCoBG_GetBalloonGroundY
/* 8050DB94  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8050DB98  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8050DB9C  EF E0 08 2A */	fadds f31, f0, f1
/* 8050DBA0  2C 03 00 00 */	cmpwi r3, 0
/* 8050DBA4  40 81 00 10 */	ble lbl_8050DBB4
/* 8050DBA8  38 03 FF FF */	addi r0, r3, -1
/* 8050DBAC  90 1E 01 84 */	stw r0, 0x184(r30)
/* 8050DBB0  48 00 00 DC */	b lbl_8050DC8C
lbl_8050DBB4:
/* 8050DBB4  3C 60 80 65 */	lis r3, lit_592@ha /* 0x80648F10@ha */
/* 8050DBB8  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8050DBBC  C0 23 8F 10 */	lfs f1, lit_592@l(r3)  /* 0x80648F10@l */
/* 8050DBC0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8050DBC4  4C 40 13 82 */	cror 2, 0, 2
/* 8050DBC8  41 82 00 3C */	beq lbl_8050DC04
/* 8050DBCC  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80648F14@ha */
/* 8050DBD0  C0 03 8F 14 */	lfs f0, lit_593@l(r3)  /* 0x80648F14@l */
/* 8050DBD4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8050DBD8  4C 41 13 82 */	cror 2, 1, 2
/* 8050DBDC  41 82 00 28 */	beq lbl_8050DC04
/* 8050DBE0  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8050DBE4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8050DBE8  4C 40 13 82 */	cror 2, 0, 2
/* 8050DBEC  41 82 00 18 */	beq lbl_8050DC04
/* 8050DBF0  3C 60 80 65 */	lis r3, lit_594@ha /* 0x80648F18@ha */
/* 8050DBF4  C0 03 8F 18 */	lfs f0, lit_594@l(r3)  /* 0x80648F18@l */
/* 8050DBF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8050DBFC  4C 41 13 82 */	cror 2, 1, 2
/* 8050DC00  40 82 00 20 */	bne lbl_8050DC20
lbl_8050DC04:
/* 8050DC04  38 00 06 12 */	li r0, 0x612
/* 8050DC08  7F C3 F3 78 */	mr r3, r30
/* 8050DC0C  90 1E 01 84 */	stw r0, 0x184(r30)
/* 8050DC10  7F 84 E3 78 */	mr r4, r28
/* 8050DC14  38 A0 00 03 */	li r5, 3
/* 8050DC18  48 00 0F 09 */	bl aFSN_setupAction
/* 8050DC1C  48 00 05 C8 */	b lbl_8050E1E4
lbl_8050DC20:
/* 8050DC20  3C 60 80 65 */	lis r3, lit_595@ha /* 0x80648F1C@ha */
/* 8050DC24  C0 03 8F 1C */	lfs f0, lit_595@l(r3)  /* 0x80648F1C@l */
/* 8050DC28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8050DC2C  4C 40 13 82 */	cror 2, 0, 2
/* 8050DC30  40 82 00 5C */	bne lbl_8050DC8C
/* 8050DC34  3C 60 80 65 */	lis r3, lit_596@ha /* 0x80648F20@ha */
/* 8050DC38  C0 03 8F 20 */	lfs f0, lit_596@l(r3)  /* 0x80648F20@l */
/* 8050DC3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8050DC40  4C 41 13 82 */	cror 2, 1, 2
/* 8050DC44  40 82 00 48 */	bne lbl_8050DC8C
/* 8050DC48  3C 60 80 65 */	lis r3, lit_597@ha /* 0x80648F24@ha */
/* 8050DC4C  C0 03 8F 24 */	lfs f0, lit_597@l(r3)  /* 0x80648F24@l */
/* 8050DC50  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8050DC54  4C 40 13 82 */	cror 2, 0, 2
/* 8050DC58  40 82 00 34 */	bne lbl_8050DC8C
/* 8050DC5C  3C 60 80 65 */	lis r3, lit_598@ha /* 0x80648F28@ha */
/* 8050DC60  C0 03 8F 28 */	lfs f0, lit_598@l(r3)  /* 0x80648F28@l */
/* 8050DC64  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8050DC68  4C 41 13 82 */	cror 2, 1, 2
/* 8050DC6C  40 82 00 20 */	bne lbl_8050DC8C
/* 8050DC70  38 00 06 12 */	li r0, 0x612
/* 8050DC74  7F C3 F3 78 */	mr r3, r30
/* 8050DC78  90 1E 01 84 */	stw r0, 0x184(r30)
/* 8050DC7C  7F 84 E3 78 */	mr r4, r28
/* 8050DC80  38 A0 00 03 */	li r5, 3
/* 8050DC84  48 00 0E 9D */	bl aFSN_setupAction
/* 8050DC88  48 00 05 5C */	b lbl_8050E1E4
lbl_8050DC8C:
/* 8050DC8C  4B EA C2 15 */	bl mEnv_GetWindPowerF
/* 8050DC90  3C 60 80 65 */	lis r3, lit_600@ha /* 0x80648F34@ha */
/* 8050DC94  D0 3E 01 9C */	stfs f1, 0x19c(r30)
/* 8050DC98  38 A3 8F 34 */	addi r5, r3, lit_600@l /* 0x80648F34@l */
/* 8050DC9C  3C 80 80 65 */	lis r4, lit_601@ha /* 0x80648F3C@ha */
/* 8050DCA0  C8 85 00 00 */	lfd f4, 0(r5)
/* 8050DCA4  3C 60 80 65 */	lis r3, lit_602@ha /* 0x80648F44@ha */
/* 8050DCA8  C8 64 8F 3C */	lfd f3, lit_601@l(r4)  /* 0x80648F3C@l */
/* 8050DCAC  3C 80 80 65 */	lis r4, lit_599@ha /* 0x80648F2C@ha */
/* 8050DCB0  FC 20 20 34 */	frsqrte f1, f4
/* 8050DCB4  3C A0 80 65 */	lis r5, lit_447@ha /* 0x80648F04@ha */
/* 8050DCB8  C8 43 8F 44 */	lfd f2, lit_602@l(r3)  /* 0x80648F44@l */
/* 8050DCBC  C0 C4 8F 2C */	lfs f6, lit_599@l(r4)  /* 0x80648F2C@l */
/* 8050DCC0  FC 01 00 72 */	fmul f0, f1, f1
/* 8050DCC4  C0 BE 01 9C */	lfs f5, 0x19c(r30)
/* 8050DCC8  C0 E5 8F 04 */	lfs f7, lit_447@l(r5)  /* 0x80648F04@l */
/* 8050DCCC  EC A6 01 72 */	fmuls f5, f6, f5
/* 8050DCD0  FC 23 00 72 */	fmul f1, f3, f1
/* 8050DCD4  FC 04 00 32 */	fmul f0, f4, f0
/* 8050DCD8  EC A7 28 2A */	fadds f5, f7, f5
/* 8050DCDC  FC 02 00 28 */	fsub f0, f2, f0
/* 8050DCE0  D0 BE 00 74 */	stfs f5, 0x74(r30)
/* 8050DCE4  FC 21 00 32 */	fmul f1, f1, f0
/* 8050DCE8  A8 7E 01 98 */	lha r3, 0x198(r30)
/* 8050DCEC  38 03 00 FA */	addi r0, r3, 0xfa
/* 8050DCF0  B0 1E 01 98 */	sth r0, 0x198(r30)
/* 8050DCF4  FC 01 00 72 */	fmul f0, f1, f1
/* 8050DCF8  A8 7E 01 98 */	lha r3, 0x198(r30)
/* 8050DCFC  FC 23 00 72 */	fmul f1, f3, f1
/* 8050DD00  FC 04 00 32 */	fmul f0, f4, f0
/* 8050DD04  FC 02 00 28 */	fsub f0, f2, f0
/* 8050DD08  FC 21 00 32 */	fmul f1, f1, f0
/* 8050DD0C  FC 01 00 72 */	fmul f0, f1, f1
/* 8050DD10  FC 23 00 72 */	fmul f1, f3, f1
/* 8050DD14  FC 04 00 32 */	fmul f0, f4, f0
/* 8050DD18  FC 02 00 28 */	fsub f0, f2, f0
/* 8050DD1C  FC 01 00 32 */	fmul f0, f1, f0
/* 8050DD20  FC 04 00 32 */	fmul f0, f4, f0
/* 8050DD24  FC 00 00 18 */	frsp f0, f0
/* 8050DD28  D0 01 00 08 */	stfs f0, 8(r1)
/* 8050DD2C  C3 C1 00 08 */	lfs f30, 8(r1)
/* 8050DD30  4B EA CD C1 */	bl sin_s
/* 8050DD34  3C 80 80 65 */	lis r4, lit_446@ha /* 0x80648F00@ha */
/* 8050DD38  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648F04@ha */
/* 8050DD3C  38 A4 8F 00 */	addi r5, r4, lit_446@l /* 0x80648F00@l */
/* 8050DD40  C0 03 8F 04 */	lfs f0, lit_447@l(r3)  /* 0x80648F04@l */
/* 8050DD44  C0 45 00 00 */	lfs f2, 0(r5)
/* 8050DD48  3C 80 80 65 */	lis r4, lit_599@ha /* 0x80648F2C@ha */
/* 8050DD4C  38 A4 8F 2C */	addi r5, r4, lit_599@l /* 0x80648F2C@l */
/* 8050DD50  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050DD54  EC 22 00 72 */	fmuls f1, f2, f1
/* 8050DD58  38 83 8E FC */	addi r4, r3, data_80648EFC@l /* 0x80648EFC@l */
/* 8050DD5C  EC 40 F0 28 */	fsubs f2, f0, f30
/* 8050DD60  C0 65 00 00 */	lfs f3, 0(r5)
/* 8050DD64  C0 84 00 00 */	lfs f4, 0(r4)
/* 8050DD68  38 7E 00 2C */	addi r3, r30, 0x2c
/* 8050DD6C  EC 3F 08 2A */	fadds f1, f31, f1
/* 8050DD70  4B EA D4 41 */	bl add_calc
/* 8050DD74  7F E3 FB 78 */	mr r3, r31
/* 8050DD78  38 9E 00 28 */	addi r4, r30, 0x28
/* 8050DD7C  38 A1 00 48 */	addi r5, r1, 0x48
/* 8050DD80  4B EA D9 A5 */	bl Game_play_Projection_Trans
/* 8050DD84  3C 60 80 65 */	lis r3, lit_603@ha /* 0x80648F4C@ha */
/* 8050DD88  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8050DD8C  C0 23 8F 4C */	lfs f1, lit_603@l(r3)  /* 0x80648F4C@l */
/* 8050DD90  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8050DD94  41 81 04 50 */	bgt lbl_8050E1E4
/* 8050DD98  3C 60 80 65 */	lis r3, lit_604@ha /* 0x80648F50@ha */
/* 8050DD9C  C0 03 8F 50 */	lfs f0, lit_604@l(r3)  /* 0x80648F50@l */
/* 8050DDA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8050DDA4  41 81 04 40 */	bgt lbl_8050E1E4
/* 8050DDA8  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8050DDAC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8050DDB0  41 81 04 34 */	bgt lbl_8050E1E4
/* 8050DDB4  3C 60 80 65 */	lis r3, lit_605@ha /* 0x80648F54@ha */
/* 8050DDB8  C0 03 8F 54 */	lfs f0, lit_605@l(r3)  /* 0x80648F54@l */
/* 8050DDBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8050DDC0  40 81 00 08 */	ble lbl_8050DDC8
/* 8050DDC4  48 00 04 20 */	b lbl_8050E1E4
lbl_8050DDC8:
/* 8050DDC8  3C 80 80 65 */	lis r4, lit_606@ha /* 0x80648F58@ha */
/* 8050DDCC  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050DDD0  38 A4 8F 58 */	addi r5, r4, lit_606@l /* 0x80648F58@l */
/* 8050DDD4  C0 43 8E FC */	lfs f2, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050DDD8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050DDDC  7F C4 F3 78 */	mr r4, r30
/* 8050DDE0  38 60 00 00 */	li r3, 0
/* 8050DDE4  38 A0 00 00 */	li r5, 0
/* 8050DDE8  38 C0 00 00 */	li r6, 0
/* 8050DDEC  38 E0 00 00 */	li r7, 0
/* 8050DDF0  4B E7 BF B1 */	bl mCoBG_BgCheckControll
/* 8050DDF4  A0 1E 00 98 */	lhz r0, 0x98(r30)
/* 8050DDF8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8050DDFC  40 82 00 10 */	bne lbl_8050DE0C
/* 8050DE00  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 8050DE04  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8050DE08  41 82 00 38 */	beq lbl_8050DE40
lbl_8050DE0C:
/* 8050DE0C  3C 80 80 65 */	lis r4, lit_607@ha /* 0x80648F5C@ha */
/* 8050DE10  3C 60 80 65 */	lis r3, lit_608@ha /* 0x80648F60@ha */
/* 8050DE14  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 8050DE18  C0 24 8F 5C */	lfs f1, lit_607@l(r4)  /* 0x80648F5C@l */
/* 8050DE1C  C0 03 8F 60 */	lfs f0, lit_608@l(r3)  /* 0x80648F60@l */
/* 8050DE20  EC 22 08 2A */	fadds f1, f2, f1
/* 8050DE24  D0 3E 01 A0 */	stfs f1, 0x1a0(r30)
/* 8050DE28  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 8050DE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050DE30  4C 41 13 82 */	cror 2, 1, 2
/* 8050DE34  40 82 00 30 */	bne lbl_8050DE64
/* 8050DE38  D0 1E 01 A0 */	stfs f0, 0x1a0(r30)
/* 8050DE3C  48 00 00 28 */	b lbl_8050DE64
lbl_8050DE40:
/* 8050DE40  3C 60 80 65 */	lis r3, lit_449@ha /* 0x80648F0C@ha */
/* 8050DE44  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 8050DE48  C0 03 8F 0C */	lfs f0, lit_449@l(r3)  /* 0x80648F0C@l */
/* 8050DE4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050DE50  40 81 00 14 */	ble lbl_8050DE64
/* 8050DE54  3C 60 80 65 */	lis r3, lit_609@ha /* 0x80648F64@ha */
/* 8050DE58  C0 03 8F 64 */	lfs f0, lit_609@l(r3)  /* 0x80648F64@l */
/* 8050DE5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8050DE60  D0 1E 01 A0 */	stfs f0, 0x1a0(r30)
lbl_8050DE64:
/* 8050DE64  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8050DE68  38 61 00 3C */	addi r3, r1, 0x3c
/* 8050DE6C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8050DE70  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8050DE74  90 01 00 40 */	stw r0, 0x40(r1)
/* 8050DE78  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8050DE7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050DE80  4B E9 95 B1 */	bl mFI_GetUnitFG
/* 8050DE84  7C 7F 1B 79 */	or. r31, r3, r3
/* 8050DE88  41 82 02 10 */	beq lbl_8050E098
/* 8050DE8C  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8050DE90  28 03 08 04 */	cmplwi r3, 0x804
/* 8050DE94  41 82 00 74 */	beq lbl_8050DF08
/* 8050DE98  38 03 F7 F7 */	addi r0, r3, -2057
/* 8050DE9C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050DEA0  28 00 00 02 */	cmplwi r0, 2
/* 8050DEA4  40 81 00 64 */	ble lbl_8050DF08
/* 8050DEA8  38 03 F7 EF */	addi r0, r3, -2065
/* 8050DEAC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050DEB0  28 00 00 02 */	cmplwi r0, 2
/* 8050DEB4  40 81 00 54 */	ble lbl_8050DF08
/* 8050DEB8  38 03 F7 E7 */	addi r0, r3, -2073
/* 8050DEBC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050DEC0  28 00 00 02 */	cmplwi r0, 2
/* 8050DEC4  40 81 00 44 */	ble lbl_8050DF08
/* 8050DEC8  38 03 F7 DF */	addi r0, r3, -2081
/* 8050DECC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050DED0  28 00 00 02 */	cmplwi r0, 2
/* 8050DED4  40 81 00 34 */	ble lbl_8050DF08
/* 8050DED8  38 03 F7 D7 */	addi r0, r3, -2089
/* 8050DEDC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050DEE0  28 00 00 02 */	cmplwi r0, 2
/* 8050DEE4  40 81 00 24 */	ble lbl_8050DF08
/* 8050DEE8  38 03 F7 A8 */	addi r0, r3, -2136
/* 8050DEEC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050DEF0  28 00 00 02 */	cmplwi r0, 2
/* 8050DEF4  40 81 00 14 */	ble lbl_8050DF08
/* 8050DEF8  28 03 08 61 */	cmplwi r3, 0x861
/* 8050DEFC  41 82 00 0C */	beq lbl_8050DF08
/* 8050DF00  28 03 08 68 */	cmplwi r3, 0x868
/* 8050DF04  40 82 01 94 */	bne lbl_8050E098
lbl_8050DF08:
/* 8050DF08  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8050DF0C  38 61 00 48 */	addi r3, r1, 0x48
/* 8050DF10  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8050DF14  38 81 00 30 */	addi r4, r1, 0x30
/* 8050DF18  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8050DF1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050DF20  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8050DF24  90 01 00 38 */	stw r0, 0x38(r1)
/* 8050DF28  4B E9 76 15 */	bl mFI_Wpos2UtCenterWpos
/* 8050DF2C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8050DF30  28 00 08 61 */	cmplwi r0, 0x861
/* 8050DF34  40 82 00 54 */	bne lbl_8050DF88
/* 8050DF38  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8050DF3C  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050DF40  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8050DF44  C0 23 8E FC */	lfs f1, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050DF48  38 61 00 24 */	addi r3, r1, 0x24
/* 8050DF4C  90 81 00 24 */	stw r4, 0x24(r1)
/* 8050DF50  90 01 00 28 */	stw r0, 0x28(r1)
/* 8050DF54  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8050DF58  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8050DF5C  4B E8 1A 3D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8050DF60  3C 80 80 65 */	lis r4, lit_610@ha /* 0x80648F68@ha */
/* 8050DF64  3C 60 80 65 */	lis r3, lit_611@ha /* 0x80648F6C@ha */
/* 8050DF68  C0 64 8F 68 */	lfs f3, lit_610@l(r4)  /* 0x80648F68@l */
/* 8050DF6C  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8050DF70  C0 03 8F 6C */	lfs f0, lit_611@l(r3)  /* 0x80648F6C@l */
/* 8050DF74  EC 23 08 2A */	fadds f1, f3, f1
/* 8050DF78  EC 02 00 2A */	fadds f0, f2, f0
/* 8050DF7C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8050DF80  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8050DF84  48 00 00 64 */	b lbl_8050DFE8
lbl_8050DF88:
/* 8050DF88  3C 80 80 65 */	lis r4, lit_612@ha /* 0x80648F70@ha */
/* 8050DF8C  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050DF90  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8050DF94  C0 04 8F 70 */	lfs f0, lit_612@l(r4)  /* 0x80648F70@l */
/* 8050DF98  C0 23 8E FC */	lfs f1, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050DF9C  38 61 00 18 */	addi r3, r1, 0x18
/* 8050DFA0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8050DFA4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8050DFA8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8050DFAC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8050DFB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8050DFB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8050DFB8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8050DFBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050DFC0  4B E8 19 D9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8050DFC4  3C 80 80 65 */	lis r4, lit_613@ha /* 0x80648F74@ha */
/* 8050DFC8  3C 60 80 65 */	lis r3, lit_614@ha /* 0x80648F78@ha */
/* 8050DFCC  C0 64 8F 74 */	lfs f3, lit_613@l(r4)  /* 0x80648F74@l */
/* 8050DFD0  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8050DFD4  C0 03 8F 78 */	lfs f0, lit_614@l(r3)  /* 0x80648F78@l */
/* 8050DFD8  EC 23 08 2A */	fadds f1, f3, f1
/* 8050DFDC  EC 02 00 2A */	fadds f0, f2, f0
/* 8050DFE0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8050DFE4  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_8050DFE8:
/* 8050DFE8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8050DFEC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8050DFF0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8050DFF4  28 00 08 61 */	cmplwi r0, 0x861
/* 8050DFF8  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 8050DFFC  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8050E000  EC 81 00 28 */	fsubs f4, f1, f0
/* 8050E004  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8050E008  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8050E00C  EC 63 10 28 */	fsubs f3, f3, f2
/* 8050E010  EC 01 00 28 */	fsubs f0, f1, f0
/* 8050E014  40 82 00 48 */	bne lbl_8050E05C
/* 8050E018  EC 44 01 32 */	fmuls f2, f4, f4
/* 8050E01C  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80648F7C@ha */
/* 8050E020  EC 20 00 32 */	fmuls f1, f0, f0
/* 8050E024  C0 03 8F 7C */	lfs f0, lit_615@l(r3)  /* 0x80648F7C@l */
/* 8050E028  EC 22 08 2A */	fadds f1, f2, f1
/* 8050E02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050E030  40 80 01 B4 */	bge lbl_8050E1E4
/* 8050E034  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80648F80@ha */
/* 8050E038  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8050E03C  C0 03 8F 80 */	lfs f0, lit_616@l(r3)  /* 0x80648F80@l */
/* 8050E040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050E044  40 80 01 A0 */	bge lbl_8050E1E4
/* 8050E048  7F C3 F3 78 */	mr r3, r30
/* 8050E04C  7F 84 E3 78 */	mr r4, r28
/* 8050E050  38 A0 00 02 */	li r5, 2
/* 8050E054  48 00 0A CD */	bl aFSN_setupAction
/* 8050E058  48 00 01 8C */	b lbl_8050E1E4
lbl_8050E05C:
/* 8050E05C  EC 44 01 32 */	fmuls f2, f4, f4
/* 8050E060  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80648F80@ha */
/* 8050E064  EC 00 00 32 */	fmuls f0, f0, f0
/* 8050E068  C0 23 8F 80 */	lfs f1, lit_616@l(r3)  /* 0x80648F80@l */
/* 8050E06C  EC 02 00 2A */	fadds f0, f2, f0
/* 8050E070  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050E074  40 80 01 70 */	bge lbl_8050E1E4
/* 8050E078  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8050E07C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050E080  40 80 01 64 */	bge lbl_8050E1E4
/* 8050E084  7F C3 F3 78 */	mr r3, r30
/* 8050E088  7F 84 E3 78 */	mr r4, r28
/* 8050E08C  38 A0 00 02 */	li r5, 2
/* 8050E090  48 00 0A 91 */	bl aFSN_setupAction
/* 8050E094  48 00 01 50 */	b lbl_8050E1E4
lbl_8050E098:
/* 8050E098  88 1E 01 A4 */	lbz r0, 0x1a4(r30)
/* 8050E09C  28 00 00 00 */	cmplwi r0, 0
/* 8050E0A0  40 82 01 30 */	bne lbl_8050E1D0
/* 8050E0A4  3C 60 80 65 */	lis r3, lit_617@ha /* 0x80648F84@ha */
/* 8050E0A8  3C 80 80 6A */	lis r4, senkou_check_data@ha /* 0x8069F0C0@ha */
/* 8050E0AC  C3 E3 8F 84 */	lfs f31, lit_617@l(r3)  /* 0x80648F84@l */
/* 8050E0B0  3B 80 00 00 */	li r28, 0
/* 8050E0B4  3B E4 F0 C0 */	addi r31, r4, senkou_check_data@l /* 0x8069F0C0@l */
/* 8050E0B8  3B 60 00 00 */	li r27, 0
lbl_8050E0BC:
/* 8050E0BC  38 61 00 48 */	addi r3, r1, 0x48
/* 8050E0C0  38 9E 00 28 */	addi r4, r30, 0x28
/* 8050E0C4  4B EA CD F9 */	bl xyz_t_move
/* 8050E0C8  7C 1F D8 2E */	lwzx r0, r31, r27
/* 8050E0CC  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 8050E0D0  7C 00 07 34 */	extsh r0, r0
/* 8050E0D4  7C 03 02 14 */	add r0, r3, r0
/* 8050E0D8  7C 1D 07 34 */	extsh r29, r0
/* 8050E0DC  7F A3 EB 78 */	mr r3, r29
/* 8050E0E0  4B EA CA 11 */	bl sin_s
/* 8050E0E4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8050E0E8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8050E0EC  7F A3 EB 78 */	mr r3, r29
/* 8050E0F0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050E0F4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8050E0F8  4B EA C9 A5 */	bl cos_s
/* 8050E0FC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8050E100  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8050E104  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8050E108  38 61 00 0C */	addi r3, r1, 0xc
/* 8050E10C  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8050E110  EC 00 08 2A */	fadds f0, f0, f1
/* 8050E114  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050E118  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8050E11C  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8050E120  90 81 00 10 */	stw r4, 0x10(r1)
/* 8050E124  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050E128  4B E9 93 09 */	bl mFI_GetUnitFG
/* 8050E12C  28 03 00 00 */	cmplwi r3, 0
/* 8050E130  41 82 00 90 */	beq lbl_8050E1C0
/* 8050E134  A0 63 00 00 */	lhz r3, 0(r3)
/* 8050E138  28 03 08 04 */	cmplwi r3, 0x804
/* 8050E13C  41 82 00 74 */	beq lbl_8050E1B0
/* 8050E140  38 03 F7 F7 */	addi r0, r3, -2057
/* 8050E144  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050E148  28 00 00 02 */	cmplwi r0, 2
/* 8050E14C  40 81 00 64 */	ble lbl_8050E1B0
/* 8050E150  38 03 F7 EF */	addi r0, r3, -2065
/* 8050E154  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050E158  28 00 00 02 */	cmplwi r0, 2
/* 8050E15C  40 81 00 54 */	ble lbl_8050E1B0
/* 8050E160  38 03 F7 E7 */	addi r0, r3, -2073
/* 8050E164  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050E168  28 00 00 02 */	cmplwi r0, 2
/* 8050E16C  40 81 00 44 */	ble lbl_8050E1B0
/* 8050E170  38 03 F7 DF */	addi r0, r3, -2081
/* 8050E174  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050E178  28 00 00 02 */	cmplwi r0, 2
/* 8050E17C  40 81 00 34 */	ble lbl_8050E1B0
/* 8050E180  38 03 F7 D7 */	addi r0, r3, -2089
/* 8050E184  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050E188  28 00 00 02 */	cmplwi r0, 2
/* 8050E18C  40 81 00 24 */	ble lbl_8050E1B0
/* 8050E190  38 03 F7 A8 */	addi r0, r3, -2136
/* 8050E194  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8050E198  28 00 00 02 */	cmplwi r0, 2
/* 8050E19C  40 81 00 14 */	ble lbl_8050E1B0
/* 8050E1A0  28 03 08 61 */	cmplwi r3, 0x861
/* 8050E1A4  41 82 00 0C */	beq lbl_8050E1B0
/* 8050E1A8  28 03 08 68 */	cmplwi r3, 0x868
/* 8050E1AC  40 82 00 14 */	bne lbl_8050E1C0
lbl_8050E1B0:
/* 8050E1B0  B3 BE 00 36 */	sth r29, 0x36(r30)
/* 8050E1B4  38 00 00 01 */	li r0, 1
/* 8050E1B8  98 1E 01 A4 */	stb r0, 0x1a4(r30)
/* 8050E1BC  48 00 00 14 */	b lbl_8050E1D0
lbl_8050E1C0:
/* 8050E1C0  3B 9C 00 01 */	addi r28, r28, 1
/* 8050E1C4  3B 7B 00 04 */	addi r27, r27, 4
/* 8050E1C8  2C 1C 00 03 */	cmpwi r28, 3
/* 8050E1CC  41 80 FE F0 */	blt lbl_8050E0BC
lbl_8050E1D0:
/* 8050E1D0  88 1E 01 A4 */	lbz r0, 0x1a4(r30)
/* 8050E1D4  28 00 00 00 */	cmplwi r0, 0
/* 8050E1D8  40 82 00 0C */	bne lbl_8050E1E4
/* 8050E1DC  4B EA BC A1 */	bl mEnv_GetWindAngleS
/* 8050E1E0  B0 7E 00 36 */	sth r3, 0x36(r30)
lbl_8050E1E4:
/* 8050E1E4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8050E1E8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8050E1EC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8050E1F0  39 61 00 70 */	addi r11, r1, 0x70
/* 8050E1F4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8050E1F8  4B B8 CD 21 */	bl func_8009AF18
/* 8050E1FC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8050E200  7C 08 03 A6 */	mtlr r0
/* 8050E204  38 21 00 90 */	addi r1, r1, 0x90
/* 8050E208  4E 80 00 20 */	blr 
