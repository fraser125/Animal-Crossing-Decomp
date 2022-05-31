lbl_8059FECC:
/* 8059FECC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059FED0  7C 08 02 A6 */	mflr r0
/* 8059FED4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059FED8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059FEDC  7C 7F 1B 78 */	mr r31, r3
/* 8059FEE0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059FEE4  7C 9E 23 78 */	mr r30, r4
/* 8059FEE8  4B FF FD C5 */	bl aITT_check_patience
/* 8059FEEC  2C 03 00 00 */	cmpwi r3, 0
/* 8059FEF0  40 82 02 44 */	bne lbl_805A0134
/* 8059FEF4  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 8059FEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8059FEFC  41 81 00 18 */	bgt lbl_8059FF14
/* 8059FF00  7F E3 FB 78 */	mr r3, r31
/* 8059FF04  7F C5 F3 78 */	mr r5, r30
/* 8059FF08  38 80 00 05 */	li r4, 5
/* 8059FF0C  48 00 05 19 */	bl aITT_setupAction
/* 8059FF10  48 00 02 24 */	b lbl_805A0134
lbl_8059FF14:
/* 8059FF14  38 03 FF FF */	addi r0, r3, -1
/* 8059FF18  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 8059FF1C  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059FF20  3B C0 00 00 */	li r30, 0
/* 8059FF24  C0 03 A2 54 */	lfs f0, lit_405@l(r3)  /* 0x8064A254@l */
/* 8059FF28  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8059FF2C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8059FF30  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8059FF34  EC 81 18 28 */	fsubs f4, f1, f3
/* 8059FF38  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8059FF3C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8059FF40  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8059FF44  4C 41 13 82 */	cror 2, 1, 2
/* 8059FF48  40 82 00 0C */	bne lbl_8059FF54
/* 8059FF4C  FC 20 20 90 */	fmr f1, f4
/* 8059FF50  48 00 00 08 */	b lbl_8059FF58
lbl_8059FF54:
/* 8059FF54  FC 20 20 50 */	fneg f1, f4
lbl_8059FF58:
/* 8059FF58  3C 60 80 65 */	lis r3, lit_548@ha /* 0x8064A280@ha */
/* 8059FF5C  C0 03 A2 80 */	lfs f0, lit_548@l(r3)  /* 0x8064A280@l */
/* 8059FF60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FF64  4C 41 13 82 */	cror 2, 1, 2
/* 8059FF68  40 82 00 40 */	bne lbl_8059FFA8
/* 8059FF6C  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 8059FF70  C0 03 A2 54 */	lfs f0, lit_405@l(r3)  /* 0x8064A254@l */
/* 8059FF74  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8059FF78  40 80 00 1C */	bge lbl_8059FF94
/* 8059FF7C  3C 60 80 65 */	lis r3, lit_549@ha /* 0x8064A284@ha */
/* 8059FF80  3B C0 00 01 */	li r30, 1
/* 8059FF84  C0 03 A2 84 */	lfs f0, lit_549@l(r3)  /* 0x8064A284@l */
/* 8059FF88  EC 03 00 28 */	fsubs f0, f3, f0
/* 8059FF8C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8059FF90  48 00 00 18 */	b lbl_8059FFA8
lbl_8059FF94:
/* 8059FF94  3C 60 80 65 */	lis r3, lit_549@ha /* 0x8064A284@ha */
/* 8059FF98  3B C0 00 02 */	li r30, 2
/* 8059FF9C  C0 03 A2 84 */	lfs f0, lit_549@l(r3)  /* 0x8064A284@l */
/* 8059FFA0  EC 00 18 2A */	fadds f0, f0, f3
/* 8059FFA4  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8059FFA8:
/* 8059FFA8  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 8059FFAC  C0 03 A2 54 */	lfs f0, lit_405@l(r3)  /* 0x8064A254@l */
/* 8059FFB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059FFB4  4C 41 13 82 */	cror 2, 1, 2
/* 8059FFB8  40 82 00 0C */	bne lbl_8059FFC4
/* 8059FFBC  FC 20 10 90 */	fmr f1, f2
/* 8059FFC0  48 00 00 08 */	b lbl_8059FFC8
lbl_8059FFC4:
/* 8059FFC4  FC 20 10 50 */	fneg f1, f2
lbl_8059FFC8:
/* 8059FFC8  3C 60 80 65 */	lis r3, lit_548@ha /* 0x8064A280@ha */
/* 8059FFCC  C0 03 A2 80 */	lfs f0, lit_548@l(r3)  /* 0x8064A280@l */
/* 8059FFD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FFD4  4C 41 13 82 */	cror 2, 1, 2
/* 8059FFD8  40 82 00 48 */	bne lbl_805A0020
/* 8059FFDC  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 8059FFE0  C0 03 A2 54 */	lfs f0, lit_405@l(r3)  /* 0x8064A254@l */
/* 8059FFE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059FFE8  40 80 00 20 */	bge lbl_805A0008
/* 8059FFEC  3C 60 80 65 */	lis r3, lit_549@ha /* 0x8064A284@ha */
/* 8059FFF0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8059FFF4  C0 03 A2 84 */	lfs f0, lit_549@l(r3)  /* 0x8064A284@l */
/* 8059FFF8  63 DE 00 04 */	ori r30, r30, 4
/* 8059FFFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805A0000  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A0004  48 00 00 1C */	b lbl_805A0020
lbl_805A0008:
/* 805A0008  3C 60 80 65 */	lis r3, lit_549@ha /* 0x8064A284@ha */
/* 805A000C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805A0010  C0 23 A2 84 */	lfs f1, lit_549@l(r3)  /* 0x8064A284@l */
/* 805A0014  63 DE 00 08 */	ori r30, r30, 8
/* 805A0018  EC 01 00 2A */	fadds f0, f1, f0
/* 805A001C  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_805A0020:
/* 805A0020  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805A0024  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064A250@ha */
/* 805A0028  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A002C  C0 23 A2 50 */	lfs f1, lit_404@l(r3)  /* 0x8064A250@l */
/* 805A0030  38 61 00 08 */	addi r3, r1, 8
/* 805A0034  90 81 00 08 */	stw r4, 8(r1)
/* 805A0038  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A003C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A0040  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A0044  4B DE F7 DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 805A0048  3C 60 80 65 */	lis r3, data_8064A24C@ha /* 0x8064A24C@ha */
/* 805A004C  2C 1E 00 00 */	cmpwi r30, 0
/* 805A0050  C0 03 A2 4C */	lfs f0, data_8064A24C@l(r3)  /* 0x8064A24C@l */
/* 805A0054  EC 00 08 2A */	fadds f0, f0, f1
/* 805A0058  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 805A005C  41 82 00 34 */	beq lbl_805A0090
/* 805A0060  3C 80 80 6C */	lis r4, data_806C3610@ha /* 0x806C3610@ha */
/* 805A0064  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 805A0068  57 C5 10 3A */	slwi r5, r30, 2
/* 805A006C  38 00 00 0A */	li r0, 0xa
/* 805A0070  38 84 36 10 */	addi r4, r4, data_806C3610@l /* 0x806C3610@l */
/* 805A0074  C0 03 A2 54 */	lfs f0, lit_405@l(r3)  /* 0x8064A254@l */
/* 805A0078  7C 84 28 2E */	lwzx r4, r4, r5
/* 805A007C  90 9F 02 38 */	stw r4, 0x238(r31)
/* 805A0080  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 805A0084  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 805A0088  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 805A008C  48 00 00 58 */	b lbl_805A00E4
lbl_805A0090:
/* 805A0090  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A0094  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 805A0098  7C 03 00 00 */	cmpw r3, r0
/* 805A009C  40 82 00 48 */	bne lbl_805A00E4
/* 805A00A0  4B AB CC 55 */	bl fqrand
/* 805A00A4  3C 60 80 65 */	lis r3, lit_412@ha /* 0x8064A258@ha */
/* 805A00A8  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064A25C@ha */
/* 805A00AC  38 A3 A2 58 */	addi r5, r3, lit_412@l /* 0x8064A258@l */
/* 805A00B0  C0 44 A2 5C */	lfs f2, lit_413@l(r4)  /* 0x8064A25C@l */
/* 805A00B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A00B8  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064A288@ha */
/* 805A00BC  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A00C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805A00C4  C0 03 A2 88 */	lfs f0, lit_550@l(r3)  /* 0x8064A288@l */
/* 805A00C8  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A00CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A00D0  FC 00 00 1E */	fctiwz f0, f0
/* 805A00D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A00D8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805A00DC  7C 00 1A 14 */	add r0, r0, r3
/* 805A00E0  90 1F 02 38 */	stw r0, 0x238(r31)
lbl_805A00E4:
/* 805A00E4  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 805A00E8  38 A0 06 00 */	li r5, 0x600
/* 805A00EC  2C 00 00 20 */	cmpwi r0, 0x20
/* 805A00F0  40 82 00 08 */	bne lbl_805A00F8
/* 805A00F4  38 A0 01 80 */	li r5, 0x180
lbl_805A00F8:
/* 805A00F8  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 805A00FC  38 7F 00 36 */	addi r3, r31, 0x36
/* 805A0100  7C 04 07 34 */	extsh r4, r0
/* 805A0104  4B E1 AA 41 */	bl chase_angle
/* 805A0108  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A010C  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A0110  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 805A0114  2C 03 00 00 */	cmpwi r3, 0
/* 805A0118  40 82 00 14 */	bne lbl_805A012C
/* 805A011C  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064A268@ha */
/* 805A0120  C0 03 A2 68 */	lfs f0, lit_471@l(r3)  /* 0x8064A268@l */
/* 805A0124  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 805A0128  48 00 00 0C */	b lbl_805A0134
lbl_805A012C:
/* 805A012C  38 03 FF FF */	addi r0, r3, -1
/* 805A0130  90 1F 02 3C */	stw r0, 0x23c(r31)
lbl_805A0134:
/* 805A0134  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A0138  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A013C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A0140  7C 08 03 A6 */	mtlr r0
/* 805A0144  38 21 00 30 */	addi r1, r1, 0x30
/* 805A0148  4E 80 00 20 */	blr 
