lbl_804C8D48:
/* 804C8D48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C8D4C  7C 08 02 A6 */	mflr r0
/* 804C8D50  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C8D54  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804C8D58  7C 7F 1B 78 */	mr r31, r3
/* 804C8D5C  A0 63 00 20 */	lhz r3, 0x20(r3)
/* 804C8D60  28 03 00 00 */	cmplwi r3, 0
/* 804C8D64  41 82 00 0C */	beq lbl_804C8D70
/* 804C8D68  38 03 FF FF */	addi r0, r3, -1
/* 804C8D6C  B0 1F 00 20 */	sth r0, 0x20(r31)
lbl_804C8D70:
/* 804C8D70  A0 1F 00 20 */	lhz r0, 0x20(r31)
/* 804C8D74  28 00 00 00 */	cmplwi r0, 0
/* 804C8D78  40 82 01 8C */	bne lbl_804C8F04
/* 804C8D7C  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 804C8D80  2C 00 00 02 */	cmpwi r0, 2
/* 804C8D84  41 82 00 C0 */	beq lbl_804C8E44
/* 804C8D88  40 80 01 7C */	bge lbl_804C8F04
/* 804C8D8C  2C 00 00 01 */	cmpwi r0, 1
/* 804C8D90  40 80 00 08 */	bge lbl_804C8D98
/* 804C8D94  48 00 01 70 */	b lbl_804C8F04
lbl_804C8D98:
/* 804C8D98  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804C8D9C  3C 60 43 30 */	lis r3, 0x4330
/* 804C8DA0  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C8DA4  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x8064622C@ha */
/* 804C8DA8  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804C8DAC  C8 44 62 2C */	lfd f2, lit_1524@l(r4)  /* 0x8064622C@l */
/* 804C8DB0  90 61 00 30 */	stw r3, 0x30(r1)
/* 804C8DB4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C8DB8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804C8DBC  EC 20 10 28 */	fsubs f1, f0, f2
/* 804C8DC0  90 61 00 38 */	stw r3, 0x38(r1)
/* 804C8DC4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804C8DC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C8DCC  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C8DD0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804C8DD4  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C8DD8  38 03 00 01 */	addi r0, r3, 1
/* 804C8DDC  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804C8DE0  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C8DE4  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C8DE8  7C 03 00 40 */	cmplw r3, r0
/* 804C8DEC  40 81 01 18 */	ble lbl_804C8F04
/* 804C8DF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 804C8DF4  38 81 00 20 */	addi r4, r1, 0x20
/* 804C8DF8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8DFC  38 A0 00 01 */	li r5, 1
/* 804C8E00  90 61 00 20 */	stw r3, 0x20(r1)
/* 804C8E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C8E08  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8E0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C8E10  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804C8E14  4B ED EA 1D */	bl mFI_SetFG_common
/* 804C8E18  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C8E1C  38 61 00 14 */	addi r3, r1, 0x14
/* 804C8E20  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8E24  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C8E28  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C8E2C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8E30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C8E34  4B EE 01 F5 */	bl mFI_Wpos2DepositOFF
/* 804C8E38  38 00 00 00 */	li r0, 0
/* 804C8E3C  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804C8E40  48 00 00 C4 */	b lbl_804C8F04
lbl_804C8E44:
/* 804C8E44  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804C8E48  3C 60 43 30 */	lis r3, 0x4330
/* 804C8E4C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C8E50  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x8064622C@ha */
/* 804C8E54  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804C8E58  3C A0 80 64 */	lis r5, lit_845@ha /* 0x80646204@ha */
/* 804C8E5C  C8 44 62 2C */	lfd f2, lit_1524@l(r4)  /* 0x8064622C@l */
/* 804C8E60  90 61 00 38 */	stw r3, 0x38(r1)
/* 804C8E64  C0 65 62 04 */	lfs f3, lit_845@l(r5)  /* 0x80646204@l */
/* 804C8E68  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804C8E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C8E70  EC 20 10 28 */	fsubs f1, f0, f2
/* 804C8E74  90 61 00 30 */	stw r3, 0x30(r1)
/* 804C8E78  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C8E7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C8E80  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C8E84  EC 03 00 28 */	fsubs f0, f3, f0
/* 804C8E88  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804C8E8C  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C8E90  38 03 00 01 */	addi r0, r3, 1
/* 804C8E94  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804C8E98  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C8E9C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C8EA0  7C 03 00 40 */	cmplw r3, r0
/* 804C8EA4  40 81 00 60 */	ble lbl_804C8F04
/* 804C8EA8  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804C8EAC  7F E5 FB 78 */	mr r5, r31
/* 804C8EB0  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804C8EB4  38 C0 00 00 */	li r6, 0
/* 804C8EB8  4B FF EA 81 */	bl bIT_common_hole_throw
/* 804C8EBC  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804C8EC0  28 00 00 00 */	cmplwi r0, 0
/* 804C8EC4  40 82 00 38 */	bne lbl_804C8EFC
/* 804C8EC8  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804C8ECC  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C8ED0  40 82 00 2C */	bne lbl_804C8EFC
/* 804C8ED4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C8ED8  38 81 00 08 */	addi r4, r1, 8
/* 804C8EDC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8EE0  38 60 00 00 */	li r3, 0
/* 804C8EE4  38 A0 00 01 */	li r5, 1
/* 804C8EE8  90 C1 00 08 */	stw r6, 8(r1)
/* 804C8EEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8EF0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8EF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C8EF8  4B ED E9 39 */	bl mFI_SetFG_common
lbl_804C8EFC:
/* 804C8EFC  38 00 00 00 */	li r0, 0
/* 804C8F00  B0 1F 00 16 */	sth r0, 0x16(r31)
lbl_804C8F04:
/* 804C8F04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C8F08  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804C8F0C  7C 08 03 A6 */	mtlr r0
/* 804C8F10  38 21 00 50 */	addi r1, r1, 0x50
/* 804C8F14  4E 80 00 20 */	blr 
