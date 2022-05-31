lbl_804C1930:
/* 804C1930  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C1934  7C 08 02 A6 */	mflr r0
/* 804C1938  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C193C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804C1940  7C 7F 1B 78 */	mr r31, r3
/* 804C1944  A0 63 00 20 */	lhz r3, 0x20(r3)
/* 804C1948  28 03 00 00 */	cmplwi r3, 0
/* 804C194C  41 82 00 0C */	beq lbl_804C1958
/* 804C1950  38 03 FF FF */	addi r0, r3, -1
/* 804C1954  B0 1F 00 20 */	sth r0, 0x20(r31)
lbl_804C1958:
/* 804C1958  A0 1F 00 20 */	lhz r0, 0x20(r31)
/* 804C195C  28 00 00 00 */	cmplwi r0, 0
/* 804C1960  40 82 01 8C */	bne lbl_804C1AEC
/* 804C1964  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 804C1968  2C 00 00 02 */	cmpwi r0, 2
/* 804C196C  41 82 00 C0 */	beq lbl_804C1A2C
/* 804C1970  40 80 01 7C */	bge lbl_804C1AEC
/* 804C1974  2C 00 00 01 */	cmpwi r0, 1
/* 804C1978  40 80 00 08 */	bge lbl_804C1980
/* 804C197C  48 00 01 70 */	b lbl_804C1AEC
lbl_804C1980:
/* 804C1980  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804C1984  3C 60 43 30 */	lis r3, 0x4330
/* 804C1988  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C198C  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x8064618C@ha */
/* 804C1990  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804C1994  C8 44 61 8C */	lfd f2, lit_1524@l(r4)  /* 0x8064618C@l */
/* 804C1998  90 61 00 30 */	stw r3, 0x30(r1)
/* 804C199C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C19A0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804C19A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 804C19A8  90 61 00 38 */	stw r3, 0x38(r1)
/* 804C19AC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804C19B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C19B4  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C19B8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804C19BC  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C19C0  38 03 00 01 */	addi r0, r3, 1
/* 804C19C4  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804C19C8  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C19CC  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C19D0  7C 03 00 40 */	cmplw r3, r0
/* 804C19D4  40 81 01 18 */	ble lbl_804C1AEC
/* 804C19D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 804C19DC  38 81 00 20 */	addi r4, r1, 0x20
/* 804C19E0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C19E4  38 A0 00 01 */	li r5, 1
/* 804C19E8  90 61 00 20 */	stw r3, 0x20(r1)
/* 804C19EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C19F0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C19F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C19F8  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804C19FC  4B EE 5E 35 */	bl mFI_SetFG_common
/* 804C1A00  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C1A04  38 61 00 14 */	addi r3, r1, 0x14
/* 804C1A08  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C1A0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C1A10  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C1A14  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C1A18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C1A1C  4B EE 76 0D */	bl mFI_Wpos2DepositOFF
/* 804C1A20  38 00 00 00 */	li r0, 0
/* 804C1A24  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804C1A28  48 00 00 C4 */	b lbl_804C1AEC
lbl_804C1A2C:
/* 804C1A2C  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804C1A30  3C 60 43 30 */	lis r3, 0x4330
/* 804C1A34  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C1A38  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x8064618C@ha */
/* 804C1A3C  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804C1A40  3C A0 80 64 */	lis r5, lit_845@ha /* 0x80646164@ha */
/* 804C1A44  C8 44 61 8C */	lfd f2, lit_1524@l(r4)  /* 0x8064618C@l */
/* 804C1A48  90 61 00 38 */	stw r3, 0x38(r1)
/* 804C1A4C  C0 65 61 64 */	lfs f3, lit_845@l(r5)  /* 0x80646164@l */
/* 804C1A50  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804C1A54  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C1A58  EC 20 10 28 */	fsubs f1, f0, f2
/* 804C1A5C  90 61 00 30 */	stw r3, 0x30(r1)
/* 804C1A60  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C1A64  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C1A68  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C1A6C  EC 03 00 28 */	fsubs f0, f3, f0
/* 804C1A70  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804C1A74  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C1A78  38 03 00 01 */	addi r0, r3, 1
/* 804C1A7C  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804C1A80  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804C1A84  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804C1A88  7C 03 00 40 */	cmplw r3, r0
/* 804C1A8C  40 81 00 60 */	ble lbl_804C1AEC
/* 804C1A90  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804C1A94  7F E5 FB 78 */	mr r5, r31
/* 804C1A98  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804C1A9C  38 C0 00 00 */	li r6, 0
/* 804C1AA0  4B FF EA 81 */	bl bIT_common_hole_throw
/* 804C1AA4  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804C1AA8  28 00 00 00 */	cmplwi r0, 0
/* 804C1AAC  40 82 00 38 */	bne lbl_804C1AE4
/* 804C1AB0  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804C1AB4  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C1AB8  40 82 00 2C */	bne lbl_804C1AE4
/* 804C1ABC  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C1AC0  38 81 00 08 */	addi r4, r1, 8
/* 804C1AC4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C1AC8  38 60 00 00 */	li r3, 0
/* 804C1ACC  38 A0 00 01 */	li r5, 1
/* 804C1AD0  90 C1 00 08 */	stw r6, 8(r1)
/* 804C1AD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1AD8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C1ADC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1AE0  4B EE 5D 51 */	bl mFI_SetFG_common
lbl_804C1AE4:
/* 804C1AE4  38 00 00 00 */	li r0, 0
/* 804C1AE8  B0 1F 00 16 */	sth r0, 0x16(r31)
lbl_804C1AEC:
/* 804C1AEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C1AF0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804C1AF4  7C 08 03 A6 */	mtlr r0
/* 804C1AF8  38 21 00 50 */	addi r1, r1, 0x50
/* 804C1AFC  4E 80 00 20 */	blr 
