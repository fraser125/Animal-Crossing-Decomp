lbl_8059A04C:
/* 8059A04C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A050  7C 08 02 A6 */	mflr r0
/* 8059A054  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A058  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059A05C  7C 7F 1B 78 */	mr r31, r3
/* 8059A060  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059A064  7C 9E 23 78 */	mr r30, r4
/* 8059A068  4B FF FD 65 */	bl aIGK_check_patience
/* 8059A06C  2C 03 00 01 */	cmpwi r3, 1
/* 8059A070  40 82 00 18 */	bne lbl_8059A088
/* 8059A074  7F E3 FB 78 */	mr r3, r31
/* 8059A078  7F C5 F3 78 */	mr r5, r30
/* 8059A07C  38 80 00 00 */	li r4, 0
/* 8059A080  48 00 06 A1 */	bl aIGK_setupAction
/* 8059A084  48 00 02 18 */	b lbl_8059A29C
lbl_8059A088:
/* 8059A088  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 8059A08C  38 03 FF FF */	addi r0, r3, -1
/* 8059A090  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059A094  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 8059A098  2C 00 00 00 */	cmpwi r0, 0
/* 8059A09C  41 81 00 5C */	bgt lbl_8059A0F8
/* 8059A0A0  7F E3 FB 78 */	mr r3, r31
/* 8059A0A4  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059A0A8  38 80 00 A8 */	li r4, 0xa8
/* 8059A0AC  48 09 3E 99 */	bl sAdo_OngenPos
/* 8059A0B0  4B AC 2C 45 */	bl fqrand
/* 8059A0B4  3C 60 80 65 */	lis r3, lit_490@ha /* 0x80649F68@ha */
/* 8059A0B8  3C 80 80 65 */	lis r4, lit_427@ha /* 0x80649F50@ha */
/* 8059A0BC  38 A3 9F 68 */	addi r5, r3, lit_490@l /* 0x80649F68@l */
/* 8059A0C0  C0 04 9F 50 */	lfs f0, lit_427@l(r4)  /* 0x80649F50@l */
/* 8059A0C4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8059A0C8  7F E3 FB 78 */	mr r3, r31
/* 8059A0CC  7F C5 F3 78 */	mr r5, r30
/* 8059A0D0  38 80 00 02 */	li r4, 2
/* 8059A0D4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059A0D8  EC 22 08 2A */	fadds f1, f2, f1
/* 8059A0DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A0E0  FC 00 00 1E */	fctiwz f0, f0
/* 8059A0E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059A0E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059A0EC  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059A0F0  48 00 06 31 */	bl aIGK_setupAction
/* 8059A0F4  48 00 01 A8 */	b lbl_8059A29C
lbl_8059A0F8:
/* 8059A0F8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8059A0FC  3C 60 80 65 */	lis r3, lit_553@ha /* 0x80649F74@ha */
/* 8059A100  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8059A104  38 00 00 00 */	li r0, 0
/* 8059A108  C0 03 9F 74 */	lfs f0, lit_553@l(r3)  /* 0x80649F74@l */
/* 8059A10C  EC 81 18 28 */	fsubs f4, f1, f3
/* 8059A110  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8059A114  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8059A118  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8059A11C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8059A120  4C 41 13 82 */	cror 2, 1, 2
/* 8059A124  40 82 00 0C */	bne lbl_8059A130
/* 8059A128  FC 20 20 90 */	fmr f1, f4
/* 8059A12C  48 00 00 08 */	b lbl_8059A134
lbl_8059A130:
/* 8059A130  FC 20 20 50 */	fneg f1, f4
lbl_8059A134:
/* 8059A134  3C 60 80 65 */	lis r3, lit_554@ha /* 0x80649F78@ha */
/* 8059A138  C0 03 9F 78 */	lfs f0, lit_554@l(r3)  /* 0x80649F78@l */
/* 8059A13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059A140  4C 41 13 82 */	cror 2, 1, 2
/* 8059A144  40 82 00 40 */	bne lbl_8059A184
/* 8059A148  3C 60 80 65 */	lis r3, lit_553@ha /* 0x80649F74@ha */
/* 8059A14C  C0 03 9F 74 */	lfs f0, lit_553@l(r3)  /* 0x80649F74@l */
/* 8059A150  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8059A154  40 80 00 1C */	bge lbl_8059A170
/* 8059A158  3C 60 80 65 */	lis r3, lit_555@ha /* 0x80649F7C@ha */
/* 8059A15C  38 00 00 01 */	li r0, 1
/* 8059A160  C0 03 9F 7C */	lfs f0, lit_555@l(r3)  /* 0x80649F7C@l */
/* 8059A164  EC 03 00 28 */	fsubs f0, f3, f0
/* 8059A168  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8059A16C  48 00 00 18 */	b lbl_8059A184
lbl_8059A170:
/* 8059A170  3C 60 80 65 */	lis r3, lit_555@ha /* 0x80649F7C@ha */
/* 8059A174  38 00 00 02 */	li r0, 2
/* 8059A178  C0 03 9F 7C */	lfs f0, lit_555@l(r3)  /* 0x80649F7C@l */
/* 8059A17C  EC 00 18 2A */	fadds f0, f0, f3
/* 8059A180  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8059A184:
/* 8059A184  3C 60 80 65 */	lis r3, lit_553@ha /* 0x80649F74@ha */
/* 8059A188  C0 03 9F 74 */	lfs f0, lit_553@l(r3)  /* 0x80649F74@l */
/* 8059A18C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059A190  4C 41 13 82 */	cror 2, 1, 2
/* 8059A194  40 82 00 0C */	bne lbl_8059A1A0
/* 8059A198  FC 20 10 90 */	fmr f1, f2
/* 8059A19C  48 00 00 08 */	b lbl_8059A1A4
lbl_8059A1A0:
/* 8059A1A0  FC 20 10 50 */	fneg f1, f2
lbl_8059A1A4:
/* 8059A1A4  3C 60 80 65 */	lis r3, lit_554@ha /* 0x80649F78@ha */
/* 8059A1A8  C0 03 9F 78 */	lfs f0, lit_554@l(r3)  /* 0x80649F78@l */
/* 8059A1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059A1B0  4C 41 13 82 */	cror 2, 1, 2
/* 8059A1B4  40 82 00 48 */	bne lbl_8059A1FC
/* 8059A1B8  3C 60 80 65 */	lis r3, lit_553@ha /* 0x80649F74@ha */
/* 8059A1BC  C0 03 9F 74 */	lfs f0, lit_553@l(r3)  /* 0x80649F74@l */
/* 8059A1C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059A1C4  40 80 00 20 */	bge lbl_8059A1E4
/* 8059A1C8  3C 60 80 65 */	lis r3, lit_555@ha /* 0x80649F7C@ha */
/* 8059A1CC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8059A1D0  C0 03 9F 7C */	lfs f0, lit_555@l(r3)  /* 0x80649F7C@l */
/* 8059A1D4  60 00 00 04 */	ori r0, r0, 4
/* 8059A1D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059A1DC  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8059A1E0  48 00 00 1C */	b lbl_8059A1FC
lbl_8059A1E4:
/* 8059A1E4  3C 60 80 65 */	lis r3, lit_555@ha /* 0x80649F7C@ha */
/* 8059A1E8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8059A1EC  C0 23 9F 7C */	lfs f1, lit_555@l(r3)  /* 0x80649F7C@l */
/* 8059A1F0  60 00 00 08 */	ori r0, r0, 8
/* 8059A1F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8059A1F8  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_8059A1FC:
/* 8059A1FC  2C 00 00 00 */	cmpwi r0, 0
/* 8059A200  41 82 00 34 */	beq lbl_8059A234
/* 8059A204  3C 60 80 6C */	lis r3, ref_angl@ha /* 0x806C32D8@ha */
/* 8059A208  54 04 10 3A */	slwi r4, r0, 2
/* 8059A20C  38 63 32 D8 */	addi r3, r3, ref_angl@l /* 0x806C32D8@l */
/* 8059A210  38 00 00 0A */	li r0, 0xa
/* 8059A214  7C C3 20 2E */	lwzx r6, r3, r4
/* 8059A218  7F E3 FB 78 */	mr r3, r31
/* 8059A21C  7F C5 F3 78 */	mr r5, r30
/* 8059A220  38 80 00 02 */	li r4, 2
/* 8059A224  90 DF 02 34 */	stw r6, 0x234(r31)
/* 8059A228  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059A22C  48 00 04 F5 */	bl aIGK_setupAction
/* 8059A230  48 00 00 6C */	b lbl_8059A29C
lbl_8059A234:
/* 8059A234  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8059A238  38 7F 00 36 */	addi r3, r31, 0x36
/* 8059A23C  38 A0 06 00 */	li r5, 0x600
/* 8059A240  7C 04 07 34 */	extsh r4, r0
/* 8059A244  4B E2 09 01 */	bl chase_angle
/* 8059A248  2C 03 00 01 */	cmpwi r3, 1
/* 8059A24C  40 82 00 48 */	bne lbl_8059A294
/* 8059A250  4B AC 2A A5 */	bl fqrand
/* 8059A254  3C 60 80 65 */	lis r3, lit_426@ha /* 0x80649F4C@ha */
/* 8059A258  3C 80 80 65 */	lis r4, lit_427@ha /* 0x80649F50@ha */
/* 8059A25C  38 A3 9F 4C */	addi r5, r3, lit_426@l /* 0x80649F4C@l */
/* 8059A260  C0 44 9F 50 */	lfs f2, lit_427@l(r4)  /* 0x80649F50@l */
/* 8059A264  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059A268  3C 60 80 65 */	lis r3, lit_556@ha /* 0x80649F80@ha */
/* 8059A26C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8059A270  EC 21 00 28 */	fsubs f1, f1, f0
/* 8059A274  C0 03 9F 80 */	lfs f0, lit_556@l(r3)  /* 0x80649F80@l */
/* 8059A278  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059A27C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A280  FC 00 00 1E */	fctiwz f0, f0
/* 8059A284  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059A288  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059A28C  7C 00 1A 14 */	add r0, r0, r3
/* 8059A290  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_8059A294:
/* 8059A294  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8059A298  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059A29C:
/* 8059A29C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A2A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059A2A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059A2A8  7C 08 03 A6 */	mtlr r0
/* 8059A2AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A2B0  4E 80 00 20 */	blr 
