lbl_80435584:
/* 80435584  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80435588  7C 08 02 A6 */	mflr r0
/* 8043558C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80435590  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80435594  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80435598  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8043559C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 804355A0  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 804355A4  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 804355A8  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 804355AC  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 804355B0  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 804355B4  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 804355B8  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 804355BC  F3 41 00 48 */	psq_st f26, 72(r1), 0, 0 /* qr0 */
/* 804355C0  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 804355C4  F3 21 00 38 */	psq_st f25, 56(r1), 0, 0 /* qr0 */
/* 804355C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804355CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804355D0  7C 7E 1B 78 */	mr r30, r3
/* 804355D4  3C 60 80 68 */	lis r3, suisou_pos@ha /* 0x80684E7C@ha */
/* 804355D8  A8 BE 06 30 */	lha r5, 0x630(r30)
/* 804355DC  38 03 4E 7C */	addi r0, r3, suisou_pos@l /* 0x80684E7C@l */
/* 804355E0  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 804355E4  7C 9F 23 78 */	mr r31, r4
/* 804355E8  1C 85 00 0C */	mulli r4, r5, 0xc
/* 804355EC  7C C0 22 14 */	add r6, r0, r4
/* 804355F0  80 A6 00 00 */	lwz r5, 0(r6)
/* 804355F4  80 86 00 04 */	lwz r4, 4(r6)
/* 804355F8  80 06 00 08 */	lwz r0, 8(r6)
/* 804355FC  90 A1 00 08 */	stw r5, 8(r1)
/* 80435600  90 81 00 0C */	stw r4, 0xc(r1)
/* 80435604  90 01 00 10 */	stw r0, 0x10(r1)
/* 80435608  4B F8 54 95 */	bl cos_s
/* 8043560C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435610  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435618  4C 41 13 82 */	cror 2, 1, 2
/* 8043561C  40 82 00 14 */	bne lbl_80435630
/* 80435620  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80435624  4B F8 54 79 */	bl cos_s
/* 80435628  FF 20 08 90 */	fmr f25, f1
/* 8043562C  48 00 00 10 */	b lbl_8043563C
lbl_80435630:
/* 80435630  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80435634  4B F8 54 69 */	bl cos_s
/* 80435638  FF 20 08 50 */	fneg f25, f1
lbl_8043563C:
/* 8043563C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435640  4B F8 54 B1 */	bl sin_s
/* 80435644  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80435648  3C A0 80 64 */	lis r5, lit_838@ha /* 0x806442D0@ha */
/* 8043564C  38 83 42 5C */	addi r4, r3, lit_471@l /* 0x8064425C@l */
/* 80435650  C0 85 42 D0 */	lfs f4, lit_838@l(r5)  /* 0x806442D0@l */
/* 80435654  C0 64 00 00 */	lfs f3, 0(r4)
/* 80435658  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8043565C  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 80435660  EC 84 00 72 */	fmuls f4, f4, f1
/* 80435664  EC 43 06 72 */	fmuls f2, f3, f25
/* 80435668  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 8043566C  EC 23 10 2A */	fadds f1, f3, f2
/* 80435670  EC 24 00 72 */	fmuls f1, f4, f1
/* 80435674  EF 40 08 2A */	fadds f26, f0, f1
/* 80435678  4B F8 54 25 */	bl cos_s
/* 8043567C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435680  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435688  4C 41 13 82 */	cror 2, 1, 2
/* 8043568C  40 82 00 14 */	bne lbl_804356A0
/* 80435690  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80435694  4B F8 54 09 */	bl cos_s
/* 80435698  FF 20 08 90 */	fmr f25, f1
/* 8043569C  48 00 00 10 */	b lbl_804356AC
lbl_804356A0:
/* 804356A0  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 804356A4  4B F8 53 F9 */	bl cos_s
/* 804356A8  FF 20 08 50 */	fneg f25, f1
lbl_804356AC:
/* 804356AC  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 804356B0  4B F8 53 ED */	bl cos_s
/* 804356B4  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 804356B8  3C 80 80 64 */	lis r4, lit_838@ha /* 0x806442D0@ha */
/* 804356BC  C0 63 42 5C */	lfs f3, lit_471@l(r3)  /* 0x8064425C@l */
/* 804356C0  C0 04 42 D0 */	lfs f0, lit_838@l(r4)  /* 0x806442D0@l */
/* 804356C4  3C 80 80 64 */	lis r4, lit_1071@ha /* 0x80644314@ha */
/* 804356C8  EC 43 06 72 */	fmuls f2, f3, f25
/* 804356CC  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 804356D0  EC 80 00 72 */	fmuls f4, f0, f1
/* 804356D4  C0 04 43 14 */	lfs f0, lit_1071@l(r4)  /* 0x80644314@l */
/* 804356D8  54 03 07 F4 */	rlwinm r3, r0, 0, 0x1f, 0x1a
/* 804356DC  38 00 00 00 */	li r0, 0
/* 804356E0  EC 23 10 2A */	fadds f1, f3, f2
/* 804356E4  B0 7E 06 2E */	sth r3, 0x62e(r30)
/* 804356E8  7F C3 F3 78 */	mr r3, r30
/* 804356EC  7F E4 FB 78 */	mr r4, r31
/* 804356F0  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 804356F4  EC 24 00 72 */	fmuls f1, f4, f1
/* 804356F8  EF 20 08 2A */	fadds f25, f0, f1
/* 804356FC  48 00 05 1D */	bl Museum_Fish_objchk_pos_set
/* 80435700  C3 E1 00 08 */	lfs f31, 8(r1)
/* 80435704  3C 60 80 64 */	lis r3, lit_556@ha /* 0x8064427C@ha */
/* 80435708  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 8043570C  38 83 42 7C */	addi r4, r3, lit_556@l /* 0x8064427C@l */
/* 80435710  3C C0 80 64 */	lis r6, lit_555@ha /* 0x80644278@ha */
/* 80435714  C0 24 00 00 */	lfs f1, 0(r4)
/* 80435718  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8043571C  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80435720  38 85 42 98 */	addi r4, r5, lit_588@l /* 0x80644298@l */
/* 80435724  C0 86 42 78 */	lfs f4, lit_555@l(r6)  /* 0x80644278@l */
/* 80435728  3C 60 80 64 */	lis r3, lit_1997@ha /* 0x8064437C@ha */
/* 8043572C  3C A0 80 64 */	lis r5, lit_9247@ha /* 0x80644528@ha */
/* 80435730  EC 21 00 32 */	fmuls f1, f1, f0
/* 80435734  C0 03 43 7C */	lfs f0, lit_1997@l(r3)  /* 0x8064437C@l */
/* 80435738  3C 60 80 64 */	lis r3, lit_8410@ha /* 0x806444B4@ha */
/* 8043573C  C0 65 45 28 */	lfs f3, lit_9247@l(r5)  /* 0x80644528@l */
/* 80435740  C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 80435744  EF C4 F8 2A */	fadds f30, f4, f31
/* 80435748  EC 01 00 24 */	fdivs f0, f1, f0
/* 8043574C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80435750  C0 43 44 B4 */	lfs f2, lit_8410@l(r3)  /* 0x806444B4@l */
/* 80435754  EC 01 00 32 */	fmuls f0, f1, f0
/* 80435758  EF A3 28 2A */	fadds f29, f3, f5
/* 8043575C  EF 82 28 2A */	fadds f28, f2, f5
/* 80435760  FC 00 00 1E */	fctiwz f0, f0
/* 80435764  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80435768  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8043576C  7C 03 07 34 */	extsh r3, r0
/* 80435770  4B F8 53 2D */	bl cos_s
/* 80435774  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x8064434C@ha */
/* 80435778  3C 80 80 64 */	lis r4, lit_9248@ha /* 0x8064452C@ha */
/* 8043577C  38 A3 43 4C */	addi r5, r3, lit_1559@l /* 0x8064434C@l */
/* 80435780  C0 04 45 2C */	lfs f0, lit_9248@l(r4)  /* 0x8064452C@l */
/* 80435784  C0 45 00 00 */	lfs f2, 0(r5)
/* 80435788  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043578C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80435790  EF 60 08 28 */	fsubs f27, f0, f1
/* 80435794  4B F8 53 5D */	bl sin_s
/* 80435798  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 8043579C  3C 60 80 64 */	lis r3, lit_556@ha /* 0x8064427C@ha */
/* 804357A0  38 A3 42 7C */	addi r5, r3, lit_556@l /* 0x8064427C@l */
/* 804357A4  EC 20 08 2A */	fadds f1, f0, f1
/* 804357A8  3C 60 80 64 */	lis r3, lit_1997@ha /* 0x8064437C@ha */
/* 804357AC  FC 00 F8 90 */	fmr f0, f31
/* 804357B0  38 83 43 7C */	addi r4, r3, lit_1997@l /* 0x8064437C@l */
/* 804357B4  C0 45 00 00 */	lfs f2, 0(r5)
/* 804357B8  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 804357BC  EC 61 00 28 */	fsubs f3, f1, f0
/* 804357C0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804357C4  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 804357C8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 804357CC  EC 22 08 24 */	fdivs f1, f2, f1
/* 804357D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804357D4  FC 00 00 1E */	fctiwz f0, f0
/* 804357D8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804357DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804357E0  7C 03 07 34 */	extsh r3, r0
/* 804357E4  4B F8 52 B9 */	bl cos_s
/* 804357E8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804357EC  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x8064434C@ha */
/* 804357F0  38 83 43 4C */	addi r4, r3, lit_1559@l /* 0x8064434C@l */
/* 804357F4  C0 7E 05 A0 */	lfs f3, 0x5a0(r30)
/* 804357F8  EC 40 06 B2 */	fmuls f2, f0, f26
/* 804357FC  C0 E4 00 00 */	lfs f7, 0(r4)
/* 80435800  EC 80 06 72 */	fmuls f4, f0, f25
/* 80435804  3C 60 80 64 */	lis r3, lit_9248@ha /* 0x8064452C@ha */
/* 80435808  38 83 45 2C */	addi r4, r3, lit_9248@l /* 0x8064452C@l */
/* 8043580C  C1 1E 05 A8 */	lfs f8, 0x5a8(r30)
/* 80435810  EC 03 10 2A */	fadds f0, f3, f2
/* 80435814  C0 C4 00 00 */	lfs f6, 0(r4)
/* 80435818  EC A3 10 28 */	fsubs f5, f3, f2
/* 8043581C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435820  EC 48 20 2A */	fadds f2, f8, f4
/* 80435824  EF FF 00 28 */	fsubs f31, f31, f0
/* 80435828  EC 88 20 28 */	fsubs f4, f8, f4
/* 8043582C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435830  EF 9C 10 28 */	fsubs f28, f28, f2
/* 80435834  FC 60 F8 50 */	fneg f3, f31
/* 80435838  EF DE 28 28 */	fsubs f30, f30, f5
/* 8043583C  EC 27 00 72 */	fmuls f1, f7, f1
/* 80435840  D0 7E 05 FC */	stfs f3, 0x5fc(r30)
/* 80435844  FC 40 E0 50 */	fneg f2, f28
/* 80435848  EF BD 20 28 */	fsubs f29, f29, f4
/* 8043584C  D3 DE 06 00 */	stfs f30, 0x600(r30)
/* 80435850  EF 46 08 28 */	fsubs f26, f6, f1
/* 80435854  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80435858  D0 5E 06 04 */	stfs f2, 0x604(r30)
/* 8043585C  D3 BE 06 08 */	stfs f29, 0x608(r30)
/* 80435860  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80435864  EF 7B 08 28 */	fsubs f27, f27, f1
/* 80435868  EF 5A 08 28 */	fsubs f26, f26, f1
/* 8043586C  40 81 00 24 */	ble lbl_80435890
/* 80435870  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80435874  C0 1E 05 A0 */	lfs f0, 0x5a0(r30)
/* 80435878  EC 00 F8 2A */	fadds f0, f0, f31
/* 8043587C  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80435880  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 80435884  60 00 00 02 */	ori r0, r0, 2
/* 80435888  B0 1E 06 2E */	sth r0, 0x62e(r30)
/* 8043588C  48 00 00 28 */	b lbl_804358B4
lbl_80435890:
/* 80435890  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80435894  40 80 00 20 */	bge lbl_804358B4
/* 80435898  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 8043589C  C0 1E 05 A0 */	lfs f0, 0x5a0(r30)
/* 804358A0  EC 00 F0 2A */	fadds f0, f0, f30
/* 804358A4  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 804358A8  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 804358AC  60 00 00 04 */	ori r0, r0, 4
/* 804358B0  B0 1E 06 2E */	sth r0, 0x62e(r30)
lbl_804358B4:
/* 804358B4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804358B8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804358BC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804358C0  40 81 00 24 */	ble lbl_804358E4
/* 804358C4  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 804358C8  C0 1E 05 A8 */	lfs f0, 0x5a8(r30)
/* 804358CC  EC 00 E0 2A */	fadds f0, f0, f28
/* 804358D0  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 804358D4  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 804358D8  60 00 00 08 */	ori r0, r0, 8
/* 804358DC  B0 1E 06 2E */	sth r0, 0x62e(r30)
/* 804358E0  48 00 00 28 */	b lbl_80435908
lbl_804358E4:
/* 804358E4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804358E8  40 80 00 20 */	bge lbl_80435908
/* 804358EC  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 804358F0  C0 1E 05 A8 */	lfs f0, 0x5a8(r30)
/* 804358F4  EC 00 E8 2A */	fadds f0, f0, f29
/* 804358F8  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 804358FC  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 80435900  60 00 00 10 */	ori r0, r0, 0x10
/* 80435904  B0 1E 06 2E */	sth r0, 0x62e(r30)
lbl_80435908:
/* 80435908  A8 7E 06 2E */	lha r3, 0x62e(r30)
/* 8043590C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80435910  41 82 00 10 */	beq lbl_80435920
/* 80435914  38 00 C0 00 */	li r0, -16384
/* 80435918  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 8043591C  48 00 00 14 */	b lbl_80435930
lbl_80435920:
/* 80435920  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80435924  41 82 00 0C */	beq lbl_80435930
/* 80435928  38 00 40 00 */	li r0, 0x4000
/* 8043592C  B0 1E 06 2C */	sth r0, 0x62c(r30)
lbl_80435930:
/* 80435930  A8 7E 06 2E */	lha r3, 0x62e(r30)
/* 80435934  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80435938  41 82 00 34 */	beq lbl_8043596C
/* 8043593C  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 80435940  41 82 00 20 */	beq lbl_80435960
/* 80435944  A8 9E 06 2C */	lha r4, 0x62c(r30)
/* 80435948  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8043594C  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80435950  7C 83 0E 70 */	srawi r3, r4, 1
/* 80435954  7C 03 00 50 */	subf r0, r3, r0
/* 80435958  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 8043595C  48 00 00 38 */	b lbl_80435994
lbl_80435960:
/* 80435960  38 00 80 00 */	li r0, -32768
/* 80435964  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 80435968  48 00 00 2C */	b lbl_80435994
lbl_8043596C:
/* 8043596C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80435970  41 82 00 24 */	beq lbl_80435994
/* 80435974  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 80435978  41 82 00 14 */	beq lbl_8043598C
/* 8043597C  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 80435980  7C 00 0E 70 */	srawi r0, r0, 1
/* 80435984  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 80435988  48 00 00 0C */	b lbl_80435994
lbl_8043598C:
/* 8043598C  38 00 00 00 */	li r0, 0
/* 80435990  B0 1E 06 2C */	sth r0, 0x62c(r30)
lbl_80435994:
/* 80435994  C0 5E 06 00 */	lfs f2, 0x600(r30)
/* 80435998  C0 7E 05 FC */	lfs f3, 0x5fc(r30)
/* 8043599C  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804359A0  40 80 00 0C */	bge lbl_804359AC
/* 804359A4  FC 00 10 90 */	fmr f0, f2
/* 804359A8  48 00 00 08 */	b lbl_804359B0
lbl_804359AC:
/* 804359AC  FC 00 18 90 */	fmr f0, f3
lbl_804359B0:
/* 804359B0  C0 9E 06 08 */	lfs f4, 0x608(r30)
/* 804359B4  C0 BE 06 04 */	lfs f5, 0x604(r30)
/* 804359B8  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 804359BC  40 80 00 0C */	bge lbl_804359C8
/* 804359C0  FC 20 20 90 */	fmr f1, f4
/* 804359C4  48 00 00 08 */	b lbl_804359CC
lbl_804359C8:
/* 804359C8  FC 20 28 90 */	fmr f1, f5
lbl_804359CC:
/* 804359CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804359D0  40 80 00 18 */	bge lbl_804359E8
/* 804359D4  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 804359D8  40 80 00 08 */	bge lbl_804359E0
/* 804359DC  48 00 00 20 */	b lbl_804359FC
lbl_804359E0:
/* 804359E0  FC 80 28 90 */	fmr f4, f5
/* 804359E4  48 00 00 18 */	b lbl_804359FC
lbl_804359E8:
/* 804359E8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804359EC  40 80 00 0C */	bge lbl_804359F8
/* 804359F0  FC 80 10 90 */	fmr f4, f2
/* 804359F4  48 00 00 08 */	b lbl_804359FC
lbl_804359F8:
/* 804359F8  FC 80 18 90 */	fmr f4, f3
lbl_804359FC:
/* 804359FC  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 80435A00  C0 03 42 80 */	lfs f0, lit_557@l(r3)  /* 0x80644280@l */
/* 80435A04  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80435A08  40 80 00 18 */	bge lbl_80435A20
/* 80435A0C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80435A10  EC 00 20 28 */	fsubs f0, f0, f4
/* 80435A14  C0 23 42 5C */	lfs f1, lit_471@l(r3)  /* 0x8064425C@l */
/* 80435A18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80435A1C  EF 7B 00 28 */	fsubs f27, f27, f0
lbl_80435A20:
/* 80435A20  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A24  4B F8 50 CD */	bl sin_s
/* 80435A28  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80435A2C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A30  EF 20 08 2A */	fadds f25, f0, f1
/* 80435A34  4B F8 50 BD */	bl sin_s
/* 80435A38  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80435A3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80435A40  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 80435A44  40 80 00 18 */	bge lbl_80435A5C
/* 80435A48  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A4C  4B F8 50 A5 */	bl sin_s
/* 80435A50  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80435A54  EF 80 08 28 */	fsubs f28, f0, f1
/* 80435A58  48 00 00 14 */	b lbl_80435A6C
lbl_80435A5C:
/* 80435A5C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A60  4B F8 50 91 */	bl sin_s
/* 80435A64  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80435A68  EF 80 08 2A */	fadds f28, f0, f1
lbl_80435A6C:
/* 80435A6C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A70  4B F8 50 2D */	bl cos_s
/* 80435A74  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80435A78  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A7C  EF 20 08 2A */	fadds f25, f0, f1
/* 80435A80  4B F8 50 1D */	bl cos_s
/* 80435A84  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80435A88  EC 00 08 28 */	fsubs f0, f0, f1
/* 80435A8C  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 80435A90  40 80 00 18 */	bge lbl_80435AA8
/* 80435A94  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435A98  4B F8 50 05 */	bl cos_s
/* 80435A9C  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80435AA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80435AA4  48 00 00 14 */	b lbl_80435AB8
lbl_80435AA8:
/* 80435AA8  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435AAC  4B F8 4F F1 */	bl cos_s
/* 80435AB0  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80435AB4  EC 00 08 2A */	fadds f0, f0, f1
lbl_80435AB8:
/* 80435AB8  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 80435ABC  40 80 00 54 */	bge lbl_80435B10
/* 80435AC0  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435AC4  4B F8 4F D9 */	bl cos_s
/* 80435AC8  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80435ACC  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435AD0  EF 20 08 2A */	fadds f25, f0, f1
/* 80435AD4  4B F8 4F C9 */	bl cos_s
/* 80435AD8  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80435ADC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80435AE0  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 80435AE4  40 80 00 18 */	bge lbl_80435AFC
/* 80435AE8  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435AEC  4B F8 4F B1 */	bl cos_s
/* 80435AF0  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80435AF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80435AF8  48 00 00 64 */	b lbl_80435B5C
lbl_80435AFC:
/* 80435AFC  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435B00  4B F8 4F 9D */	bl cos_s
/* 80435B04  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80435B08  EC 20 08 2A */	fadds f1, f0, f1
/* 80435B0C  48 00 00 50 */	b lbl_80435B5C
lbl_80435B10:
/* 80435B10  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435B14  4B F8 4F DD */	bl sin_s
/* 80435B18  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80435B1C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435B20  EF 20 08 2A */	fadds f25, f0, f1
/* 80435B24  4B F8 4F CD */	bl sin_s
/* 80435B28  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80435B2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80435B30  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 80435B34  40 80 00 18 */	bge lbl_80435B4C
/* 80435B38  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435B3C  4B F8 4F B5 */	bl sin_s
/* 80435B40  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80435B44  EC 20 08 28 */	fsubs f1, f0, f1
/* 80435B48  48 00 00 14 */	b lbl_80435B5C
lbl_80435B4C:
/* 80435B4C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80435B50  4B F8 4F A1 */	bl sin_s
/* 80435B54  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80435B58  EC 20 08 2A */	fadds f1, f0, f1
lbl_80435B5C:
/* 80435B5C  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 80435B60  C0 03 42 80 */	lfs f0, lit_557@l(r3)  /* 0x80644280@l */
/* 80435B64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435B68  40 80 00 18 */	bge lbl_80435B80
/* 80435B6C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80435B70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80435B74  C0 23 42 5C */	lfs f1, lit_471@l(r3)  /* 0x8064425C@l */
/* 80435B78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80435B7C  EF 5A 00 28 */	fsubs f26, f26, f0
lbl_80435B80:
/* 80435B80  EF 5A D8 28 */	fsubs f26, f26, f27
/* 80435B84  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80435B88  C0 23 42 60 */	lfs f1, lit_472@l(r3)  /* 0x80644260@l */
/* 80435B8C  FC 40 D0 50 */	fneg f2, f26
/* 80435B90  4B FD 64 71 */	bl atans_table
/* 80435B94  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80435B98  B0 7E 06 12 */	sth r3, 0x612(r30)
/* 80435B9C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80435BA0  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80435BA4  40 81 00 24 */	ble lbl_80435BC8
/* 80435BA8  C0 1E 05 A4 */	lfs f0, 0x5a4(r30)
/* 80435BAC  3C 60 80 64 */	lis r3, lit_6507@ha /* 0x8064442C@ha */
/* 80435BB0  EC 20 D8 2A */	fadds f1, f0, f27
/* 80435BB4  C0 03 44 2C */	lfs f0, lit_6507@l(r3)  /* 0x8064442C@l */
/* 80435BB8  D0 3E 05 A4 */	stfs f1, 0x5a4(r30)
/* 80435BBC  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80435BC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80435BC4  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
lbl_80435BC8:
/* 80435BC8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80435BCC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80435BD0  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80435BD4  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80435BD8  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80435BDC  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80435BE0  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 80435BE4  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80435BE8  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 80435BEC  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 80435BF0  E3 41 00 48 */	psq_l f26, 72(r1), 0, 0 /* qr0 */
/* 80435BF4  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 80435BF8  E3 21 00 38 */	psq_l f25, 56(r1), 0, 0 /* qr0 */
/* 80435BFC  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 80435C00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80435C04  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80435C08  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80435C0C  7C 08 03 A6 */	mtlr r0
/* 80435C10  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80435C14  4E 80 00 20 */	blr 