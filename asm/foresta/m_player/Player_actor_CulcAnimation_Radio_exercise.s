lbl_80506CC4:
/* 80506CC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80506CC8  7C 08 02 A6 */	mflr r0
/* 80506CCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80506CD0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80506CD4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80506CD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80506CDC  4B B9 41 F9 */	bl func_8009AED4
/* 80506CE0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80506CE4  83 A3 12 44 */	lwz r29, 0x1244(r3)
/* 80506CE8  C3 E4 65 68 */	lfs f31, lit_604@l(r4)  /* 0x80646568@l */
/* 80506CEC  7C 7F 1B 78 */	mr r31, r3
/* 80506CF0  48 12 7A C5 */	bl sAdo_GetSoundFrameCounter
/* 80506CF4  7C 7E 1B 78 */	mr r30, r3
/* 80506CF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80506CFC  48 12 77 15 */	bl sAdos_GetRadioCounter
/* 80506D00  2C 03 00 00 */	cmpwi r3, 0
/* 80506D04  40 82 00 34 */	bne lbl_80506D38
/* 80506D08  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 80506D0C  3C 00 43 30 */	lis r0, 0x4330
/* 80506D10  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 80506D14  3C A0 80 65 */	lis r5, lit_16515@ha /* 0x806485B0@ha */
/* 80506D18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80506D1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80506D20  C8 24 6A 54 */	lfd f1, lit_1627@l(r4)  /* 0x80646A54@l */
/* 80506D24  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80506D28  C0 45 85 B0 */	lfs f2, lit_16515@l(r5)  /* 0x806485B0@l */
/* 80506D2C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80506D30  EC 00 08 28 */	fsubs f0, f0, f1
/* 80506D34  EF E2 00 32 */	fmuls f31, f2, f0
lbl_80506D38:
/* 80506D38  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80506D3C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 80506D40  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80506D44  4C 40 13 82 */	cror 2, 0, 2
/* 80506D48  40 82 00 0C */	bne lbl_80506D54
/* 80506D4C  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 80506D50  C3 E3 6C 4C */	lfs f31, lit_2671@l(r3)  /* 0x80646C4C@l */
lbl_80506D54:
/* 80506D54  7C 1E E8 40 */	cmplw r30, r29
/* 80506D58  41 82 00 48 */	beq lbl_80506DA0
/* 80506D5C  40 81 00 0C */	ble lbl_80506D68
/* 80506D60  7C 1D F0 50 */	subf r0, r29, r30
/* 80506D64  48 00 00 0C */	b lbl_80506D70
lbl_80506D68:
/* 80506D68  20 1D FF FF */	subfic r0, r29, -1
/* 80506D6C  7C 1E 02 14 */	add r0, r30, r0
lbl_80506D70:
/* 80506D70  28 00 00 05 */	cmplwi r0, 5
/* 80506D74  40 81 00 08 */	ble lbl_80506D7C
/* 80506D78  38 00 00 05 */	li r0, 5
lbl_80506D7C:
/* 80506D7C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80506D80  3C 00 43 30 */	lis r0, 0x4330
/* 80506D84  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80506D88  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 80506D8C  C8 24 6A 54 */	lfd f1, lit_1627@l(r4)  /* 0x80646A54@l */
/* 80506D90  90 01 00 18 */	stw r0, 0x18(r1)
/* 80506D94  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80506D98  EC 00 08 28 */	fsubs f0, f0, f1
/* 80506D9C  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80506DA0:
/* 80506DA0  80 1F 0D 18 */	lwz r0, 0xd18(r31)
/* 80506DA4  3C A0 80 6A */	lis r5, data_16513@ha /* 0x8069E7CC@ha */
/* 80506DA8  3C 80 80 65 */	lis r4, lit_6903@ha /* 0x80648100@ha */
/* 80506DAC  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 80506DB0  54 00 10 3A */	slwi r0, r0, 2
/* 80506DB4  38 A5 E7 CC */	addi r5, r5, data_16513@l /* 0x8069E7CC@l */
/* 80506DB8  7C 05 04 2E */	lfsx f0, r5, r0
/* 80506DBC  3B BF 01 80 */	addi r29, r31, 0x180
/* 80506DC0  C0 63 6C 4C */	lfs f3, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 80506DC4  7F A3 EB 78 */	mr r3, r29
/* 80506DC8  EF FF 00 32 */	fmuls f31, f31, f0
/* 80506DCC  C0 44 81 00 */	lfs f2, lit_6903@l(r4)  /* 0x80648100@l */
/* 80506DD0  FC 20 F8 90 */	fmr f1, f31
/* 80506DD4  4B EB 44 C1 */	bl add_calc2
/* 80506DD8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80506DDC  7F E3 FB 78 */	mr r3, r31
/* 80506DE0  38 81 00 08 */	addi r4, r1, 8
/* 80506DE4  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 80506DE8  4B FC F8 05 */	bl Player_actor_CulcAnimation_Base3
/* 80506DEC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80506DF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80506DF4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80506DF8  4B B9 41 29 */	bl func_8009AF20
/* 80506DFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80506E00  7C 08 03 A6 */	mtlr r0
/* 80506E04  38 21 00 40 */	addi r1, r1, 0x40
/* 80506E08  4E 80 00 20 */	blr 
