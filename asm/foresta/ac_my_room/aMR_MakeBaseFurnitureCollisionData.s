lbl_8047A4A4:
/* 8047A4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047A4A8  7C 08 02 A6 */	mflr r0
/* 8047A4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047A4B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047A4B4  7C BF 2B 78 */	mr r31, r5
/* 8047A4B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8047A4BC  7C 7E 1B 78 */	mr r30, r3
/* 8047A4C0  7C 83 23 78 */	mr r3, r4
/* 8047A4C4  4B FF 5C DD */	bl func_804701A0
/* 8047A4C8  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8047A4CC  3C 80 80 68 */	lis r4, aMR_furniture_size_table@ha /* 0x8068739C@ha */
/* 8047A4D0  38 84 73 9C */	addi r4, r4, aMR_furniture_size_table@l /* 0x8068739C@l */
/* 8047A4D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8047A4D8  7C 00 07 34 */	extsh r0, r0
/* 8047A4DC  C0 C3 00 20 */	lfs f6, 0x20(r3)
/* 8047A4E0  54 00 10 3A */	slwi r0, r0, 2
/* 8047A4E4  7C 64 00 2E */	lwzx r3, r4, r0
/* 8047A4E8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8047A4EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8047A4F0  EC A1 00 B2 */	fmuls f5, f1, f2
/* 8047A4F4  C0 43 00 00 */	lfs f2, 0(r3)
/* 8047A4F8  C0 63 00 08 */	lfs f3, 8(r3)
/* 8047A4FC  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 8047A500  FC E0 28 50 */	fneg f7, f5
/* 8047A504  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 8047A508  D0 FE 00 00 */	stfs f7, 0(r30)
/* 8047A50C  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8047A510  EC E2 01 F2 */	fmuls f7, f2, f7
/* 8047A514  FC E0 38 50 */	fneg f7, f7
/* 8047A518  D0 FE 00 04 */	stfs f7, 4(r30)
/* 8047A51C  C0 FF 00 00 */	lfs f7, 0(r31)
/* 8047A520  EC E0 01 F2 */	fmuls f7, f0, f7
/* 8047A524  D0 FE 00 08 */	stfs f7, 8(r30)
/* 8047A528  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8047A52C  EC E2 01 F2 */	fmuls f7, f2, f7
/* 8047A530  FC E0 38 50 */	fneg f7, f7
/* 8047A534  D0 FE 00 0C */	stfs f7, 0xc(r30)
/* 8047A538  C0 FF 00 04 */	lfs f7, 4(r31)
/* 8047A53C  EC E6 01 F2 */	fmuls f7, f6, f7
/* 8047A540  D0 FE 00 18 */	stfs f7, 0x18(r30)
/* 8047A544  D0 9E 00 1C */	stfs f4, 0x1c(r30)
/* 8047A548  C0 FF 00 00 */	lfs f7, 0(r31)
/* 8047A54C  EC E1 01 F2 */	fmuls f7, f1, f7
/* 8047A550  FC E0 38 50 */	fneg f7, f7
/* 8047A554  D0 FE 00 28 */	stfs f7, 0x28(r30)
/* 8047A558  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8047A55C  EC E2 01 F2 */	fmuls f7, f2, f7
/* 8047A560  FC E0 38 50 */	fneg f7, f7
/* 8047A564  D0 FE 00 2C */	stfs f7, 0x2c(r30)
/* 8047A568  C0 FF 00 00 */	lfs f7, 0(r31)
/* 8047A56C  EC E1 01 F2 */	fmuls f7, f1, f7
/* 8047A570  FC E0 38 50 */	fneg f7, f7
/* 8047A574  D0 FE 00 20 */	stfs f7, 0x20(r30)
/* 8047A578  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8047A57C  EC E3 01 F2 */	fmuls f7, f3, f7
/* 8047A580  D0 FE 00 24 */	stfs f7, 0x24(r30)
/* 8047A584  C0 FF 00 04 */	lfs f7, 4(r31)
/* 8047A588  EC E6 01 F2 */	fmuls f7, f6, f7
/* 8047A58C  D0 FE 00 38 */	stfs f7, 0x38(r30)
/* 8047A590  D0 BE 00 3C */	stfs f5, 0x3c(r30)
/* 8047A594  C0 FF 00 00 */	lfs f7, 0(r31)
/* 8047A598  EC 21 01 F2 */	fmuls f1, f1, f7
/* 8047A59C  FC 20 08 50 */	fneg f1, f1
/* 8047A5A0  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 8047A5A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8047A5A8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8047A5AC  D0 3E 00 4C */	stfs f1, 0x4c(r30)
/* 8047A5B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8047A5B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8047A5B8  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 8047A5BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8047A5C0  EC 23 00 72 */	fmuls f1, f3, f1
/* 8047A5C4  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 8047A5C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8047A5CC  EC 26 00 72 */	fmuls f1, f6, f1
/* 8047A5D0  D0 3E 00 58 */	stfs f1, 0x58(r30)
/* 8047A5D4  D0 9E 00 5C */	stfs f4, 0x5c(r30)
/* 8047A5D8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8047A5DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8047A5E0  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 8047A5E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8047A5E8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8047A5EC  FC 20 08 50 */	fneg f1, f1
/* 8047A5F0  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 8047A5F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8047A5F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047A5FC  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8047A600  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8047A604  EC 03 00 32 */	fmuls f0, f3, f0
/* 8047A608  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8047A60C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8047A610  EC 06 00 32 */	fmuls f0, f6, f0
/* 8047A614  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8047A618  D0 BE 00 7C */	stfs f5, 0x7c(r30)
/* 8047A61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047A620  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047A624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047A628  7C 08 03 A6 */	mtlr r0
/* 8047A62C  38 21 00 10 */	addi r1, r1, 0x10
/* 8047A630  4E 80 00 20 */	blr 
