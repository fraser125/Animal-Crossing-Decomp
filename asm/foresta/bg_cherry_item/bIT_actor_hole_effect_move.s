lbl_804B2AB4:
/* 804B2AB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B2AB8  7C 08 02 A6 */	mflr r0
/* 804B2ABC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B2AC0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804B2AC4  7C 7F 1B 78 */	mr r31, r3
/* 804B2AC8  A0 63 00 20 */	lhz r3, 0x20(r3)
/* 804B2ACC  28 03 00 00 */	cmplwi r3, 0
/* 804B2AD0  41 82 00 0C */	beq lbl_804B2ADC
/* 804B2AD4  38 03 FF FF */	addi r0, r3, -1
/* 804B2AD8  B0 1F 00 20 */	sth r0, 0x20(r31)
lbl_804B2ADC:
/* 804B2ADC  A0 1F 00 20 */	lhz r0, 0x20(r31)
/* 804B2AE0  28 00 00 00 */	cmplwi r0, 0
/* 804B2AE4  40 82 01 8C */	bne lbl_804B2C70
/* 804B2AE8  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 804B2AEC  2C 00 00 02 */	cmpwi r0, 2
/* 804B2AF0  41 82 00 C0 */	beq lbl_804B2BB0
/* 804B2AF4  40 80 01 7C */	bge lbl_804B2C70
/* 804B2AF8  2C 00 00 01 */	cmpwi r0, 1
/* 804B2AFC  40 80 00 08 */	bge lbl_804B2B04
/* 804B2B00  48 00 01 70 */	b lbl_804B2C70
lbl_804B2B04:
/* 804B2B04  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804B2B08  3C 60 43 30 */	lis r3, 0x4330
/* 804B2B0C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B2B10  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x8064603C@ha */
/* 804B2B14  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804B2B18  C8 44 60 3C */	lfd f2, lit_1524@l(r4)  /* 0x8064603C@l */
/* 804B2B1C  90 61 00 30 */	stw r3, 0x30(r1)
/* 804B2B20  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B2B24  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B2B28  EC 20 10 28 */	fsubs f1, f0, f2
/* 804B2B2C  90 61 00 38 */	stw r3, 0x38(r1)
/* 804B2B30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B2B34  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B2B38  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B2B3C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804B2B40  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B2B44  38 03 00 01 */	addi r0, r3, 1
/* 804B2B48  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804B2B4C  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B2B50  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B2B54  7C 03 00 40 */	cmplw r3, r0
/* 804B2B58  40 81 01 18 */	ble lbl_804B2C70
/* 804B2B5C  80 7F 00 00 */	lwz r3, 0(r31)
/* 804B2B60  38 81 00 20 */	addi r4, r1, 0x20
/* 804B2B64  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2B68  38 A0 00 01 */	li r5, 1
/* 804B2B6C  90 61 00 20 */	stw r3, 0x20(r1)
/* 804B2B70  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B2B74  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2B78  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B2B7C  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804B2B80  4B EF 4C B1 */	bl mFI_SetFG_common
/* 804B2B84  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B2B88  38 61 00 14 */	addi r3, r1, 0x14
/* 804B2B8C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2B90  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B2B94  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B2B98  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2B9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B2BA0  4B EF 64 89 */	bl mFI_Wpos2DepositOFF
/* 804B2BA4  38 00 00 00 */	li r0, 0
/* 804B2BA8  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804B2BAC  48 00 00 C4 */	b lbl_804B2C70
lbl_804B2BB0:
/* 804B2BB0  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 804B2BB4  3C 60 43 30 */	lis r3, 0x4330
/* 804B2BB8  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B2BBC  3C 80 80 64 */	lis r4, lit_1524@ha /* 0x8064603C@ha */
/* 804B2BC0  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804B2BC4  3C A0 80 64 */	lis r5, lit_845@ha /* 0x80646014@ha */
/* 804B2BC8  C8 44 60 3C */	lfd f2, lit_1524@l(r4)  /* 0x8064603C@l */
/* 804B2BCC  90 61 00 38 */	stw r3, 0x38(r1)
/* 804B2BD0  C0 65 60 14 */	lfs f3, lit_845@l(r5)  /* 0x80646014@l */
/* 804B2BD4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B2BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B2BDC  EC 20 10 28 */	fsubs f1, f0, f2
/* 804B2BE0  90 61 00 30 */	stw r3, 0x30(r1)
/* 804B2BE4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B2BE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B2BEC  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B2BF0  EC 03 00 28 */	fsubs f0, f3, f0
/* 804B2BF4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804B2BF8  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B2BFC  38 03 00 01 */	addi r0, r3, 1
/* 804B2C00  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 804B2C04  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 804B2C08  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 804B2C0C  7C 03 00 40 */	cmplw r3, r0
/* 804B2C10  40 81 00 60 */	ble lbl_804B2C70
/* 804B2C14  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804B2C18  7F E5 FB 78 */	mr r5, r31
/* 804B2C1C  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804B2C20  38 C0 00 00 */	li r6, 0
/* 804B2C24  4B FF EA 81 */	bl bIT_common_hole_throw
/* 804B2C28  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804B2C2C  28 00 00 00 */	cmplwi r0, 0
/* 804B2C30  40 82 00 38 */	bne lbl_804B2C68
/* 804B2C34  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804B2C38  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B2C3C  40 82 00 2C */	bne lbl_804B2C68
/* 804B2C40  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B2C44  38 81 00 08 */	addi r4, r1, 8
/* 804B2C48  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2C4C  38 60 00 00 */	li r3, 0
/* 804B2C50  38 A0 00 01 */	li r5, 1
/* 804B2C54  90 C1 00 08 */	stw r6, 8(r1)
/* 804B2C58  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B2C5C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2C64  4B EF 4B CD */	bl mFI_SetFG_common
lbl_804B2C68:
/* 804B2C68  38 00 00 00 */	li r0, 0
/* 804B2C6C  B0 1F 00 16 */	sth r0, 0x16(r31)
lbl_804B2C70:
/* 804B2C70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B2C74  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804B2C78  7C 08 03 A6 */	mtlr r0
/* 804B2C7C  38 21 00 50 */	addi r1, r1, 0x50
/* 804B2C80  4E 80 00 20 */	blr 
