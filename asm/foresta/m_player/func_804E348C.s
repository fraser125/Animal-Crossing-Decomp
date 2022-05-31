lbl_804E348C:
/* 804E348C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E3490  7C 08 02 A6 */	mflr r0
/* 804E3494  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E3498  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E349C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E34A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E34A4  7C 7F 1B 78 */	mr r31, r3
/* 804E34A8  80 03 11 70 */	lwz r0, 0x1170(r3)
/* 804E34AC  2C 00 00 00 */	cmpwi r0, 0
/* 804E34B0  41 82 00 38 */	beq lbl_804E34E8
/* 804E34B4  C0 3F 11 54 */	lfs f1, 0x1154(r31)
/* 804E34B8  C0 1F 11 48 */	lfs f0, 0x1148(r31)
/* 804E34BC  C0 7F 11 58 */	lfs f3, 0x1158(r31)
/* 804E34C0  C0 5F 11 4C */	lfs f2, 0x114c(r31)
/* 804E34C4  EC 81 00 28 */	fsubs f4, f1, f0
/* 804E34C8  C0 3F 11 5C */	lfs f1, 0x115c(r31)
/* 804E34CC  C0 1F 11 50 */	lfs f0, 0x1150(r31)
/* 804E34D0  EC 43 10 28 */	fsubs f2, f3, f2
/* 804E34D4  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 804E34D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E34DC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804E34E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E34E4  48 00 00 24 */	b lbl_804E3508
lbl_804E34E8:
/* 804E34E8  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804E34EC  38 A3 F0 50 */	addi r5, r3, data_8065F050@l /* 0x8065F050@l */
/* 804E34F0  80 85 00 00 */	lwz r4, 0(r5)
/* 804E34F4  80 65 00 04 */	lwz r3, 4(r5)
/* 804E34F8  80 05 00 08 */	lwz r0, 8(r5)
/* 804E34FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E3500  90 61 00 14 */	stw r3, 0x14(r1)
/* 804E3504  90 01 00 18 */	stw r0, 0x18(r1)
lbl_804E3508:
/* 804E3508  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E350C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E3510  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3514  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E3518  40 82 00 1C */	bne lbl_804E3534
/* 804E351C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E3520  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E3524  40 82 00 10 */	bne lbl_804E3534
/* 804E3528  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E352C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E3530  41 82 01 28 */	beq lbl_804E3658
lbl_804E3534:
/* 804E3534  C3 E1 00 18 */	lfs f31, 0x18(r1)
/* 804E3538  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804E353C  FC 40 F8 90 */	fmr f2, f31
/* 804E3540  4B F2 57 59 */	bl Math3DVecLengthSquare2D
/* 804E3544  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804E3548  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E354C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3550  EC 62 00 B2 */	fmuls f3, f2, f2
/* 804E3554  EC C1 18 2A */	fadds f6, f1, f3
/* 804E3558  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 804E355C  40 81 00 68 */	ble lbl_804E35C4
/* 804E3560  FC 60 30 34 */	frsqrte f3, f6
/* 804E3564  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E3568  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E356C  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E3570  C8 A4 00 00 */	lfd f5, 0(r4)
/* 804E3574  FC 03 00 F2 */	fmul f0, f3, f3
/* 804E3578  C8 83 69 FC */	lfd f4, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E357C  FC 65 00 F2 */	fmul f3, f5, f3
/* 804E3580  FC 06 00 32 */	fmul f0, f6, f0
/* 804E3584  FC 04 00 28 */	fsub f0, f4, f0
/* 804E3588  FC 63 00 32 */	fmul f3, f3, f0
/* 804E358C  FC 03 00 F2 */	fmul f0, f3, f3
/* 804E3590  FC 65 00 F2 */	fmul f3, f5, f3
/* 804E3594  FC 06 00 32 */	fmul f0, f6, f0
/* 804E3598  FC 04 00 28 */	fsub f0, f4, f0
/* 804E359C  FC 63 00 32 */	fmul f3, f3, f0
/* 804E35A0  FC 03 00 F2 */	fmul f0, f3, f3
/* 804E35A4  FC 65 00 F2 */	fmul f3, f5, f3
/* 804E35A8  FC 06 00 32 */	fmul f0, f6, f0
/* 804E35AC  FC 04 00 28 */	fsub f0, f4, f0
/* 804E35B0  FC 03 00 32 */	fmul f0, f3, f0
/* 804E35B4  FC 06 00 32 */	fmul f0, f6, f0
/* 804E35B8  FC 00 00 18 */	frsp f0, f0
/* 804E35BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E35C0  C0 C1 00 0C */	lfs f6, 0xc(r1)
lbl_804E35C4:
/* 804E35C4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E35C8  D0 DF 11 60 */	stfs f6, 0x1160(r31)
/* 804E35CC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E35D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E35D4  40 81 00 68 */	ble lbl_804E363C
/* 804E35D8  FC 60 08 34 */	frsqrte f3, f1
/* 804E35DC  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E35E0  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E35E4  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E35E8  C8 A4 00 00 */	lfd f5, 0(r4)
/* 804E35EC  FC 03 00 F2 */	fmul f0, f3, f3
/* 804E35F0  C8 83 69 FC */	lfd f4, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E35F4  FC 65 00 F2 */	fmul f3, f5, f3
/* 804E35F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804E35FC  FC 04 00 28 */	fsub f0, f4, f0
/* 804E3600  FC 63 00 32 */	fmul f3, f3, f0
/* 804E3604  FC 03 00 F2 */	fmul f0, f3, f3
/* 804E3608  FC 65 00 F2 */	fmul f3, f5, f3
/* 804E360C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E3610  FC 04 00 28 */	fsub f0, f4, f0
/* 804E3614  FC 63 00 32 */	fmul f3, f3, f0
/* 804E3618  FC 03 00 F2 */	fmul f0, f3, f3
/* 804E361C  FC 65 00 F2 */	fmul f3, f5, f3
/* 804E3620  FC 01 00 32 */	fmul f0, f1, f0
/* 804E3624  FC 04 00 28 */	fsub f0, f4, f0
/* 804E3628  FC 03 00 32 */	fmul f0, f3, f0
/* 804E362C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E3630  FC 00 00 18 */	frsp f0, f0
/* 804E3634  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E3638  C0 21 00 08 */	lfs f1, 8(r1)
lbl_804E363C:
/* 804E363C  4B F2 89 C5 */	bl atans_table
/* 804E3640  FC 20 F8 90 */	fmr f1, f31
/* 804E3644  B0 7F 11 64 */	sth r3, 0x1164(r31)
/* 804E3648  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804E364C  4B F2 89 B5 */	bl atans_table
/* 804E3650  B0 7F 11 66 */	sth r3, 0x1166(r31)
/* 804E3654  48 00 00 14 */	b lbl_804E3668
lbl_804E3658:
/* 804E3658  D0 3F 11 60 */	stfs f1, 0x1160(r31)
/* 804E365C  38 00 00 00 */	li r0, 0
/* 804E3660  B0 1F 11 64 */	sth r0, 0x1164(r31)
/* 804E3664  B0 1F 11 66 */	sth r0, 0x1166(r31)
lbl_804E3668:
/* 804E3668  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E366C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E3670  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E3674  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E3678  7C 08 03 A6 */	mtlr r0
/* 804E367C  38 21 00 40 */	addi r1, r1, 0x40
/* 804E3680  4E 80 00 20 */	blr 
