lbl_803B5CD4:
/* 803B5CD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B5CD8  7C 08 02 A6 */	mflr r0
/* 803B5CDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B5CE0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803B5CE4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 803B5CE8  48 00 00 9D */	bl Kabu_decide_price_schedule_typeB
/* 803B5CEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B5CF0  3C 00 43 30 */	lis r0, 0x4330
/* 803B5CF4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803B5CF8  3C A0 80 64 */	lis r5, data_80642394@ha /* 0x80642394@ha */
/* 803B5CFC  3C 84 00 02 */	addis r4, r4, 2
/* 803B5D00  3C 60 80 64 */	lis r3, lit_402@ha /* 0x8064239C@ha */
/* 803B5D04  A0 84 04 80 */	lhz r4, 0x480(r4)
/* 803B5D08  90 01 00 08 */	stw r0, 8(r1)
/* 803B5D0C  C8 23 23 9C */	lfd f1, lit_402@l(r3)  /* 0x8064239C@l */
/* 803B5D10  90 81 00 0C */	stw r4, 0xc(r1)
/* 803B5D14  C0 45 23 94 */	lfs f2, data_80642394@l(r5)  /* 0x80642394@l */
/* 803B5D18  C8 01 00 08 */	lfd f0, 8(r1)
/* 803B5D1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B5D20  EF E2 00 32 */	fmuls f31, f2, f0
/* 803B5D24  4B CA 6F D1 */	bl fqrand
/* 803B5D28  3C 60 80 64 */	lis r3, lit_400@ha /* 0x80642398@ha */
/* 803B5D2C  FC 00 F8 1E */	fctiwz f0, f31
/* 803B5D30  38 83 23 98 */	addi r4, r3, lit_400@l /* 0x80642398@l */
/* 803B5D34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B5D38  C0 44 00 00 */	lfs f2, 0(r4)
/* 803B5D3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B5D40  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B5D44  EC 02 00 72 */	fmuls f0, f2, f1
/* 803B5D48  3C 63 00 02 */	addis r3, r3, 2
/* 803B5D4C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803B5D50  FC 00 00 1E */	fctiwz f0, f0
/* 803B5D54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803B5D58  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803B5D5C  38 05 00 01 */	addi r0, r5, 1
/* 803B5D60  54 00 08 3C */	slwi r0, r0, 1
/* 803B5D64  7C 63 02 14 */	add r3, r3, r0
/* 803B5D68  B0 83 04 80 */	sth r4, 0x480(r3)
/* 803B5D6C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 803B5D70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B5D74  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803B5D78  7C 08 03 A6 */	mtlr r0
/* 803B5D7C  38 21 00 30 */	addi r1, r1, 0x30
/* 803B5D80  4E 80 00 20 */	blr 
