lbl_8037F200:
/* 8037F200  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8037F204  7C 08 02 A6 */	mflr r0
/* 8037F208  90 01 00 54 */	stw r0, 0x54(r1)
/* 8037F20C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8037F210  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8037F214  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8037F218  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8037F21C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8037F220  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8037F224  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F228  4B D1 BC AD */	bl func_8009AED4
/* 8037F22C  7C 7E 1B 78 */	mr r30, r3
/* 8037F230  48 05 A4 11 */	bl get_player_actor_withoutCheck
/* 8037F234  7C 7F 1B 79 */	or. r31, r3, r3
/* 8037F238  41 82 01 90 */	beq lbl_8037F3C8
/* 8037F23C  4B FF FF 8D */	bl Camera2_Check_MicPosFix
/* 8037F240  2C 03 00 00 */	cmpwi r3, 0
/* 8037F244  41 82 00 64 */	beq lbl_8037F2A8
/* 8037F248  38 60 00 00 */	li r3, 0
/* 8037F24C  48 03 B8 51 */	bl cos_s
/* 8037F250  3C 80 80 64 */	lis r4, lit_936@ha /* 0x806414A0@ha */
/* 8037F254  38 60 00 00 */	li r3, 0
/* 8037F258  C0 04 14 A0 */	lfs f0, lit_936@l(r4)  /* 0x806414A0@l */
/* 8037F25C  EF E0 00 72 */	fmuls f31, f0, f1
/* 8037F260  48 03 B8 91 */	bl sin_s
/* 8037F264  3C 80 80 64 */	lis r4, lit_936@ha /* 0x806414A0@ha */
/* 8037F268  7F C3 F3 78 */	mr r3, r30
/* 8037F26C  C0 04 14 A0 */	lfs f0, lit_936@l(r4)  /* 0x806414A0@l */
/* 8037F270  EF C0 00 72 */	fmuls f30, f0, f1
/* 8037F274  4B FF FF 4D */	bl Camera2_getMicPos_p
/* 8037F278  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8037F27C  3C 80 80 64 */	lis r4, lit_937@ha /* 0x806414A4@ha */
/* 8037F280  C0 24 14 A4 */	lfs f1, lit_937@l(r4)  /* 0x806414A4@l */
/* 8037F284  EC 00 F0 2A */	fadds f0, f0, f30
/* 8037F288  D0 03 00 00 */	stfs f0, 0(r3)
/* 8037F28C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8037F290  EC 01 00 2A */	fadds f0, f1, f0
/* 8037F294  D0 03 00 04 */	stfs f0, 4(r3)
/* 8037F298  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8037F29C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8037F2A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8037F2A4  48 00 01 24 */	b lbl_8037F3C8
lbl_8037F2A8:
/* 8037F2A8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8037F2AC  3C 60 80 64 */	lis r3, lit_938@ha /* 0x806414A8@ha */
/* 8037F2B0  C0 3E 1B 8C */	lfs f1, 0x1b8c(r30)
/* 8037F2B4  38 A3 14 A8 */	addi r5, r3, lit_938@l /* 0x806414A8@l */
/* 8037F2B8  3C 60 80 64 */	lis r3, lit_940@ha /* 0x806414B0@ha */
/* 8037F2BC  3C 80 80 64 */	lis r4, lit_939@ha /* 0x806414AC@ha */
/* 8037F2C0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8037F2C4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037F2C8  C0 03 14 B0 */	lfs f0, lit_940@l(r3)  /* 0x806414B0@l */
/* 8037F2CC  3B FE 1B C0 */	addi r31, r30, 0x1bc0
/* 8037F2D0  AB BE 1B C0 */	lha r29, 0x1bc0(r30)
/* 8037F2D4  EF C2 08 28 */	fsubs f30, f2, f1
/* 8037F2D8  C0 24 14 AC */	lfs f1, lit_939@l(r4)  /* 0x806414AC@l */
/* 8037F2DC  7F A3 EB 78 */	mr r3, r29
/* 8037F2E0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8037F2E4  EF E1 00 2A */	fadds f31, f1, f0
/* 8037F2E8  48 03 B7 B5 */	bl cos_s
/* 8037F2EC  EF BF 00 72 */	fmuls f29, f31, f1
/* 8037F2F0  7F A3 EB 78 */	mr r3, r29
/* 8037F2F4  48 03 B7 FD */	bl sin_s
/* 8037F2F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037F2FC  EF FF 00 72 */	fmuls f31, f31, f1
/* 8037F300  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037F304  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8037F308  38 03 FF EF */	addi r0, r3, -17
/* 8037F30C  28 00 00 0C */	cmplwi r0, 0xc
/* 8037F310  41 81 00 34 */	bgt lbl_8037F344
/* 8037F314  3C 60 80 65 */	lis r3, lit_945@ha /* 0x8064F724@ha */
/* 8037F318  54 00 10 3A */	slwi r0, r0, 2
/* 8037F31C  38 63 F7 24 */	addi r3, r3, lit_945@l /* 0x8064F724@l */
/* 8037F320  7C 03 00 2E */	lwzx r0, r3, r0
/* 8037F324  7C 09 03 A6 */	mtctr r0
/* 8037F328  4E 80 04 20 */	bctr 
lbl_8037F32C:
/* 8037F32C  3C 60 80 64 */	lis r3, lit_941@ha /* 0x806414B4@ha */
/* 8037F330  C0 43 14 B4 */	lfs f2, lit_941@l(r3)  /* 0x806414B4@l */
/* 8037F334  48 00 00 18 */	b lbl_8037F34C
lbl_8037F338:
/* 8037F338  3C 60 80 64 */	lis r3, lit_942@ha /* 0x806414B8@ha */
/* 8037F33C  C0 43 14 B8 */	lfs f2, lit_942@l(r3)  /* 0x806414B8@l */
/* 8037F340  48 00 00 0C */	b lbl_8037F34C
lbl_8037F344:
/* 8037F344  3C 60 80 64 */	lis r3, lit_943@ha /* 0x806414BC@ha */
/* 8037F348  C0 43 14 BC */	lfs f2, lit_943@l(r3)  /* 0x806414BC@l */
lbl_8037F34C:
/* 8037F34C  3C 80 80 64 */	lis r4, lit_944@ha /* 0x806414C0@ha */
/* 8037F350  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037F354  C0 24 14 C0 */	lfs f1, lit_944@l(r4)  /* 0x806414C0@l */
/* 8037F358  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 8037F35C  EC 21 07 B2 */	fmuls f1, f1, f30
/* 8037F360  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8037F364  EC 42 08 2A */	fadds f2, f2, f1
/* 8037F368  4C 41 13 82 */	cror 2, 1, 2
/* 8037F36C  40 82 00 0C */	bne lbl_8037F378
/* 8037F370  FC 00 E8 90 */	fmr f0, f29
/* 8037F374  48 00 00 08 */	b lbl_8037F37C
lbl_8037F378:
/* 8037F378  FC 00 E8 50 */	fneg f0, f29
lbl_8037F37C:
/* 8037F37C  AB BF 00 02 */	lha r29, 2(r31)
/* 8037F380  EF A2 00 2A */	fadds f29, f2, f0
/* 8037F384  7F A3 EB 78 */	mr r3, r29
/* 8037F388  48 03 B7 15 */	bl cos_s
/* 8037F38C  EF DD 00 72 */	fmuls f30, f29, f1
/* 8037F390  7F A3 EB 78 */	mr r3, r29
/* 8037F394  48 03 B7 5D */	bl sin_s
/* 8037F398  EF BD 00 72 */	fmuls f29, f29, f1
/* 8037F39C  7F C3 F3 78 */	mr r3, r30
/* 8037F3A0  4B FF FE 21 */	bl Camera2_getMicPos_p
/* 8037F3A4  C0 1E 1B 88 */	lfs f0, 0x1b88(r30)
/* 8037F3A8  EC 00 E8 2A */	fadds f0, f0, f29
/* 8037F3AC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8037F3B0  C0 1E 1B 8C */	lfs f0, 0x1b8c(r30)
/* 8037F3B4  EC 00 F8 2A */	fadds f0, f0, f31
/* 8037F3B8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8037F3BC  C0 1E 1B 90 */	lfs f0, 0x1b90(r30)
/* 8037F3C0  EC 00 F0 2A */	fadds f0, f0, f30
/* 8037F3C4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8037F3C8:
/* 8037F3C8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8037F3CC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8037F3D0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8037F3D4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8037F3D8  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8037F3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F3E0  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8037F3E4  4B D1 BB 3D */	bl func_8009AF20
/* 8037F3E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037F3EC  7C 08 03 A6 */	mtlr r0
/* 8037F3F0  38 21 00 50 */	addi r1, r1, 0x50
/* 8037F3F4  4E 80 00 20 */	blr 
