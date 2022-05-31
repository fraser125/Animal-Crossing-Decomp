lbl_803B7214:
/* 803B7214  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B7218  7C 08 02 A6 */	mflr r0
/* 803B721C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B7220  3C A0 80 64 */	lis r5, lit_471@ha /* 0x806423EC@ha */
/* 803B7224  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B7228  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B722C  3C C4 00 02 */	addis r6, r4, 2
/* 803B7230  3C 00 43 30 */	lis r0, 0x4330
/* 803B7234  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803B7238  3C 80 80 64 */	lis r4, lit_1069@ha /* 0x806424F4@ha */
/* 803B723C  3C E0 80 64 */	lis r7, lit_615@ha /* 0x8064246C@ha */
/* 803B7240  C8 45 23 EC */	lfd f2, lit_471@l(r5)  /* 0x806423EC@l */
/* 803B7244  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803B7248  7C 7F 1B 78 */	mr r31, r3
/* 803B724C  C0 04 24 F4 */	lfs f0, lit_1069@l(r4)  /* 0x806424F4@l */
/* 803B7250  80 C6 61 1C */	lwz r6, 0x611c(r6)
/* 803B7254  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B7258  3C C6 FF FF */	addis r6, r6, 0xffff
/* 803B725C  C0 67 24 6C */	lfs f3, lit_615@l(r7)  /* 0x8064246C@l */
/* 803B7260  38 06 57 40 */	addi r0, r6, 0x5740
/* 803B7264  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B7268  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B726C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803B7270  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B7274  EC 01 00 24 */	fdivs f0, f1, f0
/* 803B7278  EC 03 00 32 */	fmuls f0, f3, f0
/* 803B727C  FC 00 00 1E */	fctiwz f0, f0
/* 803B7280  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B7284  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 803B7288  7F C3 F3 78 */	mr r3, r30
/* 803B728C  48 00 38 65 */	bl sin_s
/* 803B7290  7F C3 F3 78 */	mr r3, r30
/* 803B7294  48 00 38 09 */	bl cos_s
/* 803B7298  7F E3 FB 78 */	mr r3, r31
/* 803B729C  4B FF F9 81 */	bl mEnv_MakeShadowInfo
/* 803B72A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B72A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B72A8  3C 63 00 02 */	addis r3, r3, 2
/* 803B72AC  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 803B72B0  28 03 00 00 */	cmplwi r3, 0
/* 803B72B4  41 82 00 F8 */	beq lbl_803B73AC
/* 803B72B8  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 803B72BC  38 61 00 0C */	addi r3, r1, 0xc
/* 803B72C0  38 81 00 08 */	addi r4, r1, 8
/* 803B72C4  7D 89 03 A6 */	mtctr r12
/* 803B72C8  4E 80 04 21 */	bctrl 
/* 803B72CC  2C 03 00 00 */	cmpwi r3, 0
/* 803B72D0  41 82 00 DC */	beq lbl_803B73AC
/* 803B72D4  80 01 00 08 */	lwz r0, 8(r1)
/* 803B72D8  2C 00 00 01 */	cmpwi r0, 1
/* 803B72DC  40 82 00 D0 */	bne lbl_803B73AC
/* 803B72E0  88 A1 00 0E */	lbz r5, 0xe(r1)
/* 803B72E4  3C C0 43 30 */	lis r6, 0x4330
/* 803B72E8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x806423EC@ha */
/* 803B72EC  88 01 00 0D */	lbz r0, 0xd(r1)
/* 803B72F0  39 03 23 EC */	addi r8, r3, lit_471@l /* 0x806423EC@l */
/* 803B72F4  88 81 00 0C */	lbz r4, 0xc(r1)
/* 803B72F8  7C 60 2A 14 */	add r3, r0, r5
/* 803B72FC  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 803B7300  7C 64 1A 14 */	add r3, r4, r3
/* 803B7304  3C 80 80 64 */	lis r4, lit_1033@ha /* 0x806424EC@ha */
/* 803B7308  6C 67 80 00 */	xoris r7, r3, 0x8000
/* 803B730C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 803B7310  38 A4 24 EC */	addi r5, r4, lit_1033@l /* 0x806424EC@l */
/* 803B7314  3C 80 80 64 */	lis r4, lit_1070@ha /* 0x806424F8@ha */
/* 803B7318  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 803B731C  3C 60 80 64 */	lis r3, lit_711@ha /* 0x80642474@ha */
/* 803B7320  C8 28 00 00 */	lfd f1, 0(r8)
/* 803B7324  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803B7328  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B732C  EC 80 08 28 */	fsubs f4, f0, f1
/* 803B7330  C0 23 24 74 */	lfs f1, lit_711@l(r3)  /* 0x80642474@l */
/* 803B7334  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803B7338  C8 65 00 00 */	lfd f3, 0(r5)
/* 803B733C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803B7340  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 803B7344  C0 44 24 F8 */	lfs f2, lit_1070@l(r4)  /* 0x806424F8@l */
/* 803B7348  EC A0 18 28 */	fsubs f5, f0, f3
/* 803B734C  40 81 00 08 */	ble lbl_803B7354
/* 803B7350  48 00 00 08 */	b lbl_803B7358
lbl_803B7354:
/* 803B7354  FC 20 20 90 */	fmr f1, f4
lbl_803B7358:
/* 803B7358  3C 80 80 64 */	lis r4, lit_711@ha /* 0x80642474@ha */
/* 803B735C  3C 60 80 64 */	lis r3, lit_1029@ha /* 0x806424E0@ha */
/* 803B7360  C0 04 24 74 */	lfs f0, lit_711@l(r4)  /* 0x80642474@l */
/* 803B7364  C0 63 24 E0 */	lfs f3, lit_1029@l(r3)  /* 0x806424E0@l */
/* 803B7368  EC 01 00 24 */	fdivs f0, f1, f0
/* 803B736C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B7370  EC A5 00 2A */	fadds f5, f5, f0
/* 803B7374  FC 05 18 40 */	fcmpo cr0, f5, f3
/* 803B7378  40 81 00 08 */	ble lbl_803B7380
/* 803B737C  48 00 00 08 */	b lbl_803B7384
lbl_803B7380:
/* 803B7380  FC 60 28 90 */	fmr f3, f5
lbl_803B7384:
/* 803B7384  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B7388  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B738C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803B7390  40 80 00 08 */	bge lbl_803B7398
/* 803B7394  48 00 00 08 */	b lbl_803B739C
lbl_803B7398:
/* 803B7398  FC 00 18 90 */	fmr f0, f3
lbl_803B739C:
/* 803B739C  FC 00 00 1E */	fctiwz f0, f0
/* 803B73A0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803B73A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B73A8  98 1F 00 C4 */	stb r0, 0xc4(r31)
lbl_803B73AC:
/* 803B73AC  48 02 03 2D */	bl mNPS_schedule_manager
/* 803B73B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B73B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803B73B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803B73BC  7C 08 03 A6 */	mtlr r0
/* 803B73C0  38 21 00 30 */	addi r1, r1, 0x30
/* 803B73C4  4E 80 00 20 */	blr 
