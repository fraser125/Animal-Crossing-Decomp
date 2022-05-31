lbl_8049D924:
/* 8049D924  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049D928  7C 08 02 A6 */	mflr r0
/* 8049D92C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049D930  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049D934  3B E0 00 00 */	li r31, 0
/* 8049D938  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049D93C  3B C3 01 8C */	addi r30, r3, 0x18c
lbl_8049D940:
/* 8049D940  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8049D944  2C 03 00 00 */	cmpwi r3, 0
/* 8049D948  40 81 00 10 */	ble lbl_8049D958
/* 8049D94C  38 03 FF FF */	addi r0, r3, -1
/* 8049D950  90 1E 00 44 */	stw r0, 0x44(r30)
/* 8049D954  48 00 02 94 */	b lbl_8049DBE8
lbl_8049D958:
/* 8049D958  A0 9E 00 2C */	lhz r4, 0x2c(r30)
/* 8049D95C  28 04 00 00 */	cmplwi r4, 0
/* 8049D960  41 82 02 88 */	beq lbl_8049DBE8
/* 8049D964  3C 00 43 30 */	lis r0, 0x4330
/* 8049D968  3C A0 80 64 */	lis r5, lit_633@ha /* 0x80645B94@ha */
/* 8049D96C  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80645BAC@ha */
/* 8049D970  90 81 00 24 */	stw r4, 0x24(r1)
/* 8049D974  38 83 5B AC */	addi r4, r3, lit_639@l /* 0x80645BAC@l */
/* 8049D978  C0 45 5B 94 */	lfs f2, lit_633@l(r5)  /* 0x80645B94@l */
/* 8049D97C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8049D980  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80645B84@ha */
/* 8049D984  C8 24 00 00 */	lfd f1, 0(r4)
/* 8049D988  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8049D98C  C0 63 5B 84 */	lfs f3, lit_553@l(r3)  /* 0x80645B84@l */
/* 8049D990  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049D994  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049D998  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8049D99C  40 81 00 08 */	ble lbl_8049D9A4
/* 8049D9A0  48 00 00 08 */	b lbl_8049D9A8
lbl_8049D9A4:
/* 8049D9A4  FC 60 00 90 */	fmr f3, f0
lbl_8049D9A8:
/* 8049D9A8  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80645B8C@ha */
/* 8049D9AC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8049D9B0  C0 43 5B 8C */	lfs f2, lit_555@l(r3)  /* 0x80645B8C@l */
/* 8049D9B4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8049D9B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049D9BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8049D9C0  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8049D9C4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8049D9C8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8049D9CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049D9D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8049D9D4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8049D9D8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8049D9DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8049D9E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049D9E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8049D9E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8049D9EC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8049D9F0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8049D9F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8049D9F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049D9FC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8049DA00  EC 01 00 2A */	fadds f0, f1, f0
/* 8049DA04  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8049DA08  A0 1E 00 42 */	lhz r0, 0x42(r30)
/* 8049DA0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8049DA10  41 82 00 60 */	beq lbl_8049DA70
/* 8049DA14  A0 BE 00 2C */	lhz r5, 0x2c(r30)
/* 8049DA18  3C 00 43 30 */	lis r0, 0x4330
/* 8049DA1C  3C 80 80 64 */	lis r4, lit_639@ha /* 0x80645BAC@ha */
/* 8049DA20  3C 60 80 64 */	lis r3, lit_556@ha /* 0x80645B90@ha */
/* 8049DA24  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8049DA28  3C A0 80 64 */	lis r5, lit_553@ha /* 0x80645B84@ha */
/* 8049DA2C  C8 44 5B AC */	lfd f2, lit_639@l(r4)  /* 0x80645BAC@l */
/* 8049DA30  3C 80 80 64 */	lis r4, lit_635@ha /* 0x80645B9C@ha */
/* 8049DA34  90 01 00 20 */	stw r0, 0x20(r1)
/* 8049DA38  C0 03 5B 90 */	lfs f0, lit_556@l(r3)  /* 0x80645B90@l */
/* 8049DA3C  3C 60 80 64 */	lis r3, lit_634@ha /* 0x80645B98@ha */
/* 8049DA40  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8049DA44  C0 64 5B 9C */	lfs f3, lit_635@l(r4)  /* 0x80645B9C@l */
/* 8049DA48  EC 21 10 28 */	fsubs f1, f1, f2
/* 8049DA4C  C0 45 5B 84 */	lfs f2, lit_553@l(r5)  /* 0x80645B84@l */
/* 8049DA50  EC 01 00 24 */	fdivs f0, f1, f0
/* 8049DA54  C0 23 5B 98 */	lfs f1, lit_634@l(r3)  /* 0x80645B98@l */
/* 8049DA58  EC 02 00 28 */	fsubs f0, f2, f0
/* 8049DA5C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8049DA60  EC 02 00 28 */	fsubs f0, f2, f0
/* 8049DA64  EC 03 00 32 */	fmuls f0, f3, f0
/* 8049DA68  EC 01 00 2A */	fadds f0, f1, f0
/* 8049DA6C  D0 1E 00 28 */	stfs f0, 0x28(r30)
lbl_8049DA70:
/* 8049DA70  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8049DA74  28 00 00 1B */	cmplwi r0, 0x1b
/* 8049DA78  40 82 00 6C */	bne lbl_8049DAE4
/* 8049DA7C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8049DA80  28 03 28 00 */	cmplwi r3, 0x2800
/* 8049DA84  41 82 00 1C */	beq lbl_8049DAA0
/* 8049DA88  38 03 D7 FF */	addi r0, r3, -10241
/* 8049DA8C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049DA90  28 00 00 02 */	cmplwi r0, 2
/* 8049DA94  40 81 00 0C */	ble lbl_8049DAA0
/* 8049DA98  28 03 28 04 */	cmplwi r3, 0x2804
/* 8049DA9C  40 82 00 14 */	bne lbl_8049DAB0
lbl_8049DAA0:
/* 8049DAA0  38 9E 00 10 */	addi r4, r30, 0x10
/* 8049DAA4  38 60 01 27 */	li r3, 0x127
/* 8049DAA8  48 19 05 01 */	bl sAdo_OngenTrgStart
/* 8049DAAC  48 00 00 38 */	b lbl_8049DAE4
lbl_8049DAB0:
/* 8049DAB0  38 03 DF 00 */	addi r0, r3, -8448
/* 8049DAB4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049DAB8  28 00 00 02 */	cmplwi r0, 2
/* 8049DABC  40 81 00 0C */	ble lbl_8049DAC8
/* 8049DAC0  28 03 21 03 */	cmplwi r3, 0x2103
/* 8049DAC4  40 82 00 14 */	bne lbl_8049DAD8
lbl_8049DAC8:
/* 8049DAC8  38 9E 00 10 */	addi r4, r30, 0x10
/* 8049DACC  38 60 04 44 */	li r3, 0x444
/* 8049DAD0  48 19 04 D9 */	bl sAdo_OngenTrgStart
/* 8049DAD4  48 00 00 10 */	b lbl_8049DAE4
lbl_8049DAD8:
/* 8049DAD8  38 9E 00 10 */	addi r4, r30, 0x10
/* 8049DADC  38 60 01 28 */	li r3, 0x128
/* 8049DAE0  48 19 04 C9 */	bl sAdo_OngenTrgStart
lbl_8049DAE4:
/* 8049DAE4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8049DAE8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8049DAEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049DAF0  4C 40 13 82 */	cror 2, 0, 2
/* 8049DAF4  40 82 00 E8 */	bne lbl_8049DBDC
/* 8049DAF8  A8 1E 00 40 */	lha r0, 0x40(r30)
/* 8049DAFC  2C 00 00 00 */	cmpwi r0, 0
/* 8049DB00  40 82 00 70 */	bne lbl_8049DB70
/* 8049DB04  A0 1E 00 42 */	lhz r0, 0x42(r30)
/* 8049DB08  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80645B84@ha */
/* 8049DB0C  38 83 5B 84 */	addi r4, r3, lit_553@l /* 0x80645B84@l */
/* 8049DB10  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8049DB14  C0 04 00 00 */	lfs f0, 0(r4)
/* 8049DB18  B0 1E 00 42 */	sth r0, 0x42(r30)
/* 8049DB1C  38 7E 00 10 */	addi r3, r30, 0x10
/* 8049DB20  38 9E 00 04 */	addi r4, r30, 4
/* 8049DB24  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8049DB28  4B F1 D3 95 */	bl xyz_t_move
/* 8049DB2C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8049DB30  3C 60 80 64 */	lis r3, lit_636@ha /* 0x80645BA0@ha */
/* 8049DB34  38 83 5B A0 */	addi r4, r3, lit_636@l /* 0x80645BA0@l */
/* 8049DB38  FC 20 00 50 */	fneg f1, f0
/* 8049DB3C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8049DB40  3C 60 80 64 */	lis r3, lit_637@ha /* 0x80645BA4@ha */
/* 8049DB44  C0 03 5B A4 */	lfs f0, lit_637@l(r3)  /* 0x80645BA4@l */
/* 8049DB48  EC 22 00 72 */	fmuls f1, f2, f1
/* 8049DB4C  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 8049DB50  A8 7E 00 40 */	lha r3, 0x40(r30)
/* 8049DB54  38 03 00 01 */	addi r0, r3, 1
/* 8049DB58  B0 1E 00 40 */	sth r0, 0x40(r30)
/* 8049DB5C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8049DB60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049DB64  40 81 00 84 */	ble lbl_8049DBE8
/* 8049DB68  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8049DB6C  48 00 00 7C */	b lbl_8049DBE8
lbl_8049DB70:
/* 8049DB70  A8 1E 00 02 */	lha r0, 2(r30)
/* 8049DB74  2C 00 00 00 */	cmpwi r0, 0
/* 8049DB78  40 82 00 30 */	bne lbl_8049DBA8
/* 8049DB7C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049DB80  38 81 00 14 */	addi r4, r1, 0x14
/* 8049DB84  80 1E 00 08 */	lwz r0, 8(r30)
/* 8049DB88  38 A0 00 00 */	li r5, 0
/* 8049DB8C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8049DB90  90 01 00 18 */	stw r0, 0x18(r1)
/* 8049DB94  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8049DB98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049DB9C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8049DBA0  4B F0 9C 91 */	bl mFI_SetFG_common
/* 8049DBA4  48 00 00 28 */	b lbl_8049DBCC
lbl_8049DBA8:
/* 8049DBA8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049DBAC  38 81 00 08 */	addi r4, r1, 8
/* 8049DBB0  80 1E 00 08 */	lwz r0, 8(r30)
/* 8049DBB4  90 61 00 08 */	stw r3, 8(r1)
/* 8049DBB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049DBBC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8049DBC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049DBC4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8049DBC8  4B F0 9C E9 */	bl mFI_SetFG2
lbl_8049DBCC:
/* 8049DBCC  38 00 00 00 */	li r0, 0
/* 8049DBD0  B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 8049DBD4  4B FD 63 C9 */	bl aMR_ThrowItem_FurnitureUnlock
/* 8049DBD8  48 00 00 10 */	b lbl_8049DBE8
lbl_8049DBDC:
/* 8049DBDC  A0 7E 00 2C */	lhz r3, 0x2c(r30)
/* 8049DBE0  38 03 00 01 */	addi r0, r3, 1
/* 8049DBE4  B0 1E 00 2C */	sth r0, 0x2c(r30)
lbl_8049DBE8:
/* 8049DBE8  3B FF 00 01 */	addi r31, r31, 1
/* 8049DBEC  3B DE 00 48 */	addi r30, r30, 0x48
/* 8049DBF0  2C 1F 00 09 */	cmpwi r31, 9
/* 8049DBF4  41 80 FD 4C */	blt lbl_8049D940
/* 8049DBF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049DBFC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049DC00  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049DC04  7C 08 03 A6 */	mtlr r0
/* 8049DC08  38 21 00 30 */	addi r1, r1, 0x30
/* 8049DC0C  4E 80 00 20 */	blr 
