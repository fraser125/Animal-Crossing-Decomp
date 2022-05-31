lbl_803B5D84:
/* 803B5D84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803B5D88  7C 08 02 A6 */	mflr r0
/* 803B5D8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B5D90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803B5D94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 803B5D98  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 803B5D9C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 803B5DA0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 803B5DA4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 803B5DA8  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 803B5DAC  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 803B5DB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B5DB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B5DB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B5DBC  3C 00 43 30 */	lis r0, 0x4330
/* 803B5DC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B5DC4  3C 80 80 64 */	lis r4, lit_402@ha /* 0x8064239C@ha */
/* 803B5DC8  3F E3 00 02 */	addis r31, r3, 2
/* 803B5DCC  3C C0 80 64 */	lis r6, lit_422@ha /* 0x806423A4@ha */
/* 803B5DD0  A0 FF 04 80 */	lhz r7, 0x480(r31)
/* 803B5DD4  3C 60 80 64 */	lis r3, lit_424@ha /* 0x806423AC@ha */
/* 803B5DD8  3C A0 80 64 */	lis r5, lit_423@ha /* 0x806423A8@ha */
/* 803B5DDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B5DE0  C8 64 23 9C */	lfd f3, lit_402@l(r4)  /* 0x8064239C@l */
/* 803B5DE4  3B C0 00 01 */	li r30, 1
/* 803B5DE8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 803B5DEC  3B FF 04 82 */	addi r31, r31, 0x482
/* 803B5DF0  C0 23 23 AC */	lfs f1, lit_424@l(r3)  /* 0x806423AC@l */
/* 803B5DF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803B5DF8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803B5DFC  EC 00 18 28 */	fsubs f0, f0, f3
/* 803B5E00  C3 E6 23 A4 */	lfs f31, lit_422@l(r6)  /* 0x806423A4@l */
/* 803B5E04  90 01 00 08 */	stw r0, 8(r1)
/* 803B5E08  C3 C5 23 A8 */	lfs f30, lit_423@l(r5)  /* 0x806423A8@l */
/* 803B5E0C  C8 41 00 08 */	lfd f2, 8(r1)
/* 803B5E10  EF 81 00 32 */	fmuls f28, f1, f0
/* 803B5E14  EF A2 18 28 */	fsubs f29, f2, f3
lbl_803B5E18:
/* 803B5E18  4B CA 6E DD */	bl fqrand
/* 803B5E1C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 803B5E20  40 80 00 40 */	bge lbl_803B5E60
/* 803B5E24  3C 60 80 64 */	lis r3, lit_425@ha /* 0x806423B0@ha */
/* 803B5E28  C0 03 23 B0 */	lfs f0, lit_425@l(r3)  /* 0x806423B0@l */
/* 803B5E2C  EF BD 00 32 */	fmuls f29, f29, f0
/* 803B5E30  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 803B5E34  40 81 00 08 */	ble lbl_803B5E3C
/* 803B5E38  FF A0 E0 90 */	fmr f29, f28
lbl_803B5E3C:
/* 803B5E3C  3C 80 80 64 */	lis r4, lit_426@ha /* 0x806423B4@ha */
/* 803B5E40  3C 60 80 64 */	lis r3, lit_423@ha /* 0x806423A8@ha */
/* 803B5E44  C0 24 23 B4 */	lfs f1, lit_426@l(r4)  /* 0x806423B4@l */
/* 803B5E48  C0 03 23 A8 */	lfs f0, lit_423@l(r3)  /* 0x806423A8@l */
/* 803B5E4C  EF DE 00 72 */	fmuls f30, f30, f1
/* 803B5E50  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 803B5E54  40 81 00 28 */	ble lbl_803B5E7C
/* 803B5E58  FF C0 00 90 */	fmr f30, f0
/* 803B5E5C  48 00 00 20 */	b lbl_803B5E7C
lbl_803B5E60:
/* 803B5E60  3C 80 80 64 */	lis r4, lit_427@ha /* 0x806423B8@ha */
/* 803B5E64  3C 60 80 64 */	lis r3, lit_428@ha /* 0x806423BC@ha */
/* 803B5E68  C0 03 23 BC */	lfs f0, lit_428@l(r3)  /* 0x806423BC@l */
/* 803B5E6C  EF BD 07 F2 */	fmuls f29, f29, f31
/* 803B5E70  C0 24 23 B8 */	lfs f1, lit_427@l(r4)  /* 0x806423B8@l */
/* 803B5E74  EF DE 00 2A */	fadds f30, f30, f0
/* 803B5E78  EF FF 08 2A */	fadds f31, f31, f1
lbl_803B5E7C:
/* 803B5E7C  FC 00 E8 1E */	fctiwz f0, f29
/* 803B5E80  3B DE 00 01 */	addi r30, r30, 1
/* 803B5E84  2C 1E 00 06 */	cmpwi r30, 6
/* 803B5E88  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803B5E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5E90  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B5E94  3B FF 00 02 */	addi r31, r31, 2
/* 803B5E98  40 81 FF 80 */	ble lbl_803B5E18
/* 803B5E9C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 803B5EA0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803B5EA4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 803B5EA8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 803B5EAC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 803B5EB0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 803B5EB4  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 803B5EB8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 803B5EBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B5EC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803B5EC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B5EC8  7C 08 03 A6 */	mtlr r0
/* 803B5ECC  38 21 00 60 */	addi r1, r1, 0x60
/* 803B5ED0  4E 80 00 20 */	blr 
