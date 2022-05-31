lbl_8061F414:
/* 8061F414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061F418  7C 08 02 A6 */	mflr r0
/* 8061F41C  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8061F420  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061F424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061F428  7C 7F 1B 78 */	mr r31, r3
/* 8061F42C  84 64 F0 50 */	lwzu r3, data_8065F050@l(r4)  /* 0x8065F050@l */
/* 8061F430  80 04 00 04 */	lwz r0, 4(r4)
/* 8061F434  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8061F438  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8061F43C  80 04 00 08 */	lwz r0, 8(r4)
/* 8061F440  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8061F444  80 64 00 00 */	lwz r3, 0(r4)
/* 8061F448  80 04 00 04 */	lwz r0, 4(r4)
/* 8061F44C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8061F450  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8061F454  80 04 00 08 */	lwz r0, 8(r4)
/* 8061F458  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8061F45C  4B A3 D8 D1 */	bl fqrand2
/* 8061F460  3C 60 80 65 */	lis r3, data_8064CC7C@ha /* 0x8064CC7C@ha */
/* 8061F464  C0 03 CC 7C */	lfs f0, data_8064CC7C@l(r3)  /* 0x8064CC7C@l */
/* 8061F468  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061F46C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8061F470  4B A3 D8 BD */	bl fqrand2
/* 8061F474  3C 60 80 65 */	lis r3, data_8064CC7C@ha /* 0x8064CC7C@ha */
/* 8061F478  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8061F47C  38 A3 CC 7C */	addi r5, r3, data_8064CC7C@l /* 0x8064CC7C@l */
/* 8061F480  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061F484  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC80@ha */
/* 8061F488  C0 03 CC 80 */	lfs f0, lit_387@l(r3)  /* 0x8064CC80@l */
/* 8061F48C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061F490  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8061F494  84 64 F0 50 */	lwzu r3, data_8065F050@l(r4)  /* 0x8065F050@l */
/* 8061F498  80 04 00 04 */	lwz r0, 4(r4)
/* 8061F49C  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8061F4A0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8061F4A4  80 04 00 08 */	lwz r0, 8(r4)
/* 8061F4A8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8061F4AC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8061F4B0  4B A3 D8 1D */	bl func_8005CCCC
/* 8061F4B4  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 8061F4B8  38 00 11 C7 */	li r0, 0x11c7
/* 8061F4BC  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8061F4C0  4B A3 D8 0D */	bl func_8005CCCC
/* 8061F4C4  B0 7F 00 50 */	sth r3, 0x50(r31)
/* 8061F4C8  38 00 08 E3 */	li r0, 0x8e3
/* 8061F4CC  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 8061F4D0  4B A3 D8 25 */	bl fqrand
/* 8061F4D4  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064CC8C@ha */
/* 8061F4D8  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064CC88@ha */
/* 8061F4DC  38 A3 CC 8C */	addi r5, r3, lit_390@l /* 0x8064CC8C@l */
/* 8061F4E0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8061F4E4  38 A4 CC 88 */	addi r5, r4, lit_389@l /* 0x8064CC88@l */
/* 8061F4E8  3C 60 80 65 */	lis r3, lit_388@ha /* 0x8064CC84@ha */
/* 8061F4EC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061F4F0  EC 60 00 72 */	fmuls f3, f0, f1
/* 8061F4F4  38 83 CC 84 */	addi r4, r3, lit_388@l /* 0x8064CC84@l */
/* 8061F4F8  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064CC90@ha */
/* 8061F4FC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061F500  C0 03 CC 90 */	lfs f0, lit_391@l(r3)  /* 0x8064CC90@l */
/* 8061F504  EC 42 18 2A */	fadds f2, f2, f3
/* 8061F508  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8061F50C  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8061F510  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8061F514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061F518  40 81 00 1C */	ble lbl_8061F534
/* 8061F51C  A8 1F 00 06 */	lha r0, 6(r31)
/* 8061F520  2C 00 00 04 */	cmpwi r0, 4
/* 8061F524  41 82 00 10 */	beq lbl_8061F534
/* 8061F528  38 00 00 01 */	li r0, 1
/* 8061F52C  B0 1F 00 54 */	sth r0, 0x54(r31)
/* 8061F530  48 00 00 0C */	b lbl_8061F53C
lbl_8061F534:
/* 8061F534  38 00 00 00 */	li r0, 0
/* 8061F538  B0 1F 00 54 */	sth r0, 0x54(r31)
lbl_8061F53C:
/* 8061F53C  38 00 00 50 */	li r0, 0x50
/* 8061F540  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061F544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061F548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061F54C  7C 08 03 A6 */	mtlr r0
/* 8061F550  38 21 00 10 */	addi r1, r1, 0x10
/* 8061F554  4E 80 00 20 */	blr 
