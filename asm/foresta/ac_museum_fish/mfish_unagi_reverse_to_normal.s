lbl_80452748:
/* 80452748  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8045274C  7C 08 02 A6 */	mflr r0
/* 80452750  90 01 00 84 */	stw r0, 0x84(r1)
/* 80452754  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80452758  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8045275C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80452760  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80452764  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80452768  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8045276C  39 61 00 50 */	addi r11, r1, 0x50
/* 80452770  4B C4 87 65 */	bl func_8009AED4
/* 80452774  7C 7E 1B 78 */	mr r30, r3
/* 80452778  3C A0 80 68 */	lis r5, unagi_reverse_to_normal_rail_pos@ha /* 0x80686024@ha */
/* 8045277C  A8 63 06 1C */	lha r3, 0x61c(r3)
/* 80452780  7C 9D 23 78 */	mr r29, r4
/* 80452784  3B E5 60 24 */	addi r31, r5, unagi_reverse_to_normal_rail_pos@l /* 0x80686024@l */
/* 80452788  4B F6 83 15 */	bl cos_s
/* 8045278C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80452790  FF E0 08 90 */	fmr f31, f1
/* 80452794  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80452798  C3 BE 05 E8 */	lfs f29, 0x5e8(r30)
/* 8045279C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804527A0  40 80 00 08 */	bge lbl_804527A8
/* 804527A4  FF E0 00 90 */	fmr f31, f0
lbl_804527A8:
/* 804527A8  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 804527AC  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 804527B0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804527B4  7C 9F 02 14 */	add r4, r31, r0
/* 804527B8  4B F6 88 1D */	bl search_position_distance
/* 804527BC  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 804527C0  FF C0 08 90 */	fmr f30, f1
/* 804527C4  FC 20 E8 90 */	fmr f1, f29
/* 804527C8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 804527CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804527D0  7C 9F 02 14 */	add r4, r31, r0
/* 804527D4  4B F6 85 09 */	bl chase_xyz_t
/* 804527D8  FC 20 0A 10 */	fabs f1, f1
/* 804527DC  3C 60 80 64 */	lis r3, lit_3475@ha /* 0x806443C8@ha */
/* 804527E0  C0 03 43 C8 */	lfs f0, lit_3475@l(r3)  /* 0x806443C8@l */
/* 804527E4  FC 20 08 18 */	frsp f1, f1
/* 804527E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804527EC  40 80 00 98 */	bge lbl_80452884
/* 804527F0  A8 7E 06 40 */	lha r3, 0x640(r30)
/* 804527F4  2C 03 00 01 */	cmpwi r3, 1
/* 804527F8  40 81 00 10 */	ble lbl_80452808
/* 804527FC  38 03 FF FF */	addi r0, r3, -1
/* 80452800  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80452804  48 00 00 34 */	b lbl_80452838
lbl_80452808:
/* 80452808  40 82 00 28 */	bne lbl_80452830
/* 8045280C  38 00 00 00 */	li r0, 0
/* 80452810  7F C3 F3 78 */	mr r3, r30
/* 80452814  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80452818  4B FF E9 15 */	bl mfish_unagi_get_next_rail_type
/* 8045281C  B0 7E 06 46 */	sth r3, 0x646(r30)
/* 80452820  7F C3 F3 78 */	mr r3, r30
/* 80452824  7F A4 EB 78 */	mr r4, r29
/* 80452828  4B FF EC DD */	bl mfish_unagi_rail_move_init
/* 8045282C  48 00 02 90 */	b lbl_80452ABC
lbl_80452830:
/* 80452830  38 00 00 12 */	li r0, 0x12
/* 80452834  B0 1E 06 40 */	sth r0, 0x640(r30)
lbl_80452838:
/* 80452838  A8 7E 06 42 */	lha r3, 0x642(r30)
/* 8045283C  2C 03 00 00 */	cmpwi r3, 0
/* 80452840  40 81 00 10 */	ble lbl_80452850
/* 80452844  38 03 FF FF */	addi r0, r3, -1
/* 80452848  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 8045284C  48 00 00 0C */	b lbl_80452858
lbl_80452850:
/* 80452850  38 00 00 12 */	li r0, 0x12
/* 80452854  B0 1E 06 42 */	sth r0, 0x642(r30)
lbl_80452858:
/* 80452858  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8045285C  EF BD F0 28 */	fsubs f29, f29, f30
/* 80452860  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80452864  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80452868  40 81 00 1C */	ble lbl_80452884
/* 8045286C  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80452870  FC 20 E8 90 */	fmr f1, f29
/* 80452874  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80452878  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8045287C  7C 9F 02 14 */	add r4, r31, r0
/* 80452880  4B F6 84 5D */	bl chase_xyz_t
lbl_80452884:
/* 80452884  7F C3 F3 78 */	mr r3, r30
/* 80452888  4B FF E9 09 */	bl mfish_unagi_aim_wind_angle_calc
/* 8045288C  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80452890  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80452894  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80452898  7C 9F 02 14 */	add r4, r31, r0
/* 8045289C  4B F6 88 95 */	bl search_position_angleY
/* 804528A0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804528A4  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 804528A8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804528AC  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804528B0  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 804528B4  C8 86 00 00 */	lfd f4, 0(r6)
/* 804528B8  FC 40 28 34 */	frsqrte f2, f5
/* 804528BC  C8 65 00 00 */	lfd f3, 0(r5)
/* 804528C0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804528C4  38 A0 01 C7 */	li r5, 0x1c7
/* 804528C8  C0 04 42 60 */	lfs f0, lit_472@l(r4)  /* 0x80644260@l */
/* 804528CC  7C 64 1B 78 */	mr r4, r3
/* 804528D0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804528D4  38 7E 06 14 */	addi r3, r30, 0x614
/* 804528D8  38 C0 00 2D */	li r6, 0x2d
/* 804528DC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804528E0  FC 25 00 72 */	fmul f1, f5, f1
/* 804528E4  FC 23 08 28 */	fsub f1, f3, f1
/* 804528E8  FC 42 00 72 */	fmul f2, f2, f1
/* 804528EC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804528F0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804528F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804528F8  FC 23 08 28 */	fsub f1, f3, f1
/* 804528FC  FC 42 00 72 */	fmul f2, f2, f1
/* 80452900  FC 22 00 B2 */	fmul f1, f2, f2
/* 80452904  FC 44 00 B2 */	fmul f2, f4, f2
/* 80452908  FC 25 00 72 */	fmul f1, f5, f1
/* 8045290C  FC 23 08 28 */	fsub f1, f3, f1
/* 80452910  FC 22 00 72 */	fmul f1, f2, f1
/* 80452914  FC 25 00 72 */	fmul f1, f5, f1
/* 80452918  FC 20 08 18 */	frsp f1, f1
/* 8045291C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80452920  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80452924  EC 20 08 28 */	fsubs f1, f0, f1
/* 80452928  4B F6 89 E9 */	bl add_calc_short_angle2
/* 8045292C  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 80452930  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80452934  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 80452938  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8045293C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80452940  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80452944  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 80452948  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8045294C  FC 20 38 34 */	frsqrte f1, f7
/* 80452950  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80452954  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80452958  3C 00 43 30 */	lis r0, 0x4330
/* 8045295C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80452960  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80452964  FC 01 00 72 */	fmul f0, f1, f1
/* 80452968  C8 46 00 00 */	lfd f2, 0(r6)
/* 8045296C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80452970  C8 87 00 00 */	lfd f4, 0(r7)
/* 80452974  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80452978  FC A6 00 72 */	fmul f5, f6, f1
/* 8045297C  FC 07 00 32 */	fmul f0, f7, f0
/* 80452980  90 01 00 18 */	stw r0, 0x18(r1)
/* 80452984  38 7E 06 32 */	addi r3, r30, 0x632
/* 80452988  38 A0 01 11 */	li r5, 0x111
/* 8045298C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80452990  38 C0 00 00 */	li r6, 0
/* 80452994  FC 64 00 28 */	fsub f3, f4, f0
/* 80452998  C0 04 00 00 */	lfs f0, 0(r4)
/* 8045299C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804529A0  FC 65 00 F2 */	fmul f3, f5, f3
/* 804529A4  EC 21 07 F2 */	fmuls f1, f1, f31
/* 804529A8  FC 43 00 F2 */	fmul f2, f3, f3
/* 804529AC  FC 20 08 1E */	fctiwz f1, f1
/* 804529B0  FC 66 00 F2 */	fmul f3, f6, f3
/* 804529B4  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 804529B8  FC 47 00 B2 */	fmul f2, f7, f2
/* 804529BC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804529C0  FC 24 10 28 */	fsub f1, f4, f2
/* 804529C4  FC 43 00 72 */	fmul f2, f3, f1
/* 804529C8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804529CC  FC 46 00 B2 */	fmul f2, f6, f2
/* 804529D0  FC 27 00 72 */	fmul f1, f7, f1
/* 804529D4  FC 24 08 28 */	fsub f1, f4, f1
/* 804529D8  FC 22 00 72 */	fmul f1, f2, f1
/* 804529DC  FC 27 00 72 */	fmul f1, f7, f1
/* 804529E0  FC 20 08 18 */	frsp f1, f1
/* 804529E4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804529E8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804529EC  EC 20 08 28 */	fsubs f1, f0, f1
/* 804529F0  4B F6 89 21 */	bl add_calc_short_angle2
/* 804529F4  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 804529F8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804529FC  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80452A00  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 80452A04  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80452A08  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80452A0C  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 80452A10  A8 1E 06 16 */	lha r0, 0x616(r30)
/* 80452A14  FC 20 38 34 */	frsqrte f1, f7
/* 80452A18  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80452A1C  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80452A20  3C 00 43 30 */	lis r0, 0x4330
/* 80452A24  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80452A28  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80452A2C  FC 01 00 72 */	fmul f0, f1, f1
/* 80452A30  C8 46 00 00 */	lfd f2, 0(r6)
/* 80452A34  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80452A38  C8 87 00 00 */	lfd f4, 0(r7)
/* 80452A3C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80452A40  FC A6 00 72 */	fmul f5, f6, f1
/* 80452A44  FC 07 00 32 */	fmul f0, f7, f0
/* 80452A48  90 01 00 28 */	stw r0, 0x28(r1)
/* 80452A4C  38 7E 06 44 */	addi r3, r30, 0x644
/* 80452A50  38 A0 00 12 */	li r5, 0x12
/* 80452A54  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80452A58  38 C0 00 00 */	li r6, 0
/* 80452A5C  FC 64 00 28 */	fsub f3, f4, f0
/* 80452A60  C0 04 00 00 */	lfs f0, 0(r4)
/* 80452A64  EC 21 10 28 */	fsubs f1, f1, f2
/* 80452A68  FC 65 00 F2 */	fmul f3, f5, f3
/* 80452A6C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80452A70  FC 43 00 F2 */	fmul f2, f3, f3
/* 80452A74  FC 20 08 1E */	fctiwz f1, f1
/* 80452A78  FC 66 00 F2 */	fmul f3, f6, f3
/* 80452A7C  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 80452A80  FC 47 00 B2 */	fmul f2, f7, f2
/* 80452A84  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80452A88  FC 24 10 28 */	fsub f1, f4, f2
/* 80452A8C  FC 43 00 72 */	fmul f2, f3, f1
/* 80452A90  FC 22 00 B2 */	fmul f1, f2, f2
/* 80452A94  FC 46 00 B2 */	fmul f2, f6, f2
/* 80452A98  FC 27 00 72 */	fmul f1, f7, f1
/* 80452A9C  FC 24 08 28 */	fsub f1, f4, f1
/* 80452AA0  FC 22 00 72 */	fmul f1, f2, f1
/* 80452AA4  FC 27 00 72 */	fmul f1, f7, f1
/* 80452AA8  FC 20 08 18 */	frsp f1, f1
/* 80452AAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80452AB0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80452AB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80452AB8  4B F6 88 59 */	bl add_calc_short_angle2
lbl_80452ABC:
/* 80452ABC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80452AC0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80452AC4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80452AC8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80452ACC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80452AD0  39 61 00 50 */	addi r11, r1, 0x50
/* 80452AD4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80452AD8  4B C4 84 49 */	bl func_8009AF20
/* 80452ADC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80452AE0  7C 08 03 A6 */	mtlr r0
/* 80452AE4  38 21 00 80 */	addi r1, r1, 0x80
/* 80452AE8  4E 80 00 20 */	blr 
