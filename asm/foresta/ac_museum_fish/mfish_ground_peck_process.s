lbl_80433C88:
/* 80433C88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80433C8C  7C 08 02 A6 */	mflr r0
/* 80433C90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80433C94  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80433C98  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80433C9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80433CA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80433CA4  7C 7E 1B 78 */	mr r30, r3
/* 80433CA8  3C A0 80 68 */	lis r5, suisou_pos@ha /* 0x80684E7C@ha */
/* 80433CAC  A8 C3 06 30 */	lha r6, 0x630(r3)
/* 80433CB0  38 61 00 0C */	addi r3, r1, 0xc
/* 80433CB4  7C 9F 23 78 */	mr r31, r4
/* 80433CB8  38 05 4E 7C */	addi r0, r5, suisou_pos@l /* 0x80684E7C@l */
/* 80433CBC  1C C6 00 0C */	mulli r6, r6, 0xc
/* 80433CC0  7C 65 1B 78 */	mr r5, r3
/* 80433CC4  38 9E 05 A0 */	addi r4, r30, 0x5a0
/* 80433CC8  7D 00 32 14 */	add r8, r0, r6
/* 80433CCC  80 E8 00 00 */	lwz r7, 0(r8)
/* 80433CD0  80 C8 00 04 */	lwz r6, 4(r8)
/* 80433CD4  80 08 00 08 */	lwz r0, 8(r8)
/* 80433CD8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80433CDC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80433CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80433CE4  4B F8 72 95 */	bl xyz_t_sub
/* 80433CE8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433CEC  C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 80433CF0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433CF4  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80433CF8  4C 41 13 82 */	cror 2, 1, 2
/* 80433CFC  40 82 00 0C */	bne lbl_80433D08
/* 80433D00  FC 60 28 90 */	fmr f3, f5
/* 80433D04  48 00 00 08 */	b lbl_80433D0C
lbl_80433D08:
/* 80433D08  FC 60 28 50 */	fneg f3, f5
lbl_80433D0C:
/* 80433D0C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433D10  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 80433D14  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433D18  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80433D1C  4C 41 13 82 */	cror 2, 1, 2
/* 80433D20  40 82 00 0C */	bne lbl_80433D2C
/* 80433D24  FC 80 30 90 */	fmr f4, f6
/* 80433D28  48 00 00 08 */	b lbl_80433D30
lbl_80433D2C:
/* 80433D2C  FC 80 30 50 */	fneg f4, f6
lbl_80433D30:
/* 80433D30  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 80433D34  3C A0 80 64 */	lis r5, lit_1099@ha /* 0x8064431C@ha */
/* 80433D38  38 83 43 14 */	addi r4, r3, lit_1071@l /* 0x80644314@l */
/* 80433D3C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80433D40  C0 24 00 00 */	lfs f1, 0(r4)
/* 80433D44  3C 60 80 64 */	lis r3, lit_1100@ha /* 0x80644320@ha */
/* 80433D48  C0 45 43 1C */	lfs f2, lit_1099@l(r5)  /* 0x8064431C@l */
/* 80433D4C  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 80433D50  EC 01 00 32 */	fmuls f0, f1, f0
/* 80433D54  C0 23 43 20 */	lfs f1, lit_1100@l(r3)  /* 0x80644320@l */
/* 80433D58  EC 62 00 2A */	fadds f3, f2, f0
/* 80433D5C  40 81 00 24 */	ble lbl_80433D80
/* 80433D60  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433D64  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433D68  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80433D6C  4C 41 13 82 */	cror 2, 1, 2
/* 80433D70  40 82 00 08 */	bne lbl_80433D78
/* 80433D74  48 00 00 2C */	b lbl_80433DA0
lbl_80433D78:
/* 80433D78  FC C0 30 50 */	fneg f6, f6
/* 80433D7C  48 00 00 24 */	b lbl_80433DA0
lbl_80433D80:
/* 80433D80  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433D84  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433D88  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80433D8C  4C 41 13 82 */	cror 2, 1, 2
/* 80433D90  40 82 00 0C */	bne lbl_80433D9C
/* 80433D94  FC C0 28 90 */	fmr f6, f5
/* 80433D98  48 00 00 08 */	b lbl_80433DA0
lbl_80433D9C:
/* 80433D9C  FC C0 28 50 */	fneg f6, f5
lbl_80433DA0:
/* 80433DA0  EC 41 01 B2 */	fmuls f2, f1, f6
/* 80433DA4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80433DA8  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 80433DAC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80433DB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80433DB4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80433DB8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80433DBC  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 80433DC0  4B F8 71 ED */	bl xyz_t_mult_v
/* 80433DC4  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 80433DC8  3C 60 80 64 */	lis r3, lit_1145@ha /* 0x80644328@ha */
/* 80433DCC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80433DD0  C0 43 43 28 */	lfs f2, lit_1145@l(r3)  /* 0x80644328@l */
/* 80433DD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80433DD8  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80433DDC  EC 02 00 2A */	fadds f0, f2, f0
/* 80433DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80433DE4  40 81 00 48 */	ble lbl_80433E2C
/* 80433DE8  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 80433DEC  2C 00 1C 71 */	cmpwi r0, 0x1c71
/* 80433DF0  40 80 00 0C */	bge lbl_80433DFC
/* 80433DF4  38 00 1C 71 */	li r0, 0x1c71
/* 80433DF8  B0 1E 06 12 */	sth r0, 0x612(r30)
lbl_80433DFC:
/* 80433DFC  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80433E00  A8 BE 06 26 */	lha r5, 0x626(r30)
/* 80433E04  38 83 42 5C */	addi r4, r3, lit_471@l /* 0x8064425C@l */
/* 80433E08  C0 24 00 00 */	lfs f1, 0(r4)
/* 80433E0C  3C 60 80 64 */	lis r3, lit_1146@ha /* 0x8064432C@ha */
/* 80433E10  38 05 00 01 */	addi r0, r5, 1
/* 80433E14  C0 43 43 2C */	lfs f2, lit_1146@l(r3)  /* 0x8064432C@l */
/* 80433E18  FC 60 08 90 */	fmr f3, f1
/* 80433E1C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80433E20  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80433E24  4B F8 74 71 */	bl add_calc2
/* 80433E28  48 00 00 7C */	b lbl_80433EA4
lbl_80433E2C:
/* 80433E2C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80433E30  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 80433E34  7C 03 00 50 */	subf r0, r3, r0
/* 80433E38  7C 00 07 35 */	extsh. r0, r0
/* 80433E3C  40 81 00 28 */	ble lbl_80433E64
/* 80433E40  3C C0 80 64 */	lis r6, lit_839@ha /* 0x806442D4@ha */
/* 80433E44  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 80433E48  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x80644304@ha */
/* 80433E4C  C0 26 42 D4 */	lfs f1, lit_839@l(r6)  /* 0x806442D4@l */
/* 80433E50  C0 45 42 5C */	lfs f2, lit_471@l(r5)  /* 0x8064425C@l */
/* 80433E54  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80433E58  C0 64 43 04 */	lfs f3, lit_1067@l(r4)  /* 0x80644304@l */
/* 80433E5C  4B F8 74 39 */	bl add_calc2
/* 80433E60  48 00 00 44 */	b lbl_80433EA4
lbl_80433E64:
/* 80433E64  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433E68  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80433E6C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80433E74  40 81 00 14 */	ble lbl_80433E88
/* 80433E78  3C 60 80 64 */	lis r3, lit_1147@ha /* 0x80644330@ha */
/* 80433E7C  C0 03 43 30 */	lfs f0, lit_1147@l(r3)  /* 0x80644330@l */
/* 80433E80  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80433E84  48 00 00 20 */	b lbl_80433EA4
lbl_80433E88:
/* 80433E88  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 80433E8C  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80433E90  38 A3 42 D4 */	addi r5, r3, lit_839@l /* 0x806442D4@l */
/* 80433E94  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 80433E98  C0 25 00 00 */	lfs f1, 0(r5)
/* 80433E9C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80433EA0  4B F8 74 39 */	bl add_calc0
lbl_80433EA4:
/* 80433EA4  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 80433EA8  2C 00 0A AA */	cmpwi r0, 0xaaa
/* 80433EAC  40 80 00 0C */	bge lbl_80433EB8
/* 80433EB0  38 00 0A AA */	li r0, 0xaaa
/* 80433EB4  B0 1E 06 12 */	sth r0, 0x612(r30)
lbl_80433EB8:
/* 80433EB8  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80433EBC  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80433EC0  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 80433EC4  C8 44 42 54 */	lfd f2, lit_470@l(r4)  /* 0x80644254@l */
/* 80433EC8  C8 85 00 00 */	lfd f4, 0(r5)
/* 80433ECC  C8 65 00 00 */	lfd f3, 0(r5)
/* 80433ED0  FC 20 20 34 */	frsqrte f1, f4
/* 80433ED4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80433ED8  FC 01 00 72 */	fmul f0, f1, f1
/* 80433EDC  FC 23 00 72 */	fmul f1, f3, f1
/* 80433EE0  FC 04 00 32 */	fmul f0, f4, f0
/* 80433EE4  FC 02 00 28 */	fsub f0, f2, f0
/* 80433EE8  FC 21 00 32 */	fmul f1, f1, f0
/* 80433EEC  FC 01 00 72 */	fmul f0, f1, f1
/* 80433EF0  FC 23 00 72 */	fmul f1, f3, f1
/* 80433EF4  FC 04 00 32 */	fmul f0, f4, f0
/* 80433EF8  FC 02 00 28 */	fsub f0, f2, f0
/* 80433EFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80433F00  FC 01 00 72 */	fmul f0, f1, f1
/* 80433F04  FC 23 00 72 */	fmul f1, f3, f1
/* 80433F08  FC 04 00 32 */	fmul f0, f4, f0
/* 80433F0C  FC 02 00 28 */	fsub f0, f2, f0
/* 80433F10  FC 01 00 32 */	fmul f0, f1, f0
/* 80433F14  FC 04 00 32 */	fmul f0, f4, f0
/* 80433F18  FC 00 00 18 */	frsp f0, f0
/* 80433F1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80433F20  C3 E1 00 08 */	lfs f31, 8(r1)
/* 80433F24  4B F8 6B 79 */	bl cos_s
/* 80433F28  C0 1E 05 F0 */	lfs f0, 0x5f0(r30)
/* 80433F2C  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 80433F30  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80433F34  C0 64 43 08 */	lfs f3, lit_1068@l(r4)  /* 0x80644308@l */
/* 80433F38  EC 20 00 72 */	fmuls f1, f0, f1
/* 80433F3C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80433F40  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80433F44  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80433F48  C0 83 42 AC */	lfs f4, lit_666@l(r3)  /* 0x806442AC@l */
/* 80433F4C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80433F50  4B F8 72 61 */	bl add_calc
/* 80433F54  7F C3 F3 78 */	mr r3, r30
/* 80433F58  7F E4 FB 78 */	mr r4, r31
/* 80433F5C  4B FF DF 99 */	bl mfish_dummy_process
/* 80433F60  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80433F64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80433F68  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80433F6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80433F70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80433F74  7C 08 03 A6 */	mtlr r0
/* 80433F78  38 21 00 30 */	addi r1, r1, 0x30
/* 80433F7C  4E 80 00 20 */	blr 
