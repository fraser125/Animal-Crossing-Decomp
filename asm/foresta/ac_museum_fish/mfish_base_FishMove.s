lbl_804318BC:
/* 804318BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804318C0  7C 08 02 A6 */	mflr r0
/* 804318C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804318C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804318CC  7C 9F 23 78 */	mr r31, r4
/* 804318D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804318D4  7C 7E 1B 78 */	mr r30, r3
/* 804318D8  80 03 05 9C */	lwz r0, 0x59c(r3)
/* 804318DC  2C 00 00 18 */	cmpwi r0, 0x18
/* 804318E0  40 82 00 2C */	bne lbl_8043190C
/* 804318E4  3C 60 80 43 */	lis r3, mfish_peck_process@ha /* 0x80433438@ha */
/* 804318E8  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 804318EC  38 03 34 38 */	addi r0, r3, mfish_peck_process@l /* 0x80433438@l */
/* 804318F0  7C 04 00 40 */	cmplw r4, r0
/* 804318F4  41 82 00 18 */	beq lbl_8043190C
/* 804318F8  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 804318FC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80431900  EC 01 00 32 */	fmuls f0, f1, f0
/* 80431904  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80431908  48 00 00 24 */	b lbl_8043192C
lbl_8043190C:
/* 8043190C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80431910  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80644264@ha */
/* 80431914  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80431918  C0 24 42 60 */	lfs f1, lit_472@l(r4)  /* 0x80644260@l */
/* 8043191C  C0 43 42 64 */	lfs f2, lit_526@l(r3)  /* 0x80644264@l */
/* 80431920  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80431924  EC 21 00 28 */	fsubs f1, f1, f0
/* 80431928  4B F8 99 B1 */	bl add_calc0
lbl_8043192C:
/* 8043192C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80431930  4B F8 91 C1 */	bl sin_s
/* 80431934  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80431938  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043193C  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80431940  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80431944  4B F8 91 59 */	bl cos_s
/* 80431948  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043194C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80431950  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80431954  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80431958  4B F8 91 99 */	bl sin_s
/* 8043195C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80431960  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80431964  EC 20 00 72 */	fmuls f1, f0, f1
/* 80431968  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043196C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80431970  4C 41 13 82 */	cror 2, 1, 2
/* 80431974  40 82 00 18 */	bne lbl_8043198C
/* 80431978  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043197C  4B F8 91 75 */	bl sin_s
/* 80431980  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80431984  EC 00 00 72 */	fmuls f0, f0, f1
/* 80431988  48 00 00 18 */	b lbl_804319A0
lbl_8043198C:
/* 8043198C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80431990  4B F8 91 61 */	bl sin_s
/* 80431994  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80431998  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043199C  FC 00 00 50 */	fneg f0, f0
lbl_804319A0:
/* 804319A0  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 804319A4  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 804319A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804319AC  40 81 00 50 */	ble lbl_804319FC
/* 804319B0  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 804319B4  4B F8 91 3D */	bl sin_s
/* 804319B8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804319BC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804319C0  EC 20 00 72 */	fmuls f1, f0, f1
/* 804319C4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804319C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804319CC  4C 41 13 82 */	cror 2, 1, 2
/* 804319D0  40 82 00 18 */	bne lbl_804319E8
/* 804319D4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 804319D8  4B F8 91 19 */	bl sin_s
/* 804319DC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804319E0  EC 20 00 72 */	fmuls f1, f0, f1
/* 804319E4  48 00 00 18 */	b lbl_804319FC
lbl_804319E8:
/* 804319E8  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 804319EC  4B F8 91 05 */	bl sin_s
/* 804319F0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804319F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804319F8  FC 20 00 50 */	fneg f1, f0
lbl_804319FC:
/* 804319FC  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80431A00  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 80431A04  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 80431A08  C0 83 42 6C */	lfs f4, lit_528@l(r3)  /* 0x8064426C@l */
/* 80431A0C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80431A10  FC 60 10 90 */	fmr f3, f2
/* 80431A14  4B F8 97 9D */	bl add_calc
/* 80431A18  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 80431A1C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80431A20  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80431A24  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 80431A28  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80431A2C  EC 21 00 2A */	fadds f1, f1, f0
/* 80431A30  C0 7E 05 D4 */	lfs f3, 0x5d4(r30)
/* 80431A34  4B F8 98 61 */	bl add_calc2
/* 80431A38  7F C3 F3 78 */	mr r3, r30
/* 80431A3C  7F E4 FB 78 */	mr r4, r31
/* 80431A40  48 00 67 D9 */	bl mfish_move_smooth
/* 80431A44  7F C4 F3 78 */	mr r4, r30
/* 80431A48  7F E5 FB 78 */	mr r5, r31
/* 80431A4C  38 61 00 08 */	addi r3, r1, 8
/* 80431A50  48 00 5D 55 */	bl mfish_get_flow_vec
/* 80431A54  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80431A58  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 80431A5C  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80431A60  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 80431A64  EC 01 00 2A */	fadds f0, f1, f0
/* 80431A68  C0 63 42 70 */	lfs f3, lit_529@l(r3)  /* 0x80644270@l */
/* 80431A6C  EC 02 00 2A */	fadds f0, f2, f0
/* 80431A70  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80431A74  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80431A78  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80431A7C  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80431A80  EC 01 00 2A */	fadds f0, f1, f0
/* 80431A84  EC 02 00 2A */	fadds f0, f2, f0
/* 80431A88  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80431A8C  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80431A90  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80431A94  EC 01 00 2A */	fadds f0, f1, f0
/* 80431A98  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80431A9C  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80431AA0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80431AA4  40 80 00 08 */	bge lbl_80431AAC
/* 80431AA8  48 00 00 08 */	b lbl_80431AB0
lbl_80431AAC:
/* 80431AAC  FC 60 08 90 */	fmr f3, f1
lbl_80431AB0:
/* 80431AB0  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 80431AB4  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 80431AB8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80431ABC  40 81 00 08 */	ble lbl_80431AC4
/* 80431AC0  48 00 00 1C */	b lbl_80431ADC
lbl_80431AC4:
/* 80431AC4  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 80431AC8  C0 03 42 70 */	lfs f0, lit_529@l(r3)  /* 0x80644270@l */
/* 80431ACC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80431AD0  40 80 00 08 */	bge lbl_80431AD8
/* 80431AD4  48 00 00 08 */	b lbl_80431ADC
lbl_80431AD8:
/* 80431AD8  FC 00 08 90 */	fmr f0, f1
lbl_80431ADC:
/* 80431ADC  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80431AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80431AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80431AE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80431AEC  7C 08 03 A6 */	mtlr r0
/* 80431AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80431AF4  4E 80 00 20 */	blr 
