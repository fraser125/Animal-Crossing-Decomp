lbl_803B0854:
/* 803B0854  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803B0858  7C 08 02 A6 */	mflr r0
/* 803B085C  90 01 00 94 */	stw r0, 0x94(r1)
/* 803B0860  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 803B0864  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 803B0868  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 803B086C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 803B0870  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 803B0874  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 803B0878  39 61 00 60 */	addi r11, r1, 0x60
/* 803B087C  4B CE A6 51 */	bl func_8009AECC
/* 803B0880  7C 7E 1B 78 */	mr r30, r3
/* 803B0884  3C C0 80 64 */	lis r6, lit_633@ha /* 0x806420A4@ha */
/* 803B0888  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 803B088C  3C 60 80 64 */	lis r3, lit_828@ha /* 0x806420D8@ha */
/* 803B0890  38 E3 20 D8 */	addi r7, r3, lit_828@l /* 0x806420D8@l */
/* 803B0894  C0 06 20 A4 */	lfs f0, lit_633@l(r6)  /* 0x806420A4@l */
/* 803B0898  FC 80 18 50 */	fneg f4, f3
/* 803B089C  C3 DE 00 24 */	lfs f30, 0x24(r30)
/* 803B08A0  EF A0 18 28 */	fsubs f29, f0, f3
/* 803B08A4  80 7E 00 00 */	lwz r3, 0(r30)
/* 803B08A8  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 803B08AC  7C 9F 23 78 */	mr r31, r4
/* 803B08B0  EC 24 07 B2 */	fmuls f1, f4, f30
/* 803B08B4  88 1E 00 05 */	lbz r0, 5(r30)
/* 803B08B8  C0 47 00 00 */	lfs f2, 0(r7)
/* 803B08BC  7C BB 2B 78 */	mr r27, r5
/* 803B08C0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 803B08C4  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 803B08C8  EC 21 20 28 */	fsubs f1, f1, f4
/* 803B08CC  88 63 00 00 */	lbz r3, 0(r3)
/* 803B08D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B08D4  EC 3F 08 2A */	fadds f1, f31, f1
/* 803B08D8  FC 00 00 1E */	fctiwz f0, f0
/* 803B08DC  EC 22 00 72 */	fmuls f1, f2, f1
/* 803B08E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B08E4  FC 00 08 1E */	fctiwz f0, f1
/* 803B08E8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 803B08EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803B08F0  83 81 00 14 */	lwz r28, 0x14(r1)
/* 803B08F4  4B FF ED A9 */	bl mFont_GetCodeWidth
/* 803B08F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B08FC  3C 00 43 30 */	lis r0, 0x4330
/* 803B0900  90 61 00 24 */	stw r3, 0x24(r1)
/* 803B0904  3C 80 80 64 */	lis r4, lit_635@ha /* 0x806420AC@ha */
/* 803B0908  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 803B090C  C8 64 20 AC */	lfd f3, lit_635@l(r4)  /* 0x806420AC@l */
/* 803B0910  90 01 00 20 */	stw r0, 0x20(r1)
/* 803B0914  3C 60 80 64 */	lis r3, lit_829@ha /* 0x806420DC@ha */
/* 803B0918  C0 83 20 DC */	lfs f4, lit_829@l(r3)  /* 0x806420DC@l */
/* 803B091C  3C 80 80 64 */	lis r4, lit_828@ha /* 0x806420D8@ha */
/* 803B0920  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 803B0924  EC 00 E8 28 */	fsubs f0, f0, f29
/* 803B0928  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 803B092C  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806420A4@ha */
/* 803B0930  EC 61 18 28 */	fsubs f3, f1, f3
/* 803B0934  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 803B0938  EC 1F 00 2A */	fadds f0, f31, f0
/* 803B093C  EC 24 00 72 */	fmuls f1, f4, f1
/* 803B0940  C0 BE 00 08 */	lfs f5, 8(r30)
/* 803B0944  EC E2 00 F2 */	fmuls f7, f2, f3
/* 803B0948  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 803B094C  7F A6 EB 78 */	mr r6, r29
/* 803B0950  FC 40 08 1E */	fctiwz f2, f1
/* 803B0954  C0 23 20 A4 */	lfs f1, lit_633@l(r3)  /* 0x806420A4@l */
/* 803B0958  EC 64 00 F2 */	fmuls f3, f4, f3
/* 803B095C  C0 C4 20 D8 */	lfs f6, lit_828@l(r4)  /* 0x806420D8@l */
/* 803B0960  EC 87 28 2A */	fadds f4, f7, f5
/* 803B0964  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0968  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 803B096C  FC 20 18 1E */	fctiwz f1, f3
/* 803B0970  EC 46 01 32 */	fmuls f2, f6, f4
/* 803B0974  7F E3 FB 78 */	mr r3, r31
/* 803B0978  EC 06 00 32 */	fmuls f0, f6, f0
/* 803B097C  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 803B0980  7F 64 DB 78 */	mr r4, r27
/* 803B0984  FC 20 10 1E */	fctiwz f1, f2
/* 803B0988  FC 00 00 1E */	fctiwz f0, f0
/* 803B098C  D0 FE 00 3C */	stfs f7, 0x3c(r30)
/* 803B0990  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803B0994  7F 87 E3 78 */	mr r7, r28
/* 803B0998  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803B099C  81 41 00 34 */	lwz r10, 0x34(r1)
/* 803B09A0  90 01 00 08 */	stw r0, 8(r1)
/* 803B09A4  81 01 00 2C */	lwz r8, 0x2c(r1)
/* 803B09A8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 803B09AC  80 BE 00 00 */	lwz r5, 0(r30)
/* 803B09B0  81 21 00 44 */	lwz r9, 0x44(r1)
/* 803B09B4  88 A5 00 00 */	lbz r5, 0(r5)
/* 803B09B8  4B FF F8 C5 */	bl mFont_gppDrawCharRect
/* 803B09BC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 803B09C0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 803B09C4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 803B09C8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 803B09CC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 803B09D0  39 61 00 60 */	addi r11, r1, 0x60
/* 803B09D4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 803B09D8  4B CE A5 41 */	bl func_8009AF18
/* 803B09DC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803B09E0  7C 08 03 A6 */	mtlr r0
/* 803B09E4  38 21 00 90 */	addi r1, r1, 0x90
/* 803B09E8  4E 80 00 20 */	blr 
