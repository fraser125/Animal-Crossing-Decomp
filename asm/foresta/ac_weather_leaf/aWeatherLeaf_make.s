lbl_80604158:
/* 80604158  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060415C  7C 08 02 A6 */	mflr r0
/* 80604160  90 01 00 74 */	stw r0, 0x74(r1)
/* 80604164  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80604168  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8060416C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80604170  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80604174  39 61 00 50 */	addi r11, r1, 0x50
/* 80604178  4B A9 6D 59 */	bl func_8009AED0
/* 8060417C  7C 7C 1B 78 */	mr r28, r3
/* 80604180  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80604184  80 03 01 8C */	lwz r0, 0x18c(r3)
/* 80604188  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8060418C  3F E5 00 02 */	addis r31, r5, 2
/* 80604190  3C A0 80 65 */	lis r5, lit_391@ha /* 0x8064BB08@ha */
/* 80604194  90 01 00 24 */	stw r0, 0x24(r1)
/* 80604198  38 C5 BB 08 */	addi r6, r5, lit_391@l /* 0x8064BB08@l */
/* 8060419C  80 BF 60 84 */	lwz r5, 0x6084(r31)
/* 806041A0  7C 9D 23 78 */	mr r29, r4
/* 806041A4  C0 26 00 00 */	lfs f1, 0(r6)
/* 806041A8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806041AC  80 83 01 88 */	lwz r4, 0x188(r3)
/* 806041B0  80 03 01 90 */	lwz r0, 0x190(r3)
/* 806041B4  EF E1 00 2A */	fadds f31, f1, f0
/* 806041B8  81 85 00 08 */	lwz r12, 8(r5)
/* 806041BC  90 81 00 20 */	stw r4, 0x20(r1)
/* 806041C0  90 01 00 28 */	stw r0, 0x28(r1)
/* 806041C4  7D 89 03 A6 */	mtctr r12
/* 806041C8  4E 80 04 21 */	bctrl 
/* 806041CC  3C 80 80 65 */	lis r4, data_8064BAFC@ha /* 0x8064BAFC@ha */
/* 806041D0  7C 60 1B 78 */	mr r0, r3
/* 806041D4  38 E4 BA FC */	addi r7, r4, data_8064BAFC@l /* 0x8064BAFC@l */
/* 806041D8  7F 83 E3 78 */	mr r3, r28
/* 806041DC  80 C7 00 00 */	lwz r6, 0(r7)
/* 806041E0  7C 1E 03 78 */	mr r30, r0
/* 806041E4  80 A7 00 04 */	lwz r5, 4(r7)
/* 806041E8  7F A4 EB 78 */	mr r4, r29
/* 806041EC  80 07 00 08 */	lwz r0, 8(r7)
/* 806041F0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 806041F4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 806041F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806041FC  4B FF FF 29 */	bl func_80604124
/* 80604200  2C 03 00 00 */	cmpwi r3, 0
/* 80604204  41 82 01 0C */	beq lbl_80604310
/* 80604208  4B A5 8A ED */	bl fqrand
/* 8060420C  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064BB10@ha */
/* 80604210  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064BB0C@ha */
/* 80604214  C0 44 BB 10 */	lfs f2, lit_393@l(r4)  /* 0x8064BB10@l */
/* 80604218  2C 1E FF FF */	cmpwi r30, -1
/* 8060421C  C0 03 BB 0C */	lfs f0, lit_392@l(r3)  /* 0x8064BB0C@l */
/* 80604220  EC 22 00 72 */	fmuls f1, f2, f1
/* 80604224  EC 00 08 2A */	fadds f0, f0, f1
/* 80604228  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060422C  41 82 00 E4 */	beq lbl_80604310
/* 80604230  4B A5 8A C5 */	bl fqrand
/* 80604234  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064BB18@ha */
/* 80604238  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064BB14@ha */
/* 8060423C  C0 44 BB 18 */	lfs f2, lit_395@l(r4)  /* 0x8064BB18@l */
/* 80604240  C0 03 BB 14 */	lfs f0, lit_394@l(r3)  /* 0x8064BB14@l */
/* 80604244  EC 22 00 72 */	fmuls f1, f2, f1
/* 80604248  EF C0 08 2A */	fadds f30, f0, f1
/* 8060424C  4B A5 8A A9 */	bl fqrand
/* 80604250  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064BB20@ha */
/* 80604254  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80604258  38 A3 BB 20 */	addi r5, r3, lit_397@l /* 0x8064BB20@l */
/* 8060425C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80604260  C0 05 00 00 */	lfs f0, 0(r5)
/* 80604264  3C 80 80 65 */	lis r4, lit_396@ha /* 0x8064BB1C@ha */
/* 80604268  90 61 00 08 */	stw r3, 8(r1)
/* 8060426C  7F 87 E3 78 */	mr r7, r28
/* 80604270  EC 20 00 72 */	fmuls f1, f0, f1
/* 80604274  C0 04 BB 1C */	lfs f0, lit_396@l(r4)  /* 0x8064BB1C@l */
/* 80604278  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8060427C  7F C8 F3 78 */	mr r8, r30
/* 80604280  90 01 00 10 */	stw r0, 0x10(r1)
/* 80604284  38 A1 00 08 */	addi r5, r1, 8
/* 80604288  EC 40 08 2A */	fadds f2, f0, f1
/* 8060428C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80604290  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80604294  38 C1 00 14 */	addi r6, r1, 0x14
/* 80604298  EC 21 F0 2A */	fadds f1, f1, f30
/* 8060429C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806042A0  EC 00 10 2A */	fadds f0, f0, f2
/* 806042A4  81 3F 60 84 */	lwz r9, 0x6084(r31)
/* 806042A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806042AC  38 60 00 04 */	li r3, 4
/* 806042B0  38 80 01 18 */	li r4, 0x118
/* 806042B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806042B8  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 806042BC  81 89 00 10 */	lwz r12, 0x10(r9)
/* 806042C0  7D 89 03 A6 */	mtctr r12
/* 806042C4  4E 80 04 21 */	bctrl 
/* 806042C8  7C 7C 1B 79 */	or. r28, r3, r3
/* 806042CC  41 82 00 44 */	beq lbl_80604310
/* 806042D0  7F A4 EB 78 */	mr r4, r29
/* 806042D4  48 00 00 65 */	bl aWeatherLeaf_ct
/* 806042D8  38 00 00 00 */	li r0, 0
/* 806042DC  B0 1C 00 28 */	sth r0, 0x28(r28)
/* 806042E0  4B A5 8A 15 */	bl fqrand
/* 806042E4  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064BB28@ha */
/* 806042E8  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064BB24@ha */
/* 806042EC  C0 44 BB 28 */	lfs f2, lit_399@l(r4)  /* 0x8064BB28@l */
/* 806042F0  C0 03 BB 24 */	lfs f0, lit_398@l(r3)  /* 0x8064BB24@l */
/* 806042F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 806042F8  EC 00 08 2A */	fadds f0, f0, f1
/* 806042FC  FC 00 00 1E */	fctiwz f0, f0
/* 80604300  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80604304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80604308  B0 1C 00 2A */	sth r0, 0x2a(r28)
/* 8060430C  D3 FC 00 18 */	stfs f31, 0x18(r28)
lbl_80604310:
/* 80604310  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80604314  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80604318  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8060431C  39 61 00 50 */	addi r11, r1, 0x50
/* 80604320  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80604324  4B A9 6B F9 */	bl func_8009AF1C
/* 80604328  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060432C  7C 08 03 A6 */	mtlr r0
/* 80604330  38 21 00 70 */	addi r1, r1, 0x70
/* 80604334  4E 80 00 20 */	blr 
