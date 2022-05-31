lbl_8038EAB8:
/* 8038EAB8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038EABC  7C 08 02 A6 */	mflr r0
/* 8038EAC0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038EAC4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8038EAC8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8038EACC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8038EAD0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8038EAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8038EAD8  4B D0 C3 F9 */	bl func_8009AED0
/* 8038EADC  C0 44 00 44 */	lfs f2, 0x44(r4)
/* 8038EAE0  7C 7D 1B 78 */	mr r29, r3
/* 8038EAE4  C0 05 00 04 */	lfs f0, 4(r5)
/* 8038EAE8  7C FF 3B 78 */	mr r31, r7
/* 8038EAEC  7C 9E 23 78 */	mr r30, r4
/* 8038EAF0  C0 27 00 10 */	lfs f1, 0x10(r7)
/* 8038EAF4  EF E2 00 2A */	fadds f31, f2, f0
/* 8038EAF8  7C BC 2B 78 */	mr r28, r5
/* 8038EAFC  7C C3 33 78 */	mr r3, r6
/* 8038EB00  7F E4 FB 78 */	mr r4, r31
/* 8038EB04  4B FF C4 E1 */	bl mCoBG_JudgePointInCircle_Xyz
/* 8038EB08  2C 03 00 00 */	cmpwi r3, 0
/* 8038EB0C  40 82 01 C0 */	bne lbl_8038ECCC
/* 8038EB10  3C 60 80 64 */	lis r3, lit_2058@ha /* 0x80641A78@ha */
/* 8038EB14  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8038EB18  C0 03 1A 78 */	lfs f0, lit_2058@l(r3)  /* 0x80641A78@l */
/* 8038EB1C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8038EB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038EB24  4C 41 13 82 */	cror 2, 1, 2
/* 8038EB28  40 82 01 A4 */	bne lbl_8038ECCC
/* 8038EB2C  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8038EB30  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038EB34  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8038EB38  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8038EB3C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8038EB40  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8038EB44  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038EB48  EC 23 08 28 */	fsubs f1, f3, f1
/* 8038EB4C  EC 82 00 B2 */	fmuls f4, f2, f2
/* 8038EB50  EC 61 00 72 */	fmuls f3, f1, f1
/* 8038EB54  EF E4 18 2A */	fadds f31, f4, f3
/* 8038EB58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8038EB5C  40 81 00 68 */	ble lbl_8038EBC4
/* 8038EB60  FC 60 F8 34 */	frsqrte f3, f31
/* 8038EB64  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 8038EB68  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 8038EB6C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 8038EB70  C8 A4 00 00 */	lfd f5, 0(r4)
/* 8038EB74  FC 03 00 F2 */	fmul f0, f3, f3
/* 8038EB78  C8 83 19 BC */	lfd f4, lit_588@l(r3)  /* 0x806419BC@l */
/* 8038EB7C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8038EB80  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EB84  FC 04 00 28 */	fsub f0, f4, f0
/* 8038EB88  FC 63 00 32 */	fmul f3, f3, f0
/* 8038EB8C  FC 03 00 F2 */	fmul f0, f3, f3
/* 8038EB90  FC 65 00 F2 */	fmul f3, f5, f3
/* 8038EB94  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EB98  FC 04 00 28 */	fsub f0, f4, f0
/* 8038EB9C  FC 63 00 32 */	fmul f3, f3, f0
/* 8038EBA0  FC 03 00 F2 */	fmul f0, f3, f3
/* 8038EBA4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8038EBA8  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EBAC  FC 04 00 28 */	fsub f0, f4, f0
/* 8038EBB0  FC 03 00 32 */	fmul f0, f3, f0
/* 8038EBB4  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EBB8  FC 00 00 18 */	frsp f0, f0
/* 8038EBBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038EBC0  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_8038EBC4:
/* 8038EBC4  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8038EBC8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8038EBCC  EC 03 00 2A */	fadds f0, f3, f0
/* 8038EBD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8038EBD4  40 80 00 A8 */	bge lbl_8038EC7C
/* 8038EBD8  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8038EBDC  48 07 D4 25 */	bl atans_table
/* 8038EBE0  FC 00 FA 10 */	fabs f0, f31
/* 8038EBE4  C0 9C 00 00 */	lfs f4, 0(r28)
/* 8038EBE8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8038EBEC  3C 80 80 64 */	lis r4, lit_448@ha /* 0x806419A8@ha */
/* 8038EBF0  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8038EBF4  7C 66 1B 78 */	mr r6, r3
/* 8038EBF8  FC 20 00 18 */	frsp f1, f0
/* 8038EBFC  C0 04 19 A8 */	lfs f0, lit_448@l(r4)  /* 0x806419A8@l */
/* 8038EC00  EC 84 10 28 */	fsubs f4, f4, f2
/* 8038EC04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8038EC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038EC0C  EC 23 10 28 */	fsubs f1, f3, f2
/* 8038EC10  40 80 00 10 */	bge lbl_8038EC20
/* 8038EC14  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038EC18  C0 03 19 B0 */	lfs f0, lit_522@l(r3)  /* 0x806419B0@l */
/* 8038EC1C  48 00 00 10 */	b lbl_8038EC2C
lbl_8038EC20:
/* 8038EC20  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038EC24  C0 03 19 B0 */	lfs f0, lit_522@l(r3)  /* 0x806419B0@l */
/* 8038EC28  EC 00 F8 24 */	fdivs f0, f0, f31
lbl_8038EC2C:
/* 8038EC2C  EC 44 00 32 */	fmuls f2, f4, f0
/* 8038EC30  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038EC34  EC 01 00 32 */	fmuls f0, f1, f0
/* 8038EC38  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038EC3C  7F C3 F3 78 */	mr r3, r30
/* 8038EC40  38 9E 00 58 */	addi r4, r30, 0x58
/* 8038EC44  EC 42 07 B2 */	fmuls f2, f2, f30
/* 8038EC48  38 A1 00 14 */	addi r5, r1, 0x14
/* 8038EC4C  EC 21 07 B2 */	fmuls f1, f1, f30
/* 8038EC50  38 E0 00 00 */	li r7, 0
/* 8038EC54  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8038EC58  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8038EC5C  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8038EC60  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8038EC64  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8038EC68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038EC6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8038EC70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038EC74  4B FF 7B 65 */	bl mCoBG_RegistCollisionWallInfo
/* 8038EC78  48 00 00 54 */	b lbl_8038ECCC
lbl_8038EC7C:
/* 8038EC7C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038EC80  EC 7F 00 28 */	fsubs f3, f31, f0
/* 8038EC84  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038EC88  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8038EC8C  40 81 00 40 */	ble lbl_8038ECCC
/* 8038EC90  3C 60 80 64 */	lis r3, lit_2059@ha /* 0x80641A7C@ha */
/* 8038EC94  C0 03 1A 7C */	lfs f0, lit_2059@l(r3)  /* 0x80641A7C@l */
/* 8038EC98  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8038EC9C  40 80 00 30 */	bge lbl_8038ECCC
/* 8038ECA0  48 07 D3 61 */	bl atans_table
/* 8038ECA4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8038ECA8  7C 66 1B 78 */	mr r6, r3
/* 8038ECAC  7F C3 F3 78 */	mr r3, r30
/* 8038ECB0  38 9E 00 58 */	addi r4, r30, 0x58
/* 8038ECB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038ECB8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8038ECBC  38 E0 00 00 */	li r7, 0
/* 8038ECC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8038ECC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038ECC8  4B FF 7B 11 */	bl mCoBG_RegistCollisionWallInfo
lbl_8038ECCC:
/* 8038ECCC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8038ECD0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8038ECD4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8038ECD8  39 61 00 30 */	addi r11, r1, 0x30
/* 8038ECDC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8038ECE0  4B D0 C2 3D */	bl func_8009AF1C
/* 8038ECE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038ECE8  7C 08 03 A6 */	mtlr r0
/* 8038ECEC  38 21 00 50 */	addi r1, r1, 0x50
/* 8038ECF0  4E 80 00 20 */	blr 
