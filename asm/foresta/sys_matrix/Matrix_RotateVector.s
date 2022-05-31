lbl_8040DEEC:
/* 8040DEEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040DEF0  7C 08 02 A6 */	mflr r0
/* 8040DEF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040DEF8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8040DEFC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8040DF00  39 61 00 20 */	addi r11, r1, 0x20
/* 8040DF04  4B C8 CF D1 */	bl func_8009AED4
/* 8040DF08  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8040DF0C  7C 7D 1B 78 */	mr r29, r3
/* 8040DF10  28 00 00 01 */	cmplwi r0, 1
/* 8040DF14  7C 9E 23 78 */	mr r30, r4
/* 8040DF18  40 82 02 50 */	bne lbl_8040E168
/* 8040DF1C  7F A0 07 35 */	extsh. r0, r29
/* 8040DF20  41 82 03 A4 */	beq lbl_8040E2C4
/* 8040DF24  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040DF28  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040DF2C  4B FA CB C5 */	bl sin_s
/* 8040DF30  FF E0 08 90 */	fmr f31, f1
/* 8040DF34  7F A3 EB 78 */	mr r3, r29
/* 8040DF38  4B FA CB 65 */	bl cos_s
/* 8040DF3C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8040DF40  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040DF44  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8040DF48  C1 9E 00 00 */	lfs f12, 0(r30)
/* 8040DF4C  EC C2 00 72 */	fmuls f6, f2, f1
/* 8040DF50  C1 5E 00 04 */	lfs f10, 4(r30)
/* 8040DF54  ED 03 00 72 */	fmuls f8, f3, f1
/* 8040DF58  EC AC 00 B2 */	fmuls f5, f12, f2
/* 8040DF5C  C1 BF 00 20 */	lfs f13, 0x20(r31)
/* 8040DF60  EC 8A 00 F2 */	fmuls f4, f10, f3
/* 8040DF64  C1 7E 00 08 */	lfs f11, 8(r30)
/* 8040DF68  C0 03 37 40 */	lfs f0, lit_338@l(r3)  /* 0x80643740@l */
/* 8040DF6C  EC E5 20 2A */	fadds f7, f5, f4
/* 8040DF70  ED 2B 03 72 */	fmuls f9, f11, f13
/* 8040DF74  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040DF78  EC A3 02 F2 */	fmuls f5, f3, f11
/* 8040DF7C  ED 29 38 2A */	fadds f9, f9, f7
/* 8040DF80  EC 8D 02 B2 */	fmuls f4, f13, f10
/* 8040DF84  EC ED 00 72 */	fmuls f7, f13, f1
/* 8040DF88  ED 20 02 72 */	fmuls f9, f0, f9
/* 8040DF8C  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040DF90  EC AC 02 72 */	fmuls f5, f12, f9
/* 8040DF94  EC 9F 01 32 */	fmuls f4, f31, f4
/* 8040DF98  EC A6 28 2A */	fadds f5, f6, f5
/* 8040DF9C  EC 85 20 2A */	fadds f4, f5, f4
/* 8040DFA0  D0 9F 00 00 */	stfs f4, 0(r31)
/* 8040DFA4  C0 BE 00 00 */	lfs f5, 0(r30)
/* 8040DFA8  C0 9E 00 08 */	lfs f4, 8(r30)
/* 8040DFAC  C0 DE 00 04 */	lfs f6, 4(r30)
/* 8040DFB0  EC AD 01 72 */	fmuls f5, f13, f5
/* 8040DFB4  EC 82 01 32 */	fmuls f4, f2, f4
/* 8040DFB8  EC C6 02 72 */	fmuls f6, f6, f9
/* 8040DFBC  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040DFC0  EC A8 30 2A */	fadds f5, f8, f6
/* 8040DFC4  EC 9F 01 32 */	fmuls f4, f31, f4
/* 8040DFC8  EC 85 20 2A */	fadds f4, f5, f4
/* 8040DFCC  D0 9F 00 10 */	stfs f4, 0x10(r31)
/* 8040DFD0  C0 BE 00 04 */	lfs f5, 4(r30)
/* 8040DFD4  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8040DFD8  EC A2 01 72 */	fmuls f5, f2, f5
/* 8040DFDC  C0 DE 00 08 */	lfs f6, 8(r30)
/* 8040DFE0  EC 43 01 32 */	fmuls f2, f3, f4
/* 8040DFE4  EC 66 02 72 */	fmuls f3, f6, f9
/* 8040DFE8  EC 45 10 28 */	fsubs f2, f5, f2
/* 8040DFEC  EC 67 18 2A */	fadds f3, f7, f3
/* 8040DFF0  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8040DFF4  EC 43 10 2A */	fadds f2, f3, f2
/* 8040DFF8  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 8040DFFC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8040E000  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8040E004  C1 9E 00 00 */	lfs f12, 0(r30)
/* 8040E008  EC C2 00 72 */	fmuls f6, f2, f1
/* 8040E00C  C1 7E 00 04 */	lfs f11, 4(r30)
/* 8040E010  ED 03 00 72 */	fmuls f8, f3, f1
/* 8040E014  EC EC 00 B2 */	fmuls f7, f12, f2
/* 8040E018  C1 BF 00 24 */	lfs f13, 0x24(r31)
/* 8040E01C  EC 8B 00 F2 */	fmuls f4, f11, f3
/* 8040E020  C0 BE 00 08 */	lfs f5, 8(r30)
/* 8040E024  ED 27 20 2A */	fadds f9, f7, f4
/* 8040E028  ED 45 03 72 */	fmuls f10, f5, f13
/* 8040E02C  EC A3 01 72 */	fmuls f5, f3, f5
/* 8040E030  EC 8D 02 F2 */	fmuls f4, f13, f11
/* 8040E034  ED 2A 48 2A */	fadds f9, f10, f9
/* 8040E038  EC ED 00 72 */	fmuls f7, f13, f1
/* 8040E03C  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040E040  ED 20 02 72 */	fmuls f9, f0, f9
/* 8040E044  EC 9F 01 32 */	fmuls f4, f31, f4
/* 8040E048  EC AC 02 72 */	fmuls f5, f12, f9
/* 8040E04C  EC A6 28 2A */	fadds f5, f6, f5
/* 8040E050  EC 85 20 2A */	fadds f4, f5, f4
/* 8040E054  D0 9F 00 04 */	stfs f4, 4(r31)
/* 8040E058  C0 BE 00 00 */	lfs f5, 0(r30)
/* 8040E05C  C0 9E 00 08 */	lfs f4, 8(r30)
/* 8040E060  C0 DE 00 04 */	lfs f6, 4(r30)
/* 8040E064  EC AD 01 72 */	fmuls f5, f13, f5
/* 8040E068  EC 82 01 32 */	fmuls f4, f2, f4
/* 8040E06C  EC C6 02 72 */	fmuls f6, f6, f9
/* 8040E070  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040E074  EC A8 30 2A */	fadds f5, f8, f6
/* 8040E078  EC 9F 01 32 */	fmuls f4, f31, f4
/* 8040E07C  EC 85 20 2A */	fadds f4, f5, f4
/* 8040E080  D0 9F 00 14 */	stfs f4, 0x14(r31)
/* 8040E084  C0 BE 00 04 */	lfs f5, 4(r30)
/* 8040E088  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8040E08C  EC A2 01 72 */	fmuls f5, f2, f5
/* 8040E090  C0 DE 00 08 */	lfs f6, 8(r30)
/* 8040E094  EC 43 01 32 */	fmuls f2, f3, f4
/* 8040E098  EC 66 02 72 */	fmuls f3, f6, f9
/* 8040E09C  EC 45 10 28 */	fsubs f2, f5, f2
/* 8040E0A0  EC 67 18 2A */	fadds f3, f7, f3
/* 8040E0A4  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8040E0A8  EC 43 10 2A */	fadds f2, f3, f2
/* 8040E0AC  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 8040E0B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8040E0B4  C1 3E 00 00 */	lfs f9, 0(r30)
/* 8040E0B8  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8040E0BC  C0 FE 00 04 */	lfs f7, 4(r30)
/* 8040E0C0  EC A9 00 B2 */	fmuls f5, f9, f2
/* 8040E0C4  C1 5F 00 28 */	lfs f10, 0x28(r31)
/* 8040E0C8  EC 87 00 F2 */	fmuls f4, f7, f3
/* 8040E0CC  C1 1E 00 08 */	lfs f8, 8(r30)
/* 8040E0D0  EC C8 02 B2 */	fmuls f6, f8, f10
/* 8040E0D4  EC 85 20 2A */	fadds f4, f5, f4
/* 8040E0D8  EC 86 20 2A */	fadds f4, f6, f4
/* 8040E0DC  EC 00 01 32 */	fmuls f0, f0, f4
/* 8040E0E0  EC A3 02 32 */	fmuls f5, f3, f8
/* 8040E0E4  EC 8A 01 F2 */	fmuls f4, f10, f7
/* 8040E0E8  ED 02 00 72 */	fmuls f8, f2, f1
/* 8040E0EC  EC C9 00 32 */	fmuls f6, f9, f0
/* 8040E0F0  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040E0F4  EC E3 00 72 */	fmuls f7, f3, f1
/* 8040E0F8  EC A8 30 2A */	fadds f5, f8, f6
/* 8040E0FC  EC 9F 01 32 */	fmuls f4, f31, f4
/* 8040E100  EC CA 00 72 */	fmuls f6, f10, f1
/* 8040E104  EC 25 20 2A */	fadds f1, f5, f4
/* 8040E108  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8040E10C  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8040E110  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8040E114  C0 BE 00 04 */	lfs f5, 4(r30)
/* 8040E118  EC 8A 01 32 */	fmuls f4, f10, f4
/* 8040E11C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040E120  EC A5 00 32 */	fmuls f5, f5, f0
/* 8040E124  EC 24 08 28 */	fsubs f1, f4, f1
/* 8040E128  EC 87 28 2A */	fadds f4, f7, f5
/* 8040E12C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8040E130  EC 24 08 2A */	fadds f1, f4, f1
/* 8040E134  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 8040E138  C0 9E 00 04 */	lfs f4, 4(r30)
/* 8040E13C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8040E140  C0 BE 00 08 */	lfs f5, 8(r30)
/* 8040E144  EC 42 01 32 */	fmuls f2, f2, f4
/* 8040E148  EC 23 00 72 */	fmuls f1, f3, f1
/* 8040E14C  EC 65 00 32 */	fmuls f3, f5, f0
/* 8040E150  EC 02 08 28 */	fsubs f0, f2, f1
/* 8040E154  EC 26 18 2A */	fadds f1, f6, f3
/* 8040E158  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8040E15C  EC 01 00 2A */	fadds f0, f1, f0
/* 8040E160  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040E164  48 00 01 60 */	b lbl_8040E2C4
lbl_8040E168:
/* 8040E168  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040E16C  7F A0 07 35 */	extsh. r0, r29
/* 8040E170  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040E174  41 82 01 00 */	beq lbl_8040E274
/* 8040E178  4B FA C9 79 */	bl sin_s
/* 8040E17C  FF E0 08 90 */	fmr f31, f1
/* 8040E180  7F A3 EB 78 */	mr r3, r29
/* 8040E184  4B FA C9 19 */	bl cos_s
/* 8040E188  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040E18C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8040E190  38 83 37 40 */	addi r4, r3, lit_338@l /* 0x80643740@l */
/* 8040E194  C0 84 00 00 */	lfs f4, 0(r4)
/* 8040E198  EC 40 00 32 */	fmuls f2, f0, f0
/* 8040E19C  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040E1A0  EC A4 08 28 */	fsubs f5, f4, f1
/* 8040E1A4  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040E1A8  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8040E1AC  EC 41 10 2A */	fadds f2, f1, f2
/* 8040E1B0  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8040E1B4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8040E1B8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8040E1BC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8040E1C0  EC 41 10 2A */	fadds f2, f1, f2
/* 8040E1C4  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 8040E1C8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8040E1CC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8040E1D0  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8040E1D4  EC 21 10 2A */	fadds f1, f1, f2
/* 8040E1D8  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8040E1DC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8040E1E0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8040E1E4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8040E1E8  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8040E1EC  EC C1 07 F2 */	fmuls f6, f1, f31
/* 8040E1F0  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8040E1F4  EC 41 30 2A */	fadds f2, f1, f6
/* 8040E1F8  EC 21 30 28 */	fsubs f1, f1, f6
/* 8040E1FC  D0 5F 00 04 */	stfs f2, 4(r31)
/* 8040E200  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8040E204  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8040E208  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8040E20C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8040E210  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8040E214  EC C1 07 F2 */	fmuls f6, f1, f31
/* 8040E218  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8040E21C  EC 41 30 28 */	fsubs f2, f1, f6
/* 8040E220  EC 21 30 2A */	fadds f1, f1, f6
/* 8040E224  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8040E228  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8040E22C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8040E230  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8040E234  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8040E238  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8040E23C  EC A1 07 F2 */	fmuls f5, f1, f31
/* 8040E240  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8040E244  EC 41 28 2A */	fadds f2, f1, f5
/* 8040E248  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040E24C  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 8040E250  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8040E254  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8040E258  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8040E25C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8040E260  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8040E264  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8040E268  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8040E26C  D0 9F 00 3C */	stfs f4, 0x3c(r31)
/* 8040E270  48 00 00 54 */	b lbl_8040E2C4
lbl_8040E274:
/* 8040E274  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040E278  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040E27C  C0 24 37 3C */	lfs f1, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040E280  C0 03 37 40 */	lfs f0, lit_338@l(r3)  /* 0x80643740@l */
/* 8040E284  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8040E288  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8040E28C  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040E290  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8040E294  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 8040E298  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8040E29C  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8040E2A0  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8040E2A4  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8040E2A8  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 8040E2AC  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8040E2B0  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8040E2B4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8040E2B8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8040E2BC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040E2C0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
lbl_8040E2C4:
/* 8040E2C4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8040E2C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8040E2CC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8040E2D0  4B C8 CC 51 */	bl func_8009AF20
/* 8040E2D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040E2D8  7C 08 03 A6 */	mtlr r0
/* 8040E2DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8040E2E0  4E 80 00 20 */	blr 
