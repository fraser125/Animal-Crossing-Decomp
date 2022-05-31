lbl_8049D71C:
/* 8049D71C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049D720  7C 08 02 A6 */	mflr r0
/* 8049D724  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049D728  39 61 00 30 */	addi r11, r1, 0x30
/* 8049D72C  4B BF D7 99 */	bl func_8009AEC4
/* 8049D730  38 00 00 09 */	li r0, 9
/* 8049D734  3B E3 01 8C */	addi r31, r3, 0x18c
/* 8049D738  7C 99 23 78 */	mr r25, r4
/* 8049D73C  7C BA 2B 78 */	mr r26, r5
/* 8049D740  7C DB 33 78 */	mr r27, r6
/* 8049D744  7C FC 3B 78 */	mr r28, r7
/* 8049D748  7D 1D 43 78 */	mr r29, r8
/* 8049D74C  7D 3E 4B 78 */	mr r30, r9
/* 8049D750  38 60 00 00 */	li r3, 0
/* 8049D754  7C 09 03 A6 */	mtctr r0
lbl_8049D758:
/* 8049D758  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 8049D75C  28 00 00 00 */	cmplwi r0, 0
/* 8049D760  40 82 00 F8 */	bne lbl_8049D858
/* 8049D764  7F 44 D3 78 */	mr r4, r26
/* 8049D768  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8049D76C  4B F1 D7 51 */	bl xyz_t_move
/* 8049D770  7F 44 D3 78 */	mr r4, r26
/* 8049D774  38 7F 00 10 */	addi r3, r31, 0x10
/* 8049D778  4B F1 D7 45 */	bl xyz_t_move
/* 8049D77C  7F 64 DB 78 */	mr r4, r27
/* 8049D780  38 7F 00 04 */	addi r3, r31, 4
/* 8049D784  4B F1 D7 39 */	bl xyz_t_move
/* 8049D788  B3 3F 00 00 */	sth r25, 0(r31)
/* 8049D78C  38 7F 00 10 */	addi r3, r31, 0x10
/* 8049D790  38 9F 00 04 */	addi r4, r31, 4
/* 8049D794  B3 9F 00 02 */	sth r28, 2(r31)
/* 8049D798  4B F1 D9 99 */	bl search_position_angleY
/* 8049D79C  B0 7F 00 30 */	sth r3, 0x30(r31)
/* 8049D7A0  3C 60 80 64 */	lis r3, lit_552@ha /* 0x80645B80@ha */
/* 8049D7A4  C0 03 5B 80 */	lfs f0, lit_552@l(r3)  /* 0x80645B80@l */
/* 8049D7A8  38 80 00 01 */	li r4, 1
/* 8049D7AC  B3 DF 00 42 */	sth r30, 0x42(r31)
/* 8049D7B0  38 60 00 00 */	li r3, 0
/* 8049D7B4  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 8049D7B8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8049D7BC  B0 9F 00 2C */	sth r4, 0x2c(r31)
/* 8049D7C0  B0 7F 00 40 */	sth r3, 0x40(r31)
/* 8049D7C4  93 BF 00 44 */	stw r29, 0x44(r31)
/* 8049D7C8  41 82 00 14 */	beq lbl_8049D7DC
/* 8049D7CC  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80645B74@ha */
/* 8049D7D0  C0 03 5B 74 */	lfs f0, lit_531@l(r3)  /* 0x80645B74@l */
/* 8049D7D4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8049D7D8  48 00 00 10 */	b lbl_8049D7E8
lbl_8049D7DC:
/* 8049D7DC  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80645B84@ha */
/* 8049D7E0  C0 03 5B 84 */	lfs f0, lit_553@l(r3)  /* 0x80645B84@l */
/* 8049D7E4  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8049D7E8:
/* 8049D7E8  38 7F 00 04 */	addi r3, r31, 4
/* 8049D7EC  38 9F 00 10 */	addi r4, r31, 0x10
/* 8049D7F0  4B F1 D8 9D */	bl search_position_distanceXZ
/* 8049D7F4  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80645B74@ha */
/* 8049D7F8  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8049D7FC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8049D800  C0 03 5B 74 */	lfs f0, lit_531@l(r3)  /* 0x80645B74@l */
/* 8049D804  EC 83 10 28 */	fsubs f4, f3, f2
/* 8049D808  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8049D80C  41 82 00 40 */	beq lbl_8049D84C
/* 8049D810  3C 80 80 64 */	lis r4, lit_555@ha /* 0x80645B8C@ha */
/* 8049D814  3C 60 80 64 */	lis r3, lit_556@ha /* 0x80645B90@ha */
/* 8049D818  C0 44 5B 8C */	lfs f2, lit_555@l(r4)  /* 0x80645B8C@l */
/* 8049D81C  3C A0 80 64 */	lis r5, lit_554@ha /* 0x80645B88@ha */
/* 8049D820  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8049D824  C0 23 5B 90 */	lfs f1, lit_556@l(r3)  /* 0x80645B90@l */
/* 8049D828  EC 62 00 32 */	fmuls f3, f2, f0
/* 8049D82C  C0 45 5B 88 */	lfs f2, lit_554@l(r5)  /* 0x80645B88@l */
/* 8049D830  EC 01 00 F2 */	fmuls f0, f1, f3
/* 8049D834  EC 03 00 2A */	fadds f0, f3, f0
/* 8049D838  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049D83C  EC 04 00 28 */	fsubs f0, f4, f0
/* 8049D840  EC 00 08 24 */	fdivs f0, f0, f1
/* 8049D844  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8049D848  48 00 00 08 */	b lbl_8049D850
lbl_8049D84C:
/* 8049D84C  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_8049D850:
/* 8049D850  38 60 00 01 */	li r3, 1
/* 8049D854  48 00 00 0C */	b lbl_8049D860
lbl_8049D858:
/* 8049D858  3B FF 00 48 */	addi r31, r31, 0x48
/* 8049D85C  42 00 FE FC */	bdnz lbl_8049D758
lbl_8049D860:
/* 8049D860  39 61 00 30 */	addi r11, r1, 0x30
/* 8049D864  4B BF D6 AD */	bl func_8009AF10
/* 8049D868  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049D86C  7C 08 03 A6 */	mtlr r0
/* 8049D870  38 21 00 30 */	addi r1, r1, 0x30
/* 8049D874  4E 80 00 20 */	blr 
