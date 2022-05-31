lbl_80502230:
/* 80502230  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80502234  7C 08 02 A6 */	mflr r0
/* 80502238  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050223C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80502240  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80502244  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80502248  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8050224C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80502250  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80502254  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 80502258  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 8050225C  C0 04 6C 44 */	lfs f0, lit_2591@l(r4)  /* 0x80646C44@l */
/* 80502260  7C 7F 1B 78 */	mr r31, r3
/* 80502264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502268  4C 41 13 82 */	cror 2, 1, 2
/* 8050226C  40 82 00 0C */	bne lbl_80502278
/* 80502270  38 60 00 01 */	li r3, 1
/* 80502274  48 00 01 58 */	b lbl_805023CC
lbl_80502278:
/* 80502278  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 8050227C  C3 C3 65 68 */	lfs f30, lit_604@l(r3)  /* 0x80646568@l */
/* 80502280  4B FD 27 01 */	bl Player_actor_CheckController_forStruggle_pitfall
/* 80502284  EF DE 08 2A */	fadds f30, f30, f1
/* 80502288  4B FD 29 11 */	bl Player_actor_GetController_old_recognize_percentR
/* 8050228C  FF E0 08 90 */	fmr f31, f1
/* 80502290  4B FD 28 C5 */	bl Player_actor_GetController_recognize_percentR
/* 80502294  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80502298  EC 7F 08 28 */	fsubs f3, f31, f1
/* 8050229C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805022A0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 805022A4  C0 44 6C 4C */	lfs f2, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 805022A8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805022AC  4C 41 13 82 */	cror 2, 1, 2
/* 805022B0  40 82 00 0C */	bne lbl_805022BC
/* 805022B4  FC 00 18 90 */	fmr f0, f3
/* 805022B8  48 00 00 08 */	b lbl_805022C0
lbl_805022BC:
/* 805022BC  FC 00 18 50 */	fneg f0, f3
lbl_805022C0:
/* 805022C0  EC 42 00 32 */	fmuls f2, f2, f0
/* 805022C4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805022C8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805022CC  EF DE 10 2A */	fadds f30, f30, f2
/* 805022D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805022D4  40 81 00 60 */	ble lbl_80502334
/* 805022D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805022DC  40 81 00 58 */	ble lbl_80502334
/* 805022E0  4B FD 27 ED */	bl Player_actor_GetController_move_angle
/* 805022E4  7C 7E 07 34 */	extsh r30, r3
/* 805022E8  4B FD 28 29 */	bl Player_actor_GetController_old_move_angle
/* 805022EC  7C 63 07 34 */	extsh r3, r3
/* 805022F0  3C 00 43 30 */	lis r0, 0x4330
/* 805022F4  7C 9E 18 50 */	subf r4, r30, r3
/* 805022F8  3C C0 80 65 */	lis r6, lit_15363@ha /* 0x80648580@ha */
/* 805022FC  7C 84 07 34 */	extsh r4, r4
/* 80502300  3C 60 80 64 */	lis r3, lit_1627@ha /* 0x80646A54@ha */
/* 80502304  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 80502308  90 01 00 08 */	stw r0, 8(r1)
/* 8050230C  7C A4 22 78 */	xor r4, r5, r4
/* 80502310  C8 23 6A 54 */	lfd f1, lit_1627@l(r3)  /* 0x80646A54@l */
/* 80502314  7C 85 20 50 */	subf r4, r5, r4
/* 80502318  C0 46 85 80 */	lfs f2, lit_15363@l(r6)  /* 0x80648580@l */
/* 8050231C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80502320  90 01 00 0C */	stw r0, 0xc(r1)
/* 80502324  C8 01 00 08 */	lfd f0, 8(r1)
/* 80502328  EC 00 08 28 */	fsubs f0, f0, f1
/* 8050232C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80502330  EF DE 00 2A */	fadds f30, f30, f0
lbl_80502334:
/* 80502334  C0 1F 0D 18 */	lfs f0, 0xd18(r31)
/* 80502338  3C 60 80 65 */	lis r3, lit_7319@ha /* 0x8064834C@ha */
/* 8050233C  38 83 83 4C */	addi r4, r3, lit_7319@l /* 0x8064834C@l */
/* 80502340  38 BF 0D 1C */	addi r5, r31, 0xd1c
/* 80502344  EC 20 F0 2A */	fadds f1, f0, f30
/* 80502348  C0 04 00 00 */	lfs f0, 0(r4)
/* 8050234C  3C 60 80 65 */	lis r3, lit_15364@ha /* 0x80648584@ha */
/* 80502350  38 83 85 84 */	addi r4, r3, lit_15364@l /* 0x80648584@l */
/* 80502354  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80502358  D0 3F 0D 18 */	stfs f1, 0xd18(r31)
/* 8050235C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502360  C0 24 00 00 */	lfs f1, 0(r4)
/* 80502364  C0 7F 0D 1C */	lfs f3, 0xd1c(r31)
/* 80502368  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 8050236C  EC 43 10 2A */	fadds f2, f3, f2
/* 80502370  D0 5F 0D 1C */	stfs f2, 0xd1c(r31)
/* 80502374  C0 5F 0D 1C */	lfs f2, 0xd1c(r31)
/* 80502378  EC 22 08 28 */	fsubs f1, f2, f1
/* 8050237C  D0 3F 0D 1C */	stfs f1, 0xd1c(r31)
/* 80502380  C0 3F 0D 1C */	lfs f1, 0xd1c(r31)
/* 80502384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502388  40 81 00 0C */	ble lbl_80502394
/* 8050238C  D0 05 00 00 */	stfs f0, 0(r5)
/* 80502390  48 00 00 18 */	b lbl_805023A8
lbl_80502394:
/* 80502394  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 80502398  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 8050239C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805023A0  40 80 00 08 */	bge lbl_805023A8
/* 805023A4  D0 05 00 00 */	stfs f0, 0(r5)
lbl_805023A8:
/* 805023A8  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 805023AC  3C 60 80 65 */	lis r3, lit_15365@ha /* 0x80648588@ha */
/* 805023B0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805023B4  C0 23 85 88 */	lfs f1, lit_15365@l(r3)  /* 0x80648588@l */
/* 805023B8  38 60 00 00 */	li r3, 0
/* 805023BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 805023C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805023C4  EC 02 00 2A */	fadds f0, f2, f0
/* 805023C8  D0 1F 01 80 */	stfs f0, 0x180(r31)
lbl_805023CC:
/* 805023CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805023D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805023D4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805023D8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805023DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805023E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805023E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805023E8  7C 08 03 A6 */	mtlr r0
/* 805023EC  38 21 00 40 */	addi r1, r1, 0x40
/* 805023F0  4E 80 00 20 */	blr 
