lbl_8055F4C8:
/* 8055F4C8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8055F4CC  7C 08 02 A6 */	mflr r0
/* 8055F4D0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8055F4D4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8055F4D8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8055F4DC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8055F4E0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8055F4E4  39 61 00 60 */	addi r11, r1, 0x60
/* 8055F4E8  4B B3 B9 E5 */	bl func_8009AECC
/* 8055F4EC  7C 7C 1B 78 */	mr r28, r3
/* 8055F4F0  3C 60 80 6B */	lis r3, data_806AA2B0@ha /* 0x806AA2B0@ha */
/* 8055F4F4  AB 7C 09 A4 */	lha r27, 0x9a4(r28)
/* 8055F4F8  3B E3 A2 B0 */	addi r31, r3, data_806AA2B0@l /* 0x806AA2B0@l */
/* 8055F4FC  83 DC 09 B4 */	lwz r30, 0x9b4(r28)
/* 8055F500  7C 9D 23 78 */	mr r29, r4
/* 8055F504  38 7B 0E 20 */	addi r3, r27, 0xe20
/* 8055F508  B0 7C 09 A4 */	sth r3, 0x9a4(r28)
/* 8055F50C  4B E5 B5 91 */	bl cos_s
/* 8055F510  3C 80 80 65 */	lis r4, lit_539@ha /* 0x8064971C@ha */
/* 8055F514  38 7B 0E 20 */	addi r3, r27, 0xe20
/* 8055F518  C0 04 97 1C */	lfs f0, lit_539@l(r4)  /* 0x8064971C@l */
/* 8055F51C  EF E0 00 72 */	fmuls f31, f0, f1
/* 8055F520  4B E5 B5 D1 */	bl sin_s
/* 8055F524  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649720@ha */
/* 8055F528  C0 7C 09 AC */	lfs f3, 0x9ac(r28)
/* 8055F52C  C0 5C 09 A8 */	lfs f2, 0x9a8(r28)
/* 8055F530  C0 03 97 20 */	lfs f0, lit_540@l(r3)  /* 0x80649720@l */
/* 8055F534  EF C3 00 72 */	fmuls f30, f3, f1
/* 8055F538  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8055F53C  4C 40 13 82 */	cror 2, 0, 2
/* 8055F540  40 82 00 68 */	bne lbl_8055F5A8
/* 8055F544  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8055F548  4C 41 13 82 */	cror 2, 1, 2
/* 8055F54C  40 82 00 5C */	bne lbl_8055F5A8
/* 8055F550  88 9C 09 A6 */	lbz r4, 0x9a6(r28)
/* 8055F554  38 84 FF FF */	addi r4, r4, -1
/* 8055F558  7C 80 07 75 */	extsb. r0, r4
/* 8055F55C  40 80 00 38 */	bge lbl_8055F594
/* 8055F560  88 9C 09 A7 */	lbz r4, 0x9a7(r28)
/* 8055F564  38 84 FF FF */	addi r4, r4, -1
/* 8055F568  7C 80 07 75 */	extsb. r0, r4
/* 8055F56C  40 80 00 08 */	bge lbl_8055F574
/* 8055F570  38 80 00 01 */	li r4, 1
lbl_8055F574:
/* 8055F574  98 9C 09 A7 */	stb r4, 0x9a7(r28)
/* 8055F578  3C 60 80 65 */	lis r3, lit_541@ha /* 0x80649724@ha */
/* 8055F57C  7C 80 07 74 */	extsb r0, r4
/* 8055F580  38 9F 01 08 */	addi r4, r31, 0x108
/* 8055F584  C0 03 97 24 */	lfs f0, lit_541@l(r3)  /* 0x80649724@l */
/* 8055F588  7C 84 00 AE */	lbzx r4, r4, r0
/* 8055F58C  D0 1C 09 AC */	stfs f0, 0x9ac(r28)
/* 8055F590  48 00 00 14 */	b lbl_8055F5A4
lbl_8055F594:
/* 8055F594  3C 60 80 65 */	lis r3, lit_542@ha /* 0x80649728@ha */
/* 8055F598  C0 03 97 28 */	lfs f0, lit_542@l(r3)  /* 0x80649728@l */
/* 8055F59C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8055F5A0  D0 1C 09 AC */	stfs f0, 0x9ac(r28)
lbl_8055F5A4:
/* 8055F5A4  98 9C 09 A6 */	stb r4, 0x9a6(r28)
lbl_8055F5A8:
/* 8055F5A8  3C 60 80 65 */	lis r3, lit_485@ha /* 0x80649714@ha */
/* 8055F5AC  3C 80 80 65 */	lis r4, lit_543@ha /* 0x8064972C@ha */
/* 8055F5B0  38 A3 97 14 */	addi r5, r3, lit_485@l /* 0x80649714@l */
/* 8055F5B4  C0 04 97 2C */	lfs f0, lit_543@l(r4)  /* 0x8064972C@l */
/* 8055F5B8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8055F5BC  3C 60 80 65 */	lis r3, lit_545@ha /* 0x80649734@ha */
/* 8055F5C0  38 83 97 34 */	addi r4, r3, lit_545@l /* 0x80649734@l */
/* 8055F5C4  D3 DC 09 A8 */	stfs f30, 0x9a8(r28)
/* 8055F5C8  EC 41 F8 2A */	fadds f2, f1, f31
/* 8055F5CC  3C 60 80 65 */	lis r3, lit_544@ha /* 0x80649730@ha */
/* 8055F5D0  C0 63 97 30 */	lfs f3, lit_544@l(r3)  /* 0x80649730@l */
/* 8055F5D4  EC 80 F0 2A */	fadds f4, f0, f30
/* 8055F5D8  57 C0 10 3A */	slwi r0, r30, 2
/* 8055F5DC  38 7F 01 14 */	addi r3, r31, 0x114
/* 8055F5E0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8055F5E4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8055F5E8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8055F5EC  38 7C 08 2C */	addi r3, r28, 0x82c
/* 8055F5F0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8055F5F4  EC 41 00 32 */	fmuls f2, f1, f0
/* 8055F5F8  7C 25 04 2E */	lfsx f1, r5, r0
/* 8055F5FC  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8055F600  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8055F604  4B E5 B6 65 */	bl chase_f
/* 8055F608  C0 3C 07 6C */	lfs f1, 0x76c(r28)
/* 8055F60C  2C 1E 00 01 */	cmpwi r30, 1
/* 8055F610  C0 1C 07 74 */	lfs f0, 0x774(r28)
/* 8055F614  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8055F618  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8055F61C  40 82 00 0C */	bne lbl_8055F628
/* 8055F620  C0 3C 07 70 */	lfs f1, 0x770(r28)
/* 8055F624  48 00 00 30 */	b lbl_8055F654
lbl_8055F628:
/* 8055F628  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8055F62C  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649720@ha */
/* 8055F630  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8055F634  38 83 97 20 */	addi r4, r3, lit_540@l /* 0x80649720@l */
/* 8055F638  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8055F63C  38 61 00 08 */	addi r3, r1, 8
/* 8055F640  90 C1 00 08 */	stw r6, 8(r1)
/* 8055F644  C0 24 00 00 */	lfs f1, 0(r4)
/* 8055F648  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8055F64C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055F650  4B E3 03 49 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
lbl_8055F654:
/* 8055F654  3C 60 80 65 */	lis r3, lit_545@ha /* 0x80649734@ha */
/* 8055F658  38 83 97 34 */	addi r4, r3, lit_545@l /* 0x80649734@l */
/* 8055F65C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8055F660  38 7C 09 B8 */	addi r3, r28, 0x9b8
/* 8055F664  4B E5 B6 05 */	bl chase_f
/* 8055F668  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 8055F66C  C0 5C 09 B8 */	lfs f2, 0x9b8(r28)
/* 8055F670  2C 00 00 01 */	cmpwi r0, 1
/* 8055F674  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8055F678  40 82 00 24 */	bne lbl_8055F69C
/* 8055F67C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8055F680  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8055F684  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8055F688  C0 3C 08 2C */	lfs f1, 0x82c(r28)
/* 8055F68C  EC 22 08 2A */	fadds f1, f2, f1
/* 8055F690  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055F694  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8055F698  48 00 01 24 */	b lbl_8055F7BC
lbl_8055F69C:
/* 8055F69C  80 1C 09 94 */	lwz r0, 0x994(r28)
/* 8055F6A0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8055F6A4  41 80 00 F4 */	blt lbl_8055F798
/* 8055F6A8  7F 84 E3 78 */	mr r4, r28
/* 8055F6AC  38 60 00 08 */	li r3, 8
/* 8055F6B0  4B E3 AB B5 */	bl mDemo_Check
/* 8055F6B4  2C 03 00 01 */	cmpwi r3, 1
/* 8055F6B8  40 82 00 E0 */	bne lbl_8055F798
/* 8055F6BC  80 9C 09 A0 */	lwz r4, 0x9a0(r28)
/* 8055F6C0  38 64 FF FF */	addi r3, r4, -1
/* 8055F6C4  34 04 FF FF */	addic. r0, r4, -1
/* 8055F6C8  90 7C 09 A0 */	stw r3, 0x9a0(r28)
/* 8055F6CC  40 82 00 0C */	bne lbl_8055F6D8
/* 8055F6D0  38 00 00 01 */	li r0, 1
/* 8055F6D4  90 1C 09 9C */	stw r0, 0x99c(r28)
lbl_8055F6D8:
/* 8055F6D8  38 64 FF FF */	addi r3, r4, -1
/* 8055F6DC  3C 00 43 30 */	lis r0, 0x4330
/* 8055F6E0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8055F6E4  3C A0 80 65 */	lis r5, lit_546@ha /* 0x80649738@ha */
/* 8055F6E8  3C 80 80 65 */	lis r4, lit_554@ha /* 0x80649754@ha */
/* 8055F6EC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8055F6F0  38 64 97 54 */	addi r3, r4, lit_554@l /* 0x80649754@l */
/* 8055F6F4  C0 E5 97 38 */	lfs f7, lit_546@l(r5)  /* 0x80649738@l */
/* 8055F6F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8055F6FC  3C 80 80 65 */	lis r4, lit_547@ha /* 0x8064973C@ha */
/* 8055F700  C8 23 00 00 */	lfd f1, 0(r3)
/* 8055F704  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649720@ha */
/* 8055F708  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8055F70C  C0 63 97 20 */	lfs f3, lit_540@l(r3)  /* 0x80649720@l */
/* 8055F710  3C 60 80 65 */	lis r3, lit_548@ha /* 0x80649740@ha */
/* 8055F714  EC 00 08 28 */	fsubs f0, f0, f1
/* 8055F718  C0 44 97 3C */	lfs f2, lit_547@l(r4)  /* 0x8064973C@l */
/* 8055F71C  FC C0 18 90 */	fmr f6, f3
/* 8055F720  C0 A3 97 40 */	lfs f5, lit_548@l(r3)  /* 0x80649740@l */
/* 8055F724  FC 80 10 90 */	fmr f4, f2
/* 8055F728  EC 07 00 28 */	fsubs f0, f7, f0
/* 8055F72C  EC 20 38 24 */	fdivs f1, f0, f7
/* 8055F730  4B E1 0F B9 */	bl cKF_HermitCalc
/* 8055F734  3C 60 80 65 */	lis r3, lit_549@ha /* 0x80649744@ha */
/* 8055F738  3C 80 80 65 */	lis r4, lit_543@ha /* 0x8064972C@ha */
/* 8055F73C  38 A3 97 44 */	addi r5, r3, lit_549@l /* 0x80649744@l */
/* 8055F740  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8055F744  C0 C5 00 00 */	lfs f6, 0(r5)
/* 8055F748  3C 60 80 65 */	lis r3, lit_550@ha /* 0x80649748@ha */
/* 8055F74C  C0 43 97 48 */	lfs f2, lit_550@l(r3)  /* 0x80649748@l */
/* 8055F750  EC A0 30 28 */	fsubs f5, f0, f6
/* 8055F754  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8055F758  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8055F75C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8055F760  C0 84 97 2C */	lfs f4, lit_543@l(r4)  /* 0x8064972C@l */
/* 8055F764  EC A5 00 72 */	fmuls f5, f5, f1
/* 8055F768  EC 00 00 72 */	fmuls f0, f0, f1
/* 8055F76C  EC A6 28 2A */	fadds f5, f6, f5
/* 8055F770  EC 02 00 2A */	fadds f0, f2, f0
/* 8055F774  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8055F778  C0 5C 08 2C */	lfs f2, 0x82c(r28)
/* 8055F77C  EC 43 10 2A */	fadds f2, f3, f2
/* 8055F780  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055F784  EC 02 20 28 */	fsubs f0, f2, f4
/* 8055F788  EC 01 00 32 */	fmuls f0, f1, f0
/* 8055F78C  EC 04 00 2A */	fadds f0, f4, f0
/* 8055F790  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8055F794  48 00 00 28 */	b lbl_8055F7BC
lbl_8055F798:
/* 8055F798  3C A0 80 65 */	lis r5, lit_549@ha /* 0x80649744@ha */
/* 8055F79C  3C 80 80 65 */	lis r4, lit_543@ha /* 0x8064972C@ha */
/* 8055F7A0  3C 60 80 65 */	lis r3, lit_550@ha /* 0x80649748@ha */
/* 8055F7A4  C0 45 97 44 */	lfs f2, lit_549@l(r5)  /* 0x80649744@l */
/* 8055F7A8  C0 24 97 2C */	lfs f1, lit_543@l(r4)  /* 0x8064972C@l */
/* 8055F7AC  C0 03 97 48 */	lfs f0, lit_550@l(r3)  /* 0x80649748@l */
/* 8055F7B0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8055F7B4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8055F7B8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8055F7BC:
/* 8055F7BC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8055F7C0  7F A3 EB 78 */	mr r3, r29
/* 8055F7C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8055F7C8  38 80 00 00 */	li r4, 0
/* 8055F7CC  EC 21 F8 2A */	fadds f1, f1, f31
/* 8055F7D0  EC 00 F0 2A */	fadds f0, f0, f30
/* 8055F7D4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8055F7D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8055F7DC  4B E1 F2 E9 */	bl Camera2_change_priority
/* 8055F7E0  3C C0 80 65 */	lis r6, lit_546@ha /* 0x80649738@ha */
/* 8055F7E4  3C A0 80 65 */	lis r5, lit_551@ha /* 0x8064974C@ha */
/* 8055F7E8  3C 80 80 65 */	lis r4, lit_552@ha /* 0x80649750@ha */
/* 8055F7EC  7F A3 EB 78 */	mr r3, r29
/* 8055F7F0  38 E6 97 38 */	addi r7, r6, lit_546@l /* 0x80649738@l */
/* 8055F7F4  38 C5 97 4C */	addi r6, r5, lit_551@l /* 0x8064974C@l */
/* 8055F7F8  38 A4 97 50 */	addi r5, r4, lit_552@l /* 0x80649750@l */
/* 8055F7FC  C0 27 00 00 */	lfs f1, 0(r7)
/* 8055F800  C0 46 00 00 */	lfs f2, 0(r6)
/* 8055F804  38 81 00 20 */	addi r4, r1, 0x20
/* 8055F808  C0 65 00 00 */	lfs f3, 0(r5)
/* 8055F80C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8055F810  38 C0 00 00 */	li r6, 0
/* 8055F814  38 E0 00 05 */	li r7, 5
/* 8055F818  4B E2 17 19 */	bl Camera2_request_main_lock
/* 8055F81C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8055F820  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8055F824  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8055F828  39 61 00 60 */	addi r11, r1, 0x60
/* 8055F82C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8055F830  4B B3 B6 E9 */	bl func_8009AF18
/* 8055F834  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8055F838  7C 08 03 A6 */	mtlr r0
/* 8055F83C  38 21 00 80 */	addi r1, r1, 0x80
/* 8055F840  4E 80 00 20 */	blr 
