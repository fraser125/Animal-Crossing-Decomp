lbl_80455F98:
/* 80455F98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80455F9C  7C 08 02 A6 */	mflr r0
/* 80455FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80455FA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80455FA8  4B C4 4F 2D */	bl func_8009AED4
/* 80455FAC  7C 7E 1B 78 */	mr r30, r3
/* 80455FB0  7C 9F 23 78 */	mr r31, r4
/* 80455FB4  3B BE 00 38 */	addi r29, r30, 0x38
/* 80455FB8  80 83 05 84 */	lwz r4, 0x584(r3)
/* 80455FBC  7F A3 EB 78 */	mr r3, r29
/* 80455FC0  80 BE 05 88 */	lwz r5, 0x588(r30)
/* 80455FC4  38 DD 04 F0 */	addi r6, r29, 0x4f0
/* 80455FC8  38 FD 05 14 */	addi r7, r29, 0x514
/* 80455FCC  4B F1 AA C9 */	bl cKF_SkeletonInfo_R_ct
/* 80455FD0  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80455FD4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80455FD8  38 A4 42 5C */	addi r5, r4, lit_471@l /* 0x8064425C@l */
/* 80455FDC  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 80455FE0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80455FE4  7F A3 EB 78 */	mr r3, r29
/* 80455FE8  80 9D 05 50 */	lwz r4, 0x550(r29)
/* 80455FEC  38 A0 00 00 */	li r5, 0
/* 80455FF0  4B F1 B7 C9 */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 80455FF4  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 80455FF8  3C 60 80 64 */	lis r3, lit_8234@ha /* 0x806444AC@ha */
/* 80455FFC  3C 80 80 68 */	lis r4, suisou_pos@ha /* 0x80684E7C@ha */
/* 80456000  C0 03 44 AC */	lfs f0, lit_8234@l(r3)  /* 0x806444AC@l */
/* 80456004  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80456008  38 04 4E 7C */	addi r0, r4, suisou_pos@l /* 0x80684E7C@l */
/* 8045600C  7C 80 2A 14 */	add r4, r0, r5
/* 80456010  80 64 00 00 */	lwz r3, 0(r4)
/* 80456014  80 04 00 04 */	lwz r0, 4(r4)
/* 80456018  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 8045601C  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80456020  80 04 00 08 */	lwz r0, 8(r4)
/* 80456024  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80456028  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8045602C  4B C0 6C A1 */	bl func_8005CCCC
/* 80456030  B0 7E 06 0E */	sth r3, 0x60e(r30)
/* 80456034  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 80456038  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8045603C  4B C0 6C B9 */	bl fqrand
/* 80456040  A8 9E 00 2E */	lha r4, 0x2e(r30)
/* 80456044  3C 00 43 30 */	lis r0, 0x4330
/* 80456048  90 01 00 08 */	stw r0, 8(r1)
/* 8045604C  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 80456050  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80456054  C8 45 42 8C */	lfd f2, lit_570@l(r5)  /* 0x8064428C@l */
/* 80456058  90 81 00 0C */	stw r4, 0xc(r1)
/* 8045605C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80456060  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80456064  C8 01 00 08 */	lfd f0, 8(r1)
/* 80456068  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045606C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80456070  EC 22 00 72 */	fmuls f1, f2, f1
/* 80456074  FC 20 08 1E */	fctiwz f1, f1
/* 80456078  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8045607C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80456080  7C 00 1A 14 */	add r0, r0, r3
/* 80456084  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80456088  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8045608C  4B C0 6C 69 */	bl fqrand
/* 80456090  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80456094  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 80456098  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8045609C  38 E3 F0 50 */	addi r7, r3, data_8065F050@l /* 0x8065F050@l */
/* 804560A0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804560A4  38 00 00 05 */	li r0, 5
/* 804560A8  7F C3 F3 78 */	mr r3, r30
/* 804560AC  7F E4 FB 78 */	mr r4, r31
/* 804560B0  EC 00 08 2A */	fadds f0, f0, f1
/* 804560B4  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 804560B8  80 C7 00 00 */	lwz r6, 0(r7)
/* 804560BC  80 A7 00 04 */	lwz r5, 4(r7)
/* 804560C0  90 DE 05 AC */	stw r6, 0x5ac(r30)
/* 804560C4  90 BE 05 B0 */	stw r5, 0x5b0(r30)
/* 804560C8  80 A7 00 08 */	lwz r5, 8(r7)
/* 804560CC  90 BE 05 B4 */	stw r5, 0x5b4(r30)
/* 804560D0  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 804560D4  48 00 00 1D */	bl mfish_zarigani_normal_process_init
/* 804560D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804560DC  4B C4 4E 45 */	bl func_8009AF20
/* 804560E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804560E4  7C 08 03 A6 */	mtlr r0
/* 804560E8  38 21 00 30 */	addi r1, r1, 0x30
/* 804560EC  4E 80 00 20 */	blr 
