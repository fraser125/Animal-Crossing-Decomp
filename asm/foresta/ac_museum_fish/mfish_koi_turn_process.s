lbl_8043D91C:
/* 8043D91C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8043D920  7C 08 02 A6 */	mflr r0
/* 8043D924  90 01 00 54 */	stw r0, 0x54(r1)
/* 8043D928  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8043D92C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8043D930  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8043D934  7C 7F 1B 78 */	mr r31, r3
/* 8043D938  A8 63 06 22 */	lha r3, 0x622(r3)
/* 8043D93C  7C 60 07 35 */	extsh. r0, r3
/* 8043D940  7C 03 00 D0 */	neg r0, r3
/* 8043D944  41 80 00 08 */	blt lbl_8043D94C
/* 8043D948  7C 60 1B 78 */	mr r0, r3
lbl_8043D94C:
/* 8043D94C  2C 00 18 E3 */	cmpwi r0, 0x18e3
/* 8043D950  41 81 00 10 */	bgt lbl_8043D960
/* 8043D954  A8 1F 06 40 */	lha r0, 0x640(r31)
/* 8043D958  2C 00 00 00 */	cmpwi r0, 0
/* 8043D95C  40 81 00 C0 */	ble lbl_8043DA1C
lbl_8043D960:
/* 8043D960  3C C0 80 64 */	lis r6, lit_1711@ha /* 0x80644364@ha */
/* 8043D964  3C A0 80 64 */	lis r5, lit_839@ha /* 0x806442D4@ha */
/* 8043D968  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8043D96C  C0 26 43 64 */	lfs f1, lit_1711@l(r6)  /* 0x80644364@l */
/* 8043D970  C0 45 42 D4 */	lfs f2, lit_839@l(r5)  /* 0x806442D4@l */
/* 8043D974  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043D978  C0 64 42 68 */	lfs f3, lit_527@l(r4)  /* 0x80644268@l */
/* 8043D97C  4B F7 D9 19 */	bl add_calc2
/* 8043D980  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8043D984  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043D988  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8043D98C  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 8043D990  C9 25 00 00 */	lfd f9, 0(r5)
/* 8043D994  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 8043D998  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043D99C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043D9A0  FC 60 48 34 */	frsqrte f3, f9
/* 8043D9A4  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043D9A8  C9 06 00 00 */	lfd f8, 0(r6)
/* 8043D9AC  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043D9B0  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043D9B4  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043D9B8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D9BC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043D9C0  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 8043D9C4  FC E8 00 F2 */	fmul f7, f8, f3
/* 8043D9C8  FC A9 00 72 */	fmul f5, f9, f1
/* 8043D9CC  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043D9D0  EC 62 00 32 */	fmuls f3, f2, f0
/* 8043D9D4  FC 06 28 28 */	fsub f0, f6, f5
/* 8043D9D8  FC 47 00 32 */	fmul f2, f7, f0
/* 8043D9DC  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043D9E0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043D9E4  FC 09 00 32 */	fmul f0, f9, f0
/* 8043D9E8  FC 06 00 28 */	fsub f0, f6, f0
/* 8043D9EC  FC 42 00 32 */	fmul f2, f2, f0
/* 8043D9F0  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043D9F4  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043D9F8  FC 09 00 32 */	fmul f0, f9, f0
/* 8043D9FC  FC 06 00 28 */	fsub f0, f6, f0
/* 8043DA00  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DA04  FC 09 00 32 */	fmul f0, f9, f0
/* 8043DA08  FC 00 00 18 */	frsp f0, f0
/* 8043DA0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8043DA10  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8043DA14  EC 44 00 28 */	fsubs f2, f4, f0
/* 8043DA18  4B F7 D8 7D */	bl add_calc2
lbl_8043DA1C:
/* 8043DA1C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043DA20  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8043DA24  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043DA28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043DA2C  40 81 00 08 */	ble lbl_8043DA34
/* 8043DA30  48 00 00 08 */	b lbl_8043DA38
lbl_8043DA34:
/* 8043DA34  FC 20 00 90 */	fmr f1, f0
lbl_8043DA38:
/* 8043DA38  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 8043DA3C  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043DA40  C0 63 42 D4 */	lfs f3, lit_839@l(r3)  /* 0x806442D4@l */
/* 8043DA44  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8043DA48  C0 44 43 20 */	lfs f2, lit_1100@l(r4)  /* 0x80644320@l */
/* 8043DA4C  4B F7 D8 49 */	bl add_calc2
/* 8043DA50  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043DA54  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043DA58  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 8043DA5C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043DA60  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 8043DA64  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043DA68  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8043DA6C  FC 60 30 34 */	frsqrte f3, f6
/* 8043DA70  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043DA74  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043DA78  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043DA7C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043DA80  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043DA84  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043DA88  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043DA8C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DA90  FC 24 08 28 */	fsub f1, f4, f1
/* 8043DA94  FC 63 00 72 */	fmul f3, f3, f1
/* 8043DA98  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043DA9C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043DAA0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DAA4  FC 24 08 28 */	fsub f1, f4, f1
/* 8043DAA8  FC 63 00 72 */	fmul f3, f3, f1
/* 8043DAAC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043DAB0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043DAB4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DAB8  FC 24 08 28 */	fsub f1, f4, f1
/* 8043DABC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043DAC0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DAC4  FC 20 08 18 */	frsp f1, f1
/* 8043DAC8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8043DACC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8043DAD0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043DAD4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043DAD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043DADC  40 81 00 54 */	ble lbl_8043DB30
/* 8043DAE0  FC 20 10 34 */	frsqrte f1, f2
/* 8043DAE4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DAE8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043DAEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DAF0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043DAF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043DAF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DAFC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043DB00  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DB04  FC 04 00 28 */	fsub f0, f4, f0
/* 8043DB08  FC 21 00 32 */	fmul f1, f1, f0
/* 8043DB0C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DB10  FC 25 00 72 */	fmul f1, f5, f1
/* 8043DB14  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DB18  FC 04 00 28 */	fsub f0, f4, f0
/* 8043DB1C  FC 01 00 32 */	fmul f0, f1, f0
/* 8043DB20  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DB24  FC 00 00 18 */	frsp f0, f0
/* 8043DB28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8043DB2C  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_8043DB30:
/* 8043DB30  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043DB34  38 7F 06 32 */	addi r3, r31, 0x632
/* 8043DB38  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043DB3C  38 80 00 00 */	li r4, 0
/* 8043DB40  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043DB44  38 A0 01 C7 */	li r5, 0x1c7
/* 8043DB48  38 C0 00 2D */	li r6, 0x2d
/* 8043DB4C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043DB50  4B F7 D7 C1 */	bl add_calc_short_angle2
/* 8043DB54  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043DB58  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043DB5C  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043DB60  C8 64 42 4C */	lfd f3, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043DB64  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043DB68  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043DB6C  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043DB70  FC 20 20 34 */	frsqrte f1, f4
/* 8043DB74  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 8043DB78  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DB7C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043DB80  FC 04 00 32 */	fmul f0, f4, f0
/* 8043DB84  FC 02 00 28 */	fsub f0, f2, f0
/* 8043DB88  FC 21 00 32 */	fmul f1, f1, f0
/* 8043DB8C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DB90  FC 23 00 72 */	fmul f1, f3, f1
/* 8043DB94  FC 04 00 32 */	fmul f0, f4, f0
/* 8043DB98  FC 02 00 28 */	fsub f0, f2, f0
/* 8043DB9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043DBA0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DBA4  FC 23 00 72 */	fmul f1, f3, f1
/* 8043DBA8  FC 04 00 32 */	fmul f0, f4, f0
/* 8043DBAC  FC 02 00 28 */	fsub f0, f2, f0
/* 8043DBB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8043DBB4  FC 04 00 32 */	fmul f0, f4, f0
/* 8043DBB8  FC 00 00 18 */	frsp f0, f0
/* 8043DBBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043DBC0  C3 E1 00 10 */	lfs f31, 0x10(r1)
/* 8043DBC4  4B F7 CF 2D */	bl sin_s
/* 8043DBC8  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 8043DBCC  3C A0 43 30 */	lis r5, 0x4330
/* 8043DBD0  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 8043DBD4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8043DBD8  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8043DBDC  C8 46 42 8C */	lfd f2, lit_570@l(r6)  /* 0x8064428C@l */
/* 8043DBE0  90 81 00 24 */	stw r4, 0x24(r1)
/* 8043DBE4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043DBE8  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043DBEC  A8 1F 06 1A */	lha r0, 0x61a(r31)
/* 8043DBF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8043DBF4  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043DBF8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043DBFC  38 C0 00 2D */	li r6, 0x2d
/* 8043DC00  EC 40 10 28 */	fsubs f2, f0, f2
/* 8043DC04  7C 05 07 34 */	extsh r5, r0
/* 8043DC08  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043DC0C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043DC10  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043DC14  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043DC18  FC 00 10 1E */	fctiwz f0, f2
/* 8043DC1C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8043DC20  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8043DC24  7C 00 22 14 */	add r0, r0, r4
/* 8043DC28  7C 04 07 34 */	extsh r4, r0
/* 8043DC2C  4B F7 D6 E5 */	bl add_calc_short_angle2
/* 8043DC30  3C 80 80 64 */	lis r4, lit_1066@ha /* 0x806442FC@ha */
/* 8043DC34  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043DC38  38 C4 42 FC */	addi r6, r4, lit_1066@l /* 0x806442FC@l */
/* 8043DC3C  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043DC40  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043DC44  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043DC48  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043DC4C  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043DC50  FC 60 30 34 */	frsqrte f3, f6
/* 8043DC54  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043DC58  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043DC5C  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043DC60  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043DC64  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043DC68  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043DC6C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043DC70  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043DC74  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DC78  FC 24 08 28 */	fsub f1, f4, f1
/* 8043DC7C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043DC80  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043DC84  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043DC88  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DC8C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043DC90  FC 63 00 72 */	fmul f3, f3, f1
/* 8043DC94  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043DC98  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043DC9C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DCA0  FC 24 08 28 */	fsub f1, f4, f1
/* 8043DCA4  FC 23 00 72 */	fmul f1, f3, f1
/* 8043DCA8  FC 26 00 72 */	fmul f1, f6, f1
/* 8043DCAC  FC 20 08 18 */	frsp f1, f1
/* 8043DCB0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043DCB4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043DCB8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043DCBC  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043DCC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043DCC4  40 81 00 54 */	ble lbl_8043DD18
/* 8043DCC8  FC 20 10 34 */	frsqrte f1, f2
/* 8043DCCC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DCD0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043DCD4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DCD8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043DCDC  FC 21 00 32 */	fmul f1, f1, f0
/* 8043DCE0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DCE4  FC 25 00 72 */	fmul f1, f5, f1
/* 8043DCE8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DCEC  FC 04 00 28 */	fsub f0, f4, f0
/* 8043DCF0  FC 21 00 32 */	fmul f1, f1, f0
/* 8043DCF4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043DCF8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043DCFC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DD00  FC 04 00 28 */	fsub f0, f4, f0
/* 8043DD04  FC 01 00 32 */	fmul f0, f1, f0
/* 8043DD08  FC 02 00 32 */	fmul f0, f2, f0
/* 8043DD0C  FC 00 00 18 */	frsp f0, f0
/* 8043DD10  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043DD14  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043DD18:
/* 8043DD18  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043DD1C  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043DD20  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043DD24  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043DD28  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043DD2C  38 A0 00 E3 */	li r5, 0xe3
/* 8043DD30  38 C0 00 2D */	li r6, 0x2d
/* 8043DD34  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043DD38  4B F7 D5 D9 */	bl add_calc_short_angle2
/* 8043DD3C  A8 7F 06 22 */	lha r3, 0x622(r31)
/* 8043DD40  7C 60 07 35 */	extsh. r0, r3
/* 8043DD44  7C 03 00 D0 */	neg r0, r3
/* 8043DD48  41 80 00 08 */	blt lbl_8043DD50
/* 8043DD4C  7C 60 1B 78 */	mr r0, r3
lbl_8043DD50:
/* 8043DD50  2C 00 01 6C */	cmpwi r0, 0x16c
/* 8043DD54  40 80 00 A8 */	bge lbl_8043DDFC
/* 8043DD58  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043DD5C  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043DD60  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 8043DD64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043DD68  40 80 00 94 */	bge lbl_8043DDFC
/* 8043DD6C  A8 1F 06 3E */	lha r0, 0x63e(r31)
/* 8043DD70  2C 00 00 00 */	cmpwi r0, 0
/* 8043DD74  40 81 00 60 */	ble lbl_8043DDD4
/* 8043DD78  A8 7F 06 1C */	lha r3, 0x61c(r31)
/* 8043DD7C  7C 60 07 35 */	extsh. r0, r3
/* 8043DD80  7C 03 00 D0 */	neg r0, r3
/* 8043DD84  41 80 00 08 */	blt lbl_8043DD8C
/* 8043DD88  7C 60 1B 78 */	mr r0, r3
lbl_8043DD8C:
/* 8043DD8C  2C 00 01 6C */	cmpwi r0, 0x16c
/* 8043DD90  40 80 00 44 */	bge lbl_8043DDD4
/* 8043DD94  7F E3 FB 78 */	mr r3, r31
/* 8043DD98  4B FF 3E 55 */	bl mfish_WallCheck
/* 8043DD9C  2C 03 00 00 */	cmpwi r3, 0
/* 8043DDA0  41 82 00 1C */	beq lbl_8043DDBC
/* 8043DDA4  7F E3 FB 78 */	mr r3, r31
/* 8043DDA8  38 80 00 01 */	li r4, 1
/* 8043DDAC  4B FF E5 75 */	bl func_8043C320
/* 8043DDB0  7F E3 FB 78 */	mr r3, r31
/* 8043DDB4  4B FF F9 5D */	bl mfish_koi_turn_process_init
/* 8043DDB8  48 00 00 0C */	b lbl_8043DDC4
lbl_8043DDBC:
/* 8043DDBC  7F E3 FB 78 */	mr r3, r31
/* 8043DDC0  4B FF F0 ED */	bl mfish_koi_normal_process_init
lbl_8043DDC4:
/* 8043DDC4  A8 7F 06 3E */	lha r3, 0x63e(r31)
/* 8043DDC8  38 03 FF FF */	addi r0, r3, -1
/* 8043DDCC  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 8043DDD0  48 00 00 2C */	b lbl_8043DDFC
lbl_8043DDD4:
/* 8043DDD4  4B C1 EF 21 */	bl fqrand
/* 8043DDD8  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 8043DDDC  C0 03 42 94 */	lfs f0, lit_587@l(r3)  /* 0x80644294@l */
/* 8043DDE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043DDE4  40 80 00 10 */	bge lbl_8043DDF4
/* 8043DDE8  7F E3 FB 78 */	mr r3, r31
/* 8043DDEC  48 00 08 3D */	bl mfish_koi_long_move_process_init
/* 8043DDF0  48 00 00 0C */	b lbl_8043DDFC
lbl_8043DDF4:
/* 8043DDF4  7F E3 FB 78 */	mr r3, r31
/* 8043DDF8  4B FF EB C1 */	bl mfish_koi_dummy_process_init
lbl_8043DDFC:
/* 8043DDFC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8043DE00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8043DE04  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8043DE08  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8043DE0C  7C 08 03 A6 */	mtlr r0
/* 8043DE10  38 21 00 50 */	addi r1, r1, 0x50
/* 8043DE14  4E 80 00 20 */	blr 
