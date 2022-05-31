lbl_8058F644:
/* 8058F644  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058F648  7C 08 02 A6 */	mflr r0
/* 8058F64C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058F650  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8058F654  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8058F658  39 61 00 30 */	addi r11, r1, 0x30
/* 8058F65C  4B B0 B8 79 */	bl func_8009AED4
/* 8058F660  7C 7D 1B 78 */	mr r29, r3
/* 8058F664  7C 9E 23 78 */	mr r30, r4
/* 8058F668  38 60 00 0E */	li r3, 0xe
/* 8058F66C  38 80 00 09 */	li r4, 9
/* 8058F670  4B E0 E7 5D */	bl mEv_get_save_area
/* 8058F674  7C 7F 1B 78 */	mr r31, r3
/* 8058F678  4B AC D6 7D */	bl fqrand
/* 8058F67C  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8058F680  3C 60 80 65 */	lis r3, lit_584@ha /* 0x80649C18@ha */
/* 8058F684  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8058F688  FF E0 08 90 */	fmr f31, f1
/* 8058F68C  38 83 9C 18 */	addi r4, r3, lit_584@l /* 0x80649C18@l */
/* 8058F690  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8058F694  EC 02 00 2A */	fadds f0, f2, f0
/* 8058F698  C0 24 00 00 */	lfs f1, 0(r4)
/* 8058F69C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8058F6A0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8058F6A4  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 8058F6A8  4B DE 0D E1 */	bl cKF_FrameControl_passCheck_now
/* 8058F6AC  2C 03 00 00 */	cmpwi r3, 0
/* 8058F6B0  41 82 00 3C */	beq lbl_8058F6EC
/* 8058F6B4  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 8058F6B8  60 00 80 00 */	ori r0, r0, 0x8000
/* 8058F6BC  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8058F6C0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8058F6C4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8058F6C8  88 1D 09 A5 */	lbz r0, 0x9a5(r29)
/* 8058F6CC  28 00 00 03 */	cmplwi r0, 3
/* 8058F6D0  40 82 02 00 */	bne lbl_8058F8D0
/* 8058F6D4  7F A3 EB 78 */	mr r3, r29
/* 8058F6D8  7F C4 F3 78 */	mr r4, r30
/* 8058F6DC  4B FF FE A5 */	bl func_8058F580
/* 8058F6E0  38 00 00 01 */	li r0, 1
/* 8058F6E4  B0 1D 09 A2 */	sth r0, 0x9a2(r29)
/* 8058F6E8  48 00 01 E8 */	b lbl_8058F8D0
lbl_8058F6EC:
/* 8058F6EC  3C 80 80 65 */	lis r4, lit_585@ha /* 0x80649C1C@ha */
/* 8058F6F0  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8058F6F4  C0 24 9C 1C */	lfs f1, lit_585@l(r4)  /* 0x80649C1C@l */
/* 8058F6F8  4B DE 0D 91 */	bl cKF_FrameControl_passCheck_now
/* 8058F6FC  2C 03 00 00 */	cmpwi r3, 0
/* 8058F700  41 82 00 C4 */	beq lbl_8058F7C4
/* 8058F704  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 8058F708  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 8058F70C  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8058F710  88 1D 09 A5 */	lbz r0, 0x9a5(r29)
/* 8058F714  28 00 00 03 */	cmplwi r0, 3
/* 8058F718  40 82 00 30 */	bne lbl_8058F748
/* 8058F71C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058F720  A0 9D 00 06 */	lhz r4, 6(r29)
/* 8058F724  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8058F728  38 60 00 1E */	li r3, 0x1e
/* 8058F72C  3C A5 00 02 */	addis r5, r5, 2
/* 8058F730  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 8058F734  81 85 00 04 */	lwz r12, 4(r5)
/* 8058F738  7D 89 03 A6 */	mtctr r12
/* 8058F73C  4E 80 04 21 */	bctrl 
/* 8058F740  38 00 00 00 */	li r0, 0
/* 8058F744  B0 1D 09 A2 */	sth r0, 0x9a2(r29)
lbl_8058F748:
/* 8058F748  3C 60 80 65 */	lis r3, lit_586@ha /* 0x80649C20@ha */
/* 8058F74C  C0 03 9C 20 */	lfs f0, lit_586@l(r3)  /* 0x80649C20@l */
/* 8058F750  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8058F754  40 80 00 28 */	bge lbl_8058F77C
/* 8058F758  4B AC D5 9D */	bl fqrand
/* 8058F75C  3C 80 80 65 */	lis r4, lit_587@ha /* 0x80649C24@ha */
/* 8058F760  3C 60 80 65 */	lis r3, lit_508@ha /* 0x80649C00@ha */
/* 8058F764  C0 44 9C 24 */	lfs f2, lit_587@l(r4)  /* 0x80649C24@l */
/* 8058F768  C0 03 9C 00 */	lfs f0, lit_508@l(r3)  /* 0x80649C00@l */
/* 8058F76C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058F770  EC 00 08 2A */	fadds f0, f0, f1
/* 8058F774  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8058F778  48 00 01 58 */	b lbl_8058F8D0
lbl_8058F77C:
/* 8058F77C  3C 60 80 65 */	lis r3, lit_588@ha /* 0x80649C28@ha */
/* 8058F780  C0 03 9C 28 */	lfs f0, lit_588@l(r3)  /* 0x80649C28@l */
/* 8058F784  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8058F788  40 80 00 2C */	bge lbl_8058F7B4
/* 8058F78C  4B AC D5 69 */	bl fqrand
/* 8058F790  3C 80 80 65 */	lis r4, lit_587@ha /* 0x80649C24@ha */
/* 8058F794  3C 60 80 65 */	lis r3, lit_508@ha /* 0x80649C00@ha */
/* 8058F798  C0 44 9C 24 */	lfs f2, lit_587@l(r4)  /* 0x80649C24@l */
/* 8058F79C  C0 03 9C 00 */	lfs f0, lit_508@l(r3)  /* 0x80649C00@l */
/* 8058F7A0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058F7A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8058F7A8  FC 00 00 50 */	fneg f0, f0
/* 8058F7AC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8058F7B0  48 00 01 20 */	b lbl_8058F8D0
lbl_8058F7B4:
/* 8058F7B4  3C 60 80 65 */	lis r3, data_80649BFC@ha /* 0x80649BFC@ha */
/* 8058F7B8  C0 03 9B FC */	lfs f0, data_80649BFC@l(r3)  /* 0x80649BFC@l */
/* 8058F7BC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8058F7C0  48 00 01 10 */	b lbl_8058F8D0
lbl_8058F7C4:
/* 8058F7C4  88 1D 09 A5 */	lbz r0, 0x9a5(r29)
/* 8058F7C8  28 00 00 03 */	cmplwi r0, 3
/* 8058F7CC  41 82 01 04 */	beq lbl_8058F8D0
/* 8058F7D0  A8 9D 09 A0 */	lha r4, 0x9a0(r29)
/* 8058F7D4  3C 00 43 30 */	lis r0, 0x4330
/* 8058F7D8  3C A0 80 65 */	lis r5, lit_595@ha /* 0x80649C44@ha */
/* 8058F7DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8058F7E0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8058F7E4  C8 25 9C 44 */	lfd f1, lit_595@l(r5)  /* 0x80649C44@l */
/* 8058F7E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8058F7EC  3C 60 80 65 */	lis r3, lit_589@ha /* 0x80649C2C@ha */
/* 8058F7F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8058F7F4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8058F7F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8058F7FC  C0 03 9C 2C */	lfs f0, lit_589@l(r3)  /* 0x80649C2C@l */
/* 8058F800  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058F804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058F808  40 81 00 C8 */	ble lbl_8058F8D0
/* 8058F80C  3C 80 80 65 */	lis r4, lit_590@ha /* 0x80649C30@ha */
/* 8058F810  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8058F814  C0 24 9C 30 */	lfs f1, lit_590@l(r4)  /* 0x80649C30@l */
/* 8058F818  4B DE 0C 71 */	bl cKF_FrameControl_passCheck_now
/* 8058F81C  2C 03 00 00 */	cmpwi r3, 0
/* 8058F820  40 82 00 1C */	bne lbl_8058F83C
/* 8058F824  3C 80 80 65 */	lis r4, lit_591@ha /* 0x80649C34@ha */
/* 8058F828  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8058F82C  C0 24 9C 34 */	lfs f1, lit_591@l(r4)  /* 0x80649C34@l */
/* 8058F830  4B DE 0C 59 */	bl cKF_FrameControl_passCheck_now
/* 8058F834  2C 03 00 00 */	cmpwi r3, 0
/* 8058F838  41 82 00 98 */	beq lbl_8058F8D0
lbl_8058F83C:
/* 8058F83C  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8058F840  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058F844  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8058F848  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058F84C  3C 63 00 02 */	addis r3, r3, 2
/* 8058F850  7F C7 F3 78 */	mr r7, r30
/* 8058F854  90 81 00 08 */	stw r4, 8(r1)
/* 8058F858  38 81 00 08 */	addi r4, r1, 8
/* 8058F85C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8058F860  38 60 00 1F */	li r3, 0x1f
/* 8058F864  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058F868  38 A0 00 01 */	li r5, 1
/* 8058F86C  39 40 00 00 */	li r10, 0
/* 8058F870  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8058F874  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058F878  80 1D 00 98 */	lwz r0, 0x98(r29)
/* 8058F87C  81 86 00 00 */	lwz r12, 0(r6)
/* 8058F880  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 8058F884  A8 DD 00 DE */	lha r6, 0xde(r29)
/* 8058F888  7C 09 07 34 */	extsh r9, r0
/* 8058F88C  A1 1D 00 06 */	lhz r8, 6(r29)
/* 8058F890  7D 89 03 A6 */	mtctr r12
/* 8058F894  4E 80 04 21 */	bctrl 
/* 8058F898  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8058F89C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058F8A0  38 03 2F A1 */	addi r0, r3, 0x2fa1
/* 8058F8A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8058F8A8  41 82 00 28 */	beq lbl_8058F8D0
/* 8058F8AC  3C 80 80 65 */	lis r4, lit_590@ha /* 0x80649C30@ha */
/* 8058F8B0  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8058F8B4  C0 24 9C 30 */	lfs f1, lit_590@l(r4)  /* 0x80649C30@l */
/* 8058F8B8  4B DE 0B D1 */	bl cKF_FrameControl_passCheck_now
/* 8058F8BC  2C 03 00 00 */	cmpwi r3, 0
/* 8058F8C0  41 82 00 10 */	beq lbl_8058F8D0
/* 8058F8C4  38 9D 00 28 */	addi r4, r29, 0x28
/* 8058F8C8  38 60 01 06 */	li r3, 0x106
/* 8058F8CC  48 09 E6 DD */	bl sAdo_OngenTrgStart
lbl_8058F8D0:
/* 8058F8D0  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8058F8D4  4B DE 0C 4D */	bl cKF_FrameControl_stop_proc
/* 8058F8D8  2C 03 00 01 */	cmpwi r3, 1
/* 8058F8DC  40 82 00 B8 */	bne lbl_8058F994
/* 8058F8E0  A8 9D 09 A0 */	lha r4, 0x9a0(r29)
/* 8058F8E4  3C 00 43 30 */	lis r0, 0x4330
/* 8058F8E8  3C A0 80 65 */	lis r5, lit_595@ha /* 0x80649C44@ha */
/* 8058F8EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8058F8F0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8058F8F4  C8 65 9C 44 */	lfd f3, lit_595@l(r5)  /* 0x80649C44@l */
/* 8058F8F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8058F8FC  3C 60 80 65 */	lis r3, lit_592@ha /* 0x80649C38@ha */
/* 8058F900  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8058F904  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8058F908  EC 20 18 28 */	fsubs f1, f0, f3
/* 8058F90C  C0 03 9C 38 */	lfs f0, lit_592@l(r3)  /* 0x80649C38@l */
/* 8058F910  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058F914  FC 20 08 50 */	fneg f1, f1
/* 8058F918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058F91C  40 81 00 18 */	ble lbl_8058F934
/* 8058F920  7F A3 EB 78 */	mr r3, r29
/* 8058F924  7F C4 F3 78 */	mr r4, r30
/* 8058F928  38 A0 00 02 */	li r5, 2
/* 8058F92C  48 00 04 B5 */	bl aTNN1_setup_think_proc
/* 8058F930  48 00 00 64 */	b lbl_8058F994
lbl_8058F934:
/* 8058F934  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80649C3C@ha */
/* 8058F938  C0 03 9C 3C */	lfs f0, lit_593@l(r3)  /* 0x80649C3C@l */
/* 8058F93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058F940  40 80 00 44 */	bge lbl_8058F984
/* 8058F944  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8058F948  3C 60 80 65 */	lis r3, data_80649BFC@ha /* 0x80649BFC@ha */
/* 8058F94C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8058F950  90 01 00 18 */	stw r0, 0x18(r1)
/* 8058F954  C0 03 9B FC */	lfs f0, data_80649BFC@l(r3)  /* 0x80649BFC@l */
/* 8058F958  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8058F95C  EC 21 18 28 */	fsubs f1, f1, f3
/* 8058F960  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058F964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058F968  4C 41 13 82 */	cror 2, 1, 2
/* 8058F96C  40 82 00 18 */	bne lbl_8058F984
/* 8058F970  7F A3 EB 78 */	mr r3, r29
/* 8058F974  7F C4 F3 78 */	mr r4, r30
/* 8058F978  38 A0 00 03 */	li r5, 3
/* 8058F97C  48 00 04 65 */	bl aTNN1_setup_think_proc
/* 8058F980  48 00 00 14 */	b lbl_8058F994
lbl_8058F984:
/* 8058F984  7F A3 EB 78 */	mr r3, r29
/* 8058F988  7F C4 F3 78 */	mr r4, r30
/* 8058F98C  38 A0 00 01 */	li r5, 1
/* 8058F990  48 00 04 51 */	bl aTNN1_setup_think_proc
lbl_8058F994:
/* 8058F994  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8058F998  39 61 00 30 */	addi r11, r1, 0x30
/* 8058F99C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8058F9A0  4B B0 B5 81 */	bl func_8009AF20
/* 8058F9A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058F9A8  7C 08 03 A6 */	mtlr r0
/* 8058F9AC  38 21 00 40 */	addi r1, r1, 0x40
/* 8058F9B0  4E 80 00 20 */	blr 
