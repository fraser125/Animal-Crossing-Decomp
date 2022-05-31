lbl_803B5ED4:
/* 803B5ED4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803B5ED8  7C 08 02 A6 */	mflr r0
/* 803B5EDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803B5EE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803B5EE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803B5EE8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803B5EEC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 803B5EF0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 803B5EF4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 803B5EF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B5EFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B5F00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B5F04  3C 00 43 30 */	lis r0, 0x4330
/* 803B5F08  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803B5F0C  90 01 00 08 */	stw r0, 8(r1)
/* 803B5F10  3F E4 00 02 */	addis r31, r4, 2
/* 803B5F14  3C 60 80 64 */	lis r3, lit_402@ha /* 0x8064239C@ha */
/* 803B5F18  A0 DF 04 80 */	lhz r6, 0x480(r31)
/* 803B5F1C  38 A3 23 9C */	addi r5, r3, lit_402@l /* 0x8064239C@l */
/* 803B5F20  3C 80 80 64 */	lis r4, lit_440@ha /* 0x806423C0@ha */
/* 803B5F24  3C 60 80 64 */	lis r3, lit_424@ha /* 0x806423AC@ha */
/* 803B5F28  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803B5F2C  3B C0 00 01 */	li r30, 1
/* 803B5F30  C8 25 00 00 */	lfd f1, 0(r5)
/* 803B5F34  3B FF 04 82 */	addi r31, r31, 0x482
/* 803B5F38  C8 01 00 08 */	lfd f0, 8(r1)
/* 803B5F3C  C3 C4 23 C0 */	lfs f30, lit_440@l(r4)  /* 0x806423C0@l */
/* 803B5F40  EF A0 08 28 */	fsubs f29, f0, f1
/* 803B5F44  C3 E3 23 AC */	lfs f31, lit_424@l(r3)  /* 0x806423AC@l */
lbl_803B5F48:
/* 803B5F48  4B CA 6D AD */	bl fqrand
/* 803B5F4C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 803B5F50  3B DE 00 01 */	addi r30, r30, 1
/* 803B5F54  2C 1E 00 06 */	cmpwi r30, 6
/* 803B5F58  EC 1F 00 2A */	fadds f0, f31, f0
/* 803B5F5C  EF BD 00 32 */	fmuls f29, f29, f0
/* 803B5F60  FC 00 E8 1E */	fctiwz f0, f29
/* 803B5F64  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B5F68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B5F6C  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B5F70  3B FF 00 02 */	addi r31, r31, 2
/* 803B5F74  40 81 FF D4 */	ble lbl_803B5F48
/* 803B5F78  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803B5F7C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803B5F80  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 803B5F84  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803B5F88  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 803B5F8C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 803B5F90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B5F94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803B5F98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B5F9C  7C 08 03 A6 */	mtlr r0
/* 803B5FA0  38 21 00 50 */	addi r1, r1, 0x50
/* 803B5FA4  4E 80 00 20 */	blr 
