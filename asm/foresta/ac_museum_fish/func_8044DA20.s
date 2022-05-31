lbl_8044DA20:
/* 8044DA20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8044DA24  7C 08 02 A6 */	mflr r0
/* 8044DA28  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044DA2C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044DA30  7C 7F 1B 78 */	mr r31, r3
/* 8044DA34  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8044DA38  7C 9E 23 78 */	mr r30, r4
/* 8044DA3C  4B C0 F2 91 */	bl func_8005CCCC
/* 8044DA40  7F E3 FB 78 */	mr r3, r31
/* 8044DA44  7F C4 F3 78 */	mr r4, r30
/* 8044DA48  4B FE 6A C1 */	bl mfish_onefish_ct
/* 8044DA4C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044DA50  3D 00 43 30 */	lis r8, 0x4330
/* 8044DA54  39 43 61 38 */	addi r10, r3, debug_mode@l /* 0x81166138@l */
/* 8044DA58  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044DA5C  80 8A 00 00 */	lwz r4, 0(r10)
/* 8044DA60  39 23 42 8C */	addi r9, r3, lit_570@l /* 0x8064428C@l */
/* 8044DA64  3C A0 80 64 */	lis r5, lit_6403@ha /* 0x80644420@ha */
/* 8044DA68  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 8044DA6C  A8 04 1B 78 */	lha r0, 0x1b78(r4)
/* 8044DA70  39 65 44 20 */	addi r11, r5, lit_6403@l /* 0x80644420@l */
/* 8044DA74  38 E3 42 74 */	addi r7, r3, lit_530@l /* 0x80644274@l */
/* 8044DA78  3C 80 80 64 */	lis r4, lit_556@ha /* 0x8064427C@ha */
/* 8044DA7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044DA80  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044DA84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8044DA88  38 A4 42 7C */	addi r5, r4, lit_556@l /* 0x8064427C@l */
/* 8044DA8C  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8044DA90  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8044DA94  91 01 00 08 */	stw r8, 8(r1)
/* 8044DA98  38 C3 F0 50 */	addi r6, r3, data_8065F050@l /* 0x8065F050@l */
/* 8044DA9C  C8 89 00 00 */	lfd f4, 0(r9)
/* 8044DAA0  38 60 C0 00 */	li r3, -16384
/* 8044DAA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8044DAA8  38 00 00 00 */	li r0, 0
/* 8044DAAC  C0 2B 00 00 */	lfs f1, 0(r11)
/* 8044DAB0  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044DAB4  91 01 00 10 */	stw r8, 0x10(r1)
/* 8044DAB8  C0 67 00 00 */	lfs f3, 0(r7)
/* 8044DABC  91 01 00 18 */	stw r8, 0x18(r1)
/* 8044DAC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8044DAC4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044DAC8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8044DACC  D0 1F 05 A0 */	stfs f0, 0x5a0(r31)
/* 8044DAD0  80 8A 00 00 */	lwz r4, 0(r10)
/* 8044DAD4  A8 84 1B 7A */	lha r4, 0x1b7a(r4)
/* 8044DAD8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8044DADC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8044DAE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8044DAE4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044DAE8  EC 03 00 2A */	fadds f0, f3, f0
/* 8044DAEC  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8044DAF0  80 8A 00 00 */	lwz r4, 0(r10)
/* 8044DAF4  A8 84 1B 7C */	lha r4, 0x1b7c(r4)
/* 8044DAF8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8044DAFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8044DB00  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8044DB04  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044DB08  EC 02 00 2A */	fadds f0, f2, f0
/* 8044DB0C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 8044DB10  D0 3F 05 E8 */	stfs f1, 0x5e8(r31)
/* 8044DB14  80 A6 00 00 */	lwz r5, 0(r6)
/* 8044DB18  80 86 00 04 */	lwz r4, 4(r6)
/* 8044DB1C  90 BF 05 AC */	stw r5, 0x5ac(r31)
/* 8044DB20  90 9F 05 B0 */	stw r4, 0x5b0(r31)
/* 8044DB24  80 86 00 08 */	lwz r4, 8(r6)
/* 8044DB28  90 9F 05 B4 */	stw r4, 0x5b4(r31)
/* 8044DB2C  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 8044DB30  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8044DB34  B0 7F 06 0E */	sth r3, 0x60e(r31)
/* 8044DB38  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 8044DB3C  B0 7F 06 14 */	sth r3, 0x614(r31)
/* 8044DB40  D0 3F 05 F4 */	stfs f1, 0x5f4(r31)
/* 8044DB44  D0 3F 05 D4 */	stfs f1, 0x5d4(r31)
/* 8044DB48  80 86 00 00 */	lwz r4, 0(r6)
/* 8044DB4C  80 66 00 04 */	lwz r3, 4(r6)
/* 8044DB50  90 9F 05 AC */	stw r4, 0x5ac(r31)
/* 8044DB54  90 7F 05 B0 */	stw r3, 0x5b0(r31)
/* 8044DB58  80 66 00 08 */	lwz r3, 8(r6)
/* 8044DB5C  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 8044DB60  B0 1F 06 22 */	sth r0, 0x622(r31)
/* 8044DB64  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 8044DB68  4B C0 F1 65 */	bl func_8005CCCC
/* 8044DB6C  B0 7F 06 3A */	sth r3, 0x63a(r31)
/* 8044DB70  4B C0 F1 5D */	bl func_8005CCCC
/* 8044DB74  B0 7F 06 3C */	sth r3, 0x63c(r31)
/* 8044DB78  4B C0 F1 7D */	bl fqrand
/* 8044DB7C  A8 7F 00 2E */	lha r3, 0x2e(r31)
/* 8044DB80  3C 00 43 30 */	lis r0, 0x4330
/* 8044DB84  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044DB88  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044DB8C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044DB90  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044DB94  90 61 00 24 */	stw r3, 0x24(r1)
/* 8044DB98  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 8044DB9C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044DBA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044DBA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044DBA8  FC 00 00 1E */	fctiwz f0, f0
/* 8044DBAC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044DBB0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8044DBB4  7C 00 1A 14 */	add r0, r0, r3
/* 8044DBB8  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 8044DBBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8044DBC0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044DBC4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8044DBC8  7C 08 03 A6 */	mtlr r0
/* 8044DBCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8044DBD0  4E 80 00 20 */	blr 
