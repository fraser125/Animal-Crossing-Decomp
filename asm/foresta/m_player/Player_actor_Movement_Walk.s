lbl_804E6660:
/* 804E6660  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E6664  7C 08 02 A6 */	mflr r0
/* 804E6668  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E666C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804E6670  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804E6674  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804E6678  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804E667C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 804E6680  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 804E6684  39 61 00 30 */	addi r11, r1, 0x30
/* 804E6688  4B BB 48 4D */	bl func_8009AED4
/* 804E668C  7C 7D 1B 78 */	mr r29, r3
/* 804E6690  7C 9E 23 78 */	mr r30, r4
/* 804E6694  7C BF 2B 78 */	mr r31, r5
/* 804E6698  4B FE E3 F1 */	bl Player_actor_GetController_move_percentR
/* 804E669C  FF E0 08 90 */	fmr f31, f1
/* 804E66A0  7F C3 F3 78 */	mr r3, r30
/* 804E66A4  4B FF 0C 31 */	bl Player_actor_Get_ControllerAngle
/* 804E66A8  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E66AC  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 804E66B0  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804E66B4  B0 01 00 08 */	sth r0, 8(r1)
/* 804E66B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E66BC  4C 41 13 82 */	cror 2, 1, 2
/* 804E66C0  40 82 00 10 */	bne lbl_804E66D0
/* 804E66C4  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E66C8  C0 44 6C 4C */	lfs f2, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E66CC  48 00 00 40 */	b lbl_804E670C
lbl_804E66D0:
/* 804E66D0  3C 80 80 65 */	lis r4, lit_7851@ha /* 0x80648368@ha */
/* 804E66D4  C0 04 83 68 */	lfs f0, lit_7851@l(r4)  /* 0x80648368@l */
/* 804E66D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E66DC  4C 40 13 82 */	cror 2, 0, 2
/* 804E66E0  40 82 00 10 */	bne lbl_804E66F0
/* 804E66E4  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804E66E8  C0 44 66 68 */	lfs f2, lit_790@l(r4)  /* 0x80646668@l */
/* 804E66EC  48 00 00 20 */	b lbl_804E670C
lbl_804E66F0:
/* 804E66F0  3C 80 80 65 */	lis r4, lit_7852@ha /* 0x8064836C@ha */
/* 804E66F4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 804E66F8  C0 24 83 6C */	lfs f1, lit_7852@l(r4)  /* 0x8064836C@l */
/* 804E66FC  3C A0 80 64 */	lis r5, lit_790@ha /* 0x80646668@ha */
/* 804E6700  C0 45 66 68 */	lfs f2, lit_790@l(r5)  /* 0x80646668@l */
/* 804E6704  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E6708  EC 42 00 2A */	fadds f2, f2, f0
lbl_804E670C:
/* 804E670C  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804E6710  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E6714  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804E6718  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804E671C  EC 81 10 28 */	fsubs f4, f1, f2
/* 804E6720  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804E6724  40 81 00 68 */	ble lbl_804E678C
/* 804E6728  FC 20 20 34 */	frsqrte f1, f4
/* 804E672C  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804E6730  38 A4 69 F4 */	addi r5, r4, lit_1027@l /* 0x806469F4@l */
/* 804E6734  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804E6738  C8 65 00 00 */	lfd f3, 0(r5)
/* 804E673C  FC 01 00 72 */	fmul f0, f1, f1
/* 804E6740  C8 44 69 FC */	lfd f2, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804E6744  FC 23 00 72 */	fmul f1, f3, f1
/* 804E6748  FC 04 00 32 */	fmul f0, f4, f0
/* 804E674C  FC 02 00 28 */	fsub f0, f2, f0
/* 804E6750  FC 21 00 32 */	fmul f1, f1, f0
/* 804E6754  FC 01 00 72 */	fmul f0, f1, f1
/* 804E6758  FC 23 00 72 */	fmul f1, f3, f1
/* 804E675C  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6760  FC 02 00 28 */	fsub f0, f2, f0
/* 804E6764  FC 21 00 32 */	fmul f1, f1, f0
/* 804E6768  FC 01 00 72 */	fmul f0, f1, f1
/* 804E676C  FC 23 00 72 */	fmul f1, f3, f1
/* 804E6770  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6774  FC 02 00 28 */	fsub f0, f2, f0
/* 804E6778  FC 01 00 32 */	fmul f0, f1, f0
/* 804E677C  FC 04 00 32 */	fmul f0, f4, f0
/* 804E6780  FC 00 00 18 */	frsp f0, f0
/* 804E6784  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E6788  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_804E678C:
/* 804E678C  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804E6790  7C 64 1B 78 */	mr r4, r3
/* 804E6794  C0 05 65 64 */	lfs f0, lit_603@l(r5)  /* 0x80646564@l */
/* 804E6798  38 61 00 08 */	addi r3, r1, 8
/* 804E679C  38 A0 09 C4 */	li r5, 0x9c4
/* 804E67A0  38 C0 00 32 */	li r6, 0x32
/* 804E67A4  EC 20 20 28 */	fsubs f1, f0, f4
/* 804E67A8  4B ED 4B 69 */	bl add_calc_short_angle2
/* 804E67AC  A8 01 00 08 */	lha r0, 8(r1)
/* 804E67B0  7F A3 EB 78 */	mr r3, r29
/* 804E67B4  38 9D 00 28 */	addi r4, r29, 0x28
/* 804E67B8  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 804E67BC  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 804E67C0  4B FF 07 15 */	bl Player_actor_Culc_over_speed_normalize_NoneZero
/* 804E67C4  FF C0 08 90 */	fmr f30, f1
/* 804E67C8  4B FE E1 FD */	bl Player_actor_CheckController_forDush
/* 804E67CC  2C 03 00 00 */	cmpwi r3, 0
/* 804E67D0  41 82 00 18 */	beq lbl_804E67E8
/* 804E67D4  3C 60 80 65 */	lis r3, lit_7783@ha /* 0x80648364@ha */
/* 804E67D8  C0 03 83 64 */	lfs f0, lit_7783@l(r3)  /* 0x80648364@l */
/* 804E67DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804E67E0  EF E0 F0 24 */	fdivs f31, f0, f30
/* 804E67E4  48 00 00 14 */	b lbl_804E67F8
lbl_804E67E8:
/* 804E67E8  3C 60 80 65 */	lis r3, lit_7853@ha /* 0x80648370@ha */
/* 804E67EC  C0 03 83 70 */	lfs f0, lit_7853@l(r3)  /* 0x80648370@l */
/* 804E67F0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804E67F4  EF E0 F0 24 */	fdivs f31, f0, f30
lbl_804E67F8:
/* 804E67F8  7F C3 F3 78 */	mr r3, r30
/* 804E67FC  4B FF 0A D9 */	bl Player_actor_Get_ControllerAngle
/* 804E6800  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 804E6804  7C 64 07 34 */	extsh r4, r3
/* 804E6808  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804E680C  7C 80 20 50 */	subf r4, r0, r4
/* 804E6810  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 804E6814  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 804E6818  7C A4 22 78 */	xor r4, r5, r4
/* 804E681C  7C 85 20 50 */	subf r4, r5, r4
/* 804E6820  7C 04 00 00 */	cmpw r4, r0
/* 804E6824  7C 80 23 78 */	mr r0, r4
/* 804E6828  40 81 00 08 */	ble lbl_804E6830
/* 804E682C  7C 04 18 50 */	subf r0, r4, r3
lbl_804E6830:
/* 804E6830  7C 03 07 34 */	extsh r3, r0
/* 804E6834  4B ED 42 69 */	bl cos_s
/* 804E6838  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E683C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E6840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6844  4C 40 13 82 */	cror 2, 0, 2
/* 804E6848  40 82 00 0C */	bne lbl_804E6854
/* 804E684C  FF E0 00 90 */	fmr f31, f0
/* 804E6850  48 00 00 08 */	b lbl_804E6858
lbl_804E6854:
/* 804E6854  EF FF 00 72 */	fmuls f31, f31, f1
lbl_804E6858:
/* 804E6858  C3 BD 00 74 */	lfs f29, 0x74(r29)
/* 804E685C  FC 1D F8 00 */	fcmpu cr0, f29, f31
/* 804E6860  41 82 00 48 */	beq lbl_804E68A8
/* 804E6864  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 804E6868  40 80 00 20 */	bge lbl_804E6888
/* 804E686C  3C 60 80 65 */	lis r3, lit_7854@ha /* 0x80648374@ha */
/* 804E6870  C0 03 83 74 */	lfs f0, lit_7854@l(r3)  /* 0x80648374@l */
/* 804E6874  EF BD 00 2A */	fadds f29, f29, f0
/* 804E6878  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 804E687C  40 81 00 28 */	ble lbl_804E68A4
/* 804E6880  FF A0 F8 90 */	fmr f29, f31
/* 804E6884  48 00 00 20 */	b lbl_804E68A4
lbl_804E6888:
/* 804E6888  40 81 00 1C */	ble lbl_804E68A4
/* 804E688C  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 804E6890  C0 03 69 F0 */	lfs f0, lit_1011@l(r3)  /* 0x806469F0@l */
/* 804E6894  EF BD 00 28 */	fsubs f29, f29, f0
/* 804E6898  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 804E689C  40 80 00 08 */	bge lbl_804E68A4
/* 804E68A0  FF A0 F8 90 */	fmr f29, f31
lbl_804E68A4:
/* 804E68A4  D3 BD 00 74 */	stfs f29, 0x74(r29)
lbl_804E68A8:
/* 804E68A8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E68AC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E68B0  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 804E68B4  40 82 00 88 */	bne lbl_804E693C
/* 804E68B8  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804E68BC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804E68C0  90 61 00 10 */	stw r3, 0x10(r1)
/* 804E68C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E68C8  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804E68CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E68D0  AB DD 00 36 */	lha r30, 0x36(r29)
/* 804E68D4  7F C3 F3 78 */	mr r3, r30
/* 804E68D8  4B ED 42 19 */	bl sin_s
/* 804E68DC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E68E0  7F C3 F3 78 */	mr r3, r30
/* 804E68E4  C0 04 6C 4C */	lfs f0, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E68E8  EF E0 07 72 */	fmuls f31, f0, f29
/* 804E68EC  EF BF 00 72 */	fmuls f29, f31, f1
/* 804E68F0  4B ED 41 AD */	bl cos_s
/* 804E68F4  EC 5F 00 72 */	fmuls f2, f31, f1
/* 804E68F8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804E68FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E6900  7F A3 EB 78 */	mr r3, r29
/* 804E6904  EC 21 E8 2A */	fadds f1, f1, f29
/* 804E6908  38 81 00 10 */	addi r4, r1, 0x10
/* 804E690C  EC 00 10 2A */	fadds f0, f0, f2
/* 804E6910  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804E6914  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E6918  4B FF 05 BD */	bl Player_actor_Culc_over_speed_normalize_NoneZero
/* 804E691C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E6920  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E6924  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E6928  41 82 00 14 */	beq lbl_804E693C
/* 804E692C  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 804E6930  FF C0 08 90 */	fmr f30, f1
/* 804E6934  EC 00 08 24 */	fdivs f0, f0, f1
/* 804E6938  D0 1D 00 74 */	stfs f0, 0x74(r29)
lbl_804E693C:
/* 804E693C  D3 DF 00 00 */	stfs f30, 0(r31)
/* 804E6940  7F A3 EB 78 */	mr r3, r29
/* 804E6944  4B FE EF D9 */	bl Player_actor_Movement_Base
/* 804E6948  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804E694C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804E6950  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804E6954  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804E6958  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 804E695C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E6960  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 804E6964  4B BB 45 BD */	bl func_8009AF20
/* 804E6968  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E696C  7C 08 03 A6 */	mtlr r0
/* 804E6970  38 21 00 60 */	addi r1, r1, 0x60
/* 804E6974  4E 80 00 20 */	blr 
