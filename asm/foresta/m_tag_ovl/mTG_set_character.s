lbl_805FE70C:
/* 805FE70C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805FE710  7C 08 02 A6 */	mflr r0
/* 805FE714  90 01 00 74 */	stw r0, 0x74(r1)
/* 805FE718  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805FE71C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805FE720  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805FE724  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805FE728  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805FE72C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805FE730  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 805FE734  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 805FE738  39 61 00 30 */	addi r11, r1, 0x30
/* 805FE73C  4B A9 C7 8D */	bl func_8009AEC8
/* 805FE740  C0 C7 00 44 */	lfs f6, 0x44(r7)
/* 805FE744  7C FD 3B 78 */	mr r29, r7
/* 805FE748  3D 00 80 65 */	lis r8, lit_874@ha /* 0x8064B868@ha */
/* 805FE74C  3C E0 80 65 */	lis r7, lit_5367@ha /* 0x8064B904@ha */
/* 805FE750  FC 60 32 10 */	fabs f3, f6
/* 805FE754  C0 88 B8 68 */	lfs f4, lit_874@l(r8)  /* 0x8064B868@l */
/* 805FE758  3D 20 80 6D */	lis r9, data_806CF828@ha /* 0x806CF828@ha */
/* 805FE75C  C0 07 B9 04 */	lfs f0, lit_5367@l(r7)  /* 0x8064B904@l */
/* 805FE760  EF E4 01 B2 */	fmuls f31, f4, f6
/* 805FE764  7C 7A 1B 78 */	mr r26, r3
/* 805FE768  FC 60 18 18 */	frsp f3, f3
/* 805FE76C  7C 9B 23 78 */	mr r27, r4
/* 805FE770  7C BC 2B 78 */	mr r28, r5
/* 805FE774  3B E9 F8 28 */	addi r31, r9, data_806CF828@l /* 0x806CF828@l */
/* 805FE778  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805FE77C  41 80 02 B4 */	blt lbl_805FEA30
/* 805FE780  C0 BD 00 24 */	lfs f5, 0x24(r29)
/* 805FE784  3C 80 80 65 */	lis r4, lit_5368@ha /* 0x8064B908@ha */
/* 805FE788  C0 9D 00 2C */	lfs f4, 0x2c(r29)
/* 805FE78C  3C 60 80 65 */	lis r3, lit_1072@ha /* 0x8064B8A4@ha */
/* 805FE790  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 805FE794  38 A4 B9 08 */	addi r5, r4, lit_5368@l /* 0x8064B908@l */
/* 805FE798  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805FE79C  EC 85 20 2A */	fadds f4, f5, f4
/* 805FE7A0  C0 BD 00 0C */	lfs f5, 0xc(r29)
/* 805FE7A4  38 83 B8 A4 */	addi r4, r3, lit_1072@l /* 0x8064B8A4@l */
/* 805FE7A8  EC 03 00 2A */	fadds f0, f3, f0
/* 805FE7AC  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 805FE7B0  EC A5 08 2A */	fadds f5, f5, f1
/* 805FE7B4  EC 86 01 32 */	fmuls f4, f6, f4
/* 805FE7B8  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805FE7BC  EC 23 10 2A */	fadds f1, f3, f2
/* 805FE7C0  EC 06 00 32 */	fmuls f0, f6, f0
/* 805FE7C4  88 1D 00 00 */	lbz r0, 0(r29)
/* 805FE7C8  EC 45 20 2A */	fadds f2, f5, f4
/* 805FE7CC  C0 65 00 00 */	lfs f3, 0(r5)
/* 805FE7D0  54 00 18 38 */	slwi r0, r0, 3
/* 805FE7D4  3B DF 0D 44 */	addi r30, r31, 0xd44
/* 805FE7D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805FE7DC  C0 24 00 00 */	lfs f1, 0(r4)
/* 805FE7E0  81 83 09 50 */	lwz r12, 0x950(r3)
/* 805FE7E4  EF A3 10 2A */	fadds f29, f3, f2
/* 805FE7E8  7C C3 33 78 */	mr r3, r6
/* 805FE7EC  7F DE 02 14 */	add r30, r30, r0
/* 805FE7F0  EF 81 00 28 */	fsubs f28, f1, f0
/* 805FE7F4  7D 89 03 A6 */	mtctr r12
/* 805FE7F8  4E 80 04 21 */	bctrl 
/* 805FE7FC  88 1D 00 00 */	lbz r0, 0(r29)
/* 805FE800  28 00 00 2B */	cmplwi r0, 0x2b
/* 805FE804  40 82 00 A4 */	bne lbl_805FE8A8
/* 805FE808  38 00 00 01 */	li r0, 1
/* 805FE80C  FC 20 E8 90 */	fmr f1, f29
/* 805FE810  90 01 00 08 */	stw r0, 8(r1)
/* 805FE814  38 00 00 00 */	li r0, 0
/* 805FE818  FC 40 E0 90 */	fmr f2, f28
/* 805FE81C  7F 83 E3 78 */	mr r3, r28
/* 805FE820  FC 60 F8 90 */	fmr f3, f31
/* 805FE824  FC 80 F8 90 */	fmr f4, f31
/* 805FE828  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE82C  38 9F 08 E0 */	addi r4, r31, 0x8e0
/* 805FE830  38 A0 00 06 */	li r5, 6
/* 805FE834  38 C0 00 8C */	li r6, 0x8c
/* 805FE838  38 E0 00 3C */	li r7, 0x3c
/* 805FE83C  39 00 00 FF */	li r8, 0xff
/* 805FE840  39 20 00 FF */	li r9, 0xff
/* 805FE844  39 40 00 00 */	li r10, 0
/* 805FE848  4B DB 18 61 */	bl mFont_SetLineStrings
/* 805FE84C  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FE850  38 00 00 01 */	li r0, 1
/* 805FE854  C0 03 B8 64 */	lfs f0, lit_707@l(r3)  /* 0x8064B864@l */
/* 805FE858  FC 20 E8 90 */	fmr f1, f29
/* 805FE85C  90 01 00 08 */	stw r0, 8(r1)
/* 805FE860  38 00 00 00 */	li r0, 0
/* 805FE864  EF C0 07 F2 */	fmuls f30, f0, f31
/* 805FE868  7F 83 E3 78 */	mr r3, r28
/* 805FE86C  FC 60 F8 90 */	fmr f3, f31
/* 805FE870  FC 80 F8 90 */	fmr f4, f31
/* 805FE874  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE878  EF 9C F0 2A */	fadds f28, f28, f30
/* 805FE87C  38 9F 08 E8 */	addi r4, r31, 0x8e8
/* 805FE880  38 A0 00 06 */	li r5, 6
/* 805FE884  38 C0 00 8C */	li r6, 0x8c
/* 805FE888  FC 40 E0 90 */	fmr f2, f28
/* 805FE88C  38 E0 00 3C */	li r7, 0x3c
/* 805FE890  39 00 00 FF */	li r8, 0xff
/* 805FE894  39 20 00 FF */	li r9, 0xff
/* 805FE898  39 40 00 00 */	li r10, 0
/* 805FE89C  4B DB 18 0D */	bl mFont_SetLineStrings
/* 805FE8A0  EF 9C F0 2A */	fadds f28, f28, f30
/* 805FE8A4  48 00 01 18 */	b lbl_805FE9BC
lbl_805FE8A8:
/* 805FE8A8  28 00 00 19 */	cmplwi r0, 0x19
/* 805FE8AC  41 82 00 14 */	beq lbl_805FE8C0
/* 805FE8B0  28 00 00 47 */	cmplwi r0, 0x47
/* 805FE8B4  41 82 00 0C */	beq lbl_805FE8C0
/* 805FE8B8  28 00 00 2D */	cmplwi r0, 0x2d
/* 805FE8BC  40 82 00 5C */	bne lbl_805FE918
lbl_805FE8C0:
/* 805FE8C0  38 00 00 01 */	li r0, 1
/* 805FE8C4  FC 20 E8 90 */	fmr f1, f29
/* 805FE8C8  90 01 00 08 */	stw r0, 8(r1)
/* 805FE8CC  38 00 00 00 */	li r0, 0
/* 805FE8D0  FC 40 E0 90 */	fmr f2, f28
/* 805FE8D4  7F 83 E3 78 */	mr r3, r28
/* 805FE8D8  FC 60 F8 90 */	fmr f3, f31
/* 805FE8DC  FC 80 F8 90 */	fmr f4, f31
/* 805FE8E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE8E4  38 9F 08 D0 */	addi r4, r31, 0x8d0
/* 805FE8E8  38 A0 00 0D */	li r5, 0xd
/* 805FE8EC  38 C0 00 DC */	li r6, 0xdc
/* 805FE8F0  38 E0 00 1E */	li r7, 0x1e
/* 805FE8F4  39 00 00 DC */	li r8, 0xdc
/* 805FE8F8  39 20 00 FF */	li r9, 0xff
/* 805FE8FC  39 40 00 00 */	li r10, 0
/* 805FE900  4B DB 17 A9 */	bl mFont_SetLineStrings
/* 805FE904  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FE908  C0 03 B8 64 */	lfs f0, lit_707@l(r3)  /* 0x8064B864@l */
/* 805FE90C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805FE910  EF 9C 00 2A */	fadds f28, f28, f0
/* 805FE914  48 00 00 A8 */	b lbl_805FE9BC
lbl_805FE918:
/* 805FE918  28 00 00 40 */	cmplwi r0, 0x40
/* 805FE91C  40 82 00 A0 */	bne lbl_805FE9BC
/* 805FE920  38 00 00 01 */	li r0, 1
/* 805FE924  FC 20 E8 90 */	fmr f1, f29
/* 805FE928  90 01 00 08 */	stw r0, 8(r1)
/* 805FE92C  38 00 00 00 */	li r0, 0
/* 805FE930  FC 40 E0 90 */	fmr f2, f28
/* 805FE934  7F 83 E3 78 */	mr r3, r28
/* 805FE938  FC 60 F8 90 */	fmr f3, f31
/* 805FE93C  FC 80 F8 90 */	fmr f4, f31
/* 805FE940  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE944  38 9F 08 F0 */	addi r4, r31, 0x8f0
/* 805FE948  38 A0 00 0B */	li r5, 0xb
/* 805FE94C  38 C0 00 DC */	li r6, 0xdc
/* 805FE950  38 E0 00 1E */	li r7, 0x1e
/* 805FE954  39 00 00 DC */	li r8, 0xdc
/* 805FE958  39 20 00 FF */	li r9, 0xff
/* 805FE95C  39 40 00 00 */	li r10, 0
/* 805FE960  4B DB 17 49 */	bl mFont_SetLineStrings
/* 805FE964  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FE968  38 00 00 01 */	li r0, 1
/* 805FE96C  C0 03 B8 64 */	lfs f0, lit_707@l(r3)  /* 0x8064B864@l */
/* 805FE970  FC 20 E8 90 */	fmr f1, f29
/* 805FE974  90 01 00 08 */	stw r0, 8(r1)
/* 805FE978  38 00 00 00 */	li r0, 0
/* 805FE97C  EF C0 07 F2 */	fmuls f30, f0, f31
/* 805FE980  7F 83 E3 78 */	mr r3, r28
/* 805FE984  FC 60 F8 90 */	fmr f3, f31
/* 805FE988  FC 80 F8 90 */	fmr f4, f31
/* 805FE98C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE990  EF 9C F0 2A */	fadds f28, f28, f30
/* 805FE994  38 9F 08 FC */	addi r4, r31, 0x8fc
/* 805FE998  38 A0 00 0C */	li r5, 0xc
/* 805FE99C  38 C0 00 DC */	li r6, 0xdc
/* 805FE9A0  FC 40 E0 90 */	fmr f2, f28
/* 805FE9A4  38 E0 00 1E */	li r7, 0x1e
/* 805FE9A8  39 00 00 DC */	li r8, 0xdc
/* 805FE9AC  39 20 00 FF */	li r9, 0xff
/* 805FE9B0  39 40 00 00 */	li r10, 0
/* 805FE9B4  4B DB 16 F5 */	bl mFont_SetLineStrings
/* 805FE9B8  EF 9C F0 2A */	fadds f28, f28, f30
lbl_805FE9BC:
/* 805FE9BC  88 1D 00 00 */	lbz r0, 0(r29)
/* 805FE9C0  28 00 00 27 */	cmplwi r0, 0x27
/* 805FE9C4  40 82 00 3C */	bne lbl_805FEA00
/* 805FE9C8  3C 80 80 65 */	lis r4, lit_5369@ha /* 0x8064B90C@ha */
/* 805FE9CC  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FE9D0  C0 84 B9 0C */	lfs f4, lit_5369@l(r4)  /* 0x8064B90C@l */
/* 805FE9D4  FC 20 E8 90 */	fmr f1, f29
/* 805FE9D8  C0 03 B8 64 */	lfs f0, lit_707@l(r3)  /* 0x8064B864@l */
/* 805FE9DC  FC 40 E0 90 */	fmr f2, f28
/* 805FE9E0  FC 60 F8 90 */	fmr f3, f31
/* 805FE9E4  7F 43 D3 78 */	mr r3, r26
/* 805FE9E8  EC 84 07 F2 */	fmuls f4, f4, f31
/* 805FE9EC  EC A0 07 F2 */	fmuls f5, f0, f31
/* 805FE9F0  7F 84 E3 78 */	mr r4, r28
/* 805FE9F4  7F A5 EB 78 */	mr r5, r29
/* 805FE9F8  4B FF F7 C1 */	bl mTG_price_draw
/* 805FE9FC  48 00 00 34 */	b lbl_805FEA30
lbl_805FEA00:
/* 805FEA00  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FEA04  FC 20 E8 90 */	fmr f1, f29
/* 805FEA08  C0 03 B8 64 */	lfs f0, lit_707@l(r3)  /* 0x8064B864@l */
/* 805FEA0C  FC 40 E0 90 */	fmr f2, f28
/* 805FEA10  FC 60 F8 90 */	fmr f3, f31
/* 805FEA14  80 DE 00 00 */	lwz r6, 0(r30)
/* 805FEA18  EC 80 07 F2 */	fmuls f4, f0, f31
/* 805FEA1C  80 FE 00 04 */	lwz r7, 4(r30)
/* 805FEA20  7F 83 E3 78 */	mr r3, r28
/* 805FEA24  7F 64 DB 78 */	mr r4, r27
/* 805FEA28  7F A5 EB 78 */	mr r5, r29
/* 805FEA2C  4B FF FB B5 */	bl mTG_set_select
lbl_805FEA30:
/* 805FEA30  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805FEA34  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805FEA38  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805FEA3C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805FEA40  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805FEA44  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805FEA48  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 805FEA4C  39 61 00 30 */	addi r11, r1, 0x30
/* 805FEA50  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 805FEA54  4B A9 C4 C1 */	bl func_8009AF14
/* 805FEA58  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805FEA5C  7C 08 03 A6 */	mtlr r0
/* 805FEA60  38 21 00 70 */	addi r1, r1, 0x70
/* 805FEA64  4E 80 00 20 */	blr 
