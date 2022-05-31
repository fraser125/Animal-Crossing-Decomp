lbl_805E7D38:
/* 805E7D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E7D3C  7C 08 02 A6 */	mflr r0
/* 805E7D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E7D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E7D48  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E7D4C  83 E3 09 B0 */	lwz r31, 0x9b0(r3)
/* 805E7D50  80 A3 09 28 */	lwz r5, 0x928(r3)
/* 805E7D54  A8 7F 00 1E */	lha r3, 0x1e(r31)
/* 805E7D58  7C 60 07 35 */	extsh. r0, r3
/* 805E7D5C  40 82 00 40 */	bne lbl_805E7D9C
/* 805E7D60  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064B5C8@ha */
/* 805E7D64  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E7D68  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805E7D6C  C0 24 B5 C8 */	lfs f1, lit_540@l(r4)  /* 0x8064B5C8@l */
/* 805E7D70  C0 03 B5 CC */	lfs f0, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E7D74  EC 22 08 2A */	fadds f1, f2, f1
/* 805E7D78  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 805E7D7C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805E7D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E7D84  4C 41 13 82 */	cror 2, 1, 2
/* 805E7D88  40 82 01 0C */	bne lbl_805E7E94
/* 805E7D8C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 805E7D90  38 00 00 02 */	li r0, 2
/* 805E7D94  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805E7D98  48 00 00 FC */	b lbl_805E7E94
lbl_805E7D9C:
/* 805E7D9C  2C 03 00 01 */	cmpwi r3, 1
/* 805E7DA0  40 82 00 3C */	bne lbl_805E7DDC
/* 805E7DA4  3C A0 80 65 */	lis r5, lit_540@ha /* 0x8064B5C8@ha */
/* 805E7DA8  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E7DAC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805E7DB0  C0 25 B5 C8 */	lfs f1, lit_540@l(r5)  /* 0x8064B5C8@l */
/* 805E7DB4  C0 03 B5 C4 */	lfs f0, data_8064B5C4@l(r3)  /* 0x8064B5C4@l */
/* 805E7DB8  EC 22 08 28 */	fsubs f1, f2, f1
/* 805E7DBC  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 805E7DC0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805E7DC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E7DC8  40 80 00 CC */	bge lbl_805E7E94
/* 805E7DCC  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 805E7DD0  38 00 00 01 */	li r0, 1
/* 805E7DD4  90 04 00 04 */	stw r0, 4(r4)
/* 805E7DD8  48 00 00 BC */	b lbl_805E7E94
lbl_805E7DDC:
/* 805E7DDC  54 A0 04 21 */	rlwinm. r0, r5, 0, 0x10, 0x10
/* 805E7DE0  41 82 00 4C */	beq lbl_805E7E2C
/* 805E7DE4  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805E7DE8  2C 00 00 00 */	cmpwi r0, 0
/* 805E7DEC  40 82 00 2C */	bne lbl_805E7E18
/* 805E7DF0  38 00 00 10 */	li r0, 0x10
/* 805E7DF4  7F E3 FB 78 */	mr r3, r31
/* 805E7DF8  38 80 00 0E */	li r4, 0xe
/* 805E7DFC  7C 09 03 A6 */	mtctr r0
lbl_805E7E00:
/* 805E7E00  98 83 00 00 */	stb r4, 0(r3)
/* 805E7E04  38 63 00 01 */	addi r3, r3, 1
/* 805E7E08  42 00 FF F8 */	bdnz lbl_805E7E00
/* 805E7E0C  38 60 01 14 */	li r3, 0x114
/* 805E7E10  48 04 5E F5 */	bl sAdo_SysTrgStart
/* 805E7E14  48 00 00 0C */	b lbl_805E7E20
lbl_805E7E18:
/* 805E7E18  38 60 10 03 */	li r3, 0x1003
/* 805E7E1C  48 04 5E E9 */	bl sAdo_SysTrgStart
lbl_805E7E20:
/* 805E7E20  38 00 00 01 */	li r0, 1
/* 805E7E24  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805E7E28  48 00 00 6C */	b lbl_805E7E94
lbl_805E7E2C:
/* 805E7E2C  54 A0 04 63 */	rlwinm. r0, r5, 0, 0x11, 0x11
/* 805E7E30  41 82 00 18 */	beq lbl_805E7E48
/* 805E7E34  38 60 10 03 */	li r3, 0x1003
/* 805E7E38  48 04 5E CD */	bl sAdo_SysTrgStart
/* 805E7E3C  38 00 00 01 */	li r0, 1
/* 805E7E40  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805E7E44  48 00 00 50 */	b lbl_805E7E94
lbl_805E7E48:
/* 805E7E48  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 805E7E4C  41 82 00 24 */	beq lbl_805E7E70
/* 805E7E50  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805E7E54  2C 00 00 00 */	cmpwi r0, 0
/* 805E7E58  40 82 00 3C */	bne lbl_805E7E94
/* 805E7E5C  38 00 00 01 */	li r0, 1
/* 805E7E60  38 60 00 01 */	li r3, 1
/* 805E7E64  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 805E7E68  48 04 5E 9D */	bl sAdo_SysTrgStart
/* 805E7E6C  48 00 00 28 */	b lbl_805E7E94
lbl_805E7E70:
/* 805E7E70  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 805E7E74  41 82 00 20 */	beq lbl_805E7E94
/* 805E7E78  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805E7E7C  2C 00 00 01 */	cmpwi r0, 1
/* 805E7E80  40 82 00 14 */	bne lbl_805E7E94
/* 805E7E84  38 00 00 00 */	li r0, 0
/* 805E7E88  38 60 00 01 */	li r3, 1
/* 805E7E8C  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 805E7E90  48 04 5E 75 */	bl sAdo_SysTrgStart
lbl_805E7E94:
/* 805E7E94  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 805E7E98  38 60 00 12 */	li r3, 0x12
/* 805E7E9C  38 84 00 01 */	addi r4, r4, 1
/* 805E7EA0  7C 04 1B D6 */	divw r0, r4, r3
/* 805E7EA4  7C 00 19 D6 */	mullw r0, r0, r3
/* 805E7EA8  7C 00 20 50 */	subf r0, r0, r4
/* 805E7EAC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805E7EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E7EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E7EB8  7C 08 03 A6 */	mtlr r0
/* 805E7EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 805E7EC0  4E 80 00 20 */	blr 
