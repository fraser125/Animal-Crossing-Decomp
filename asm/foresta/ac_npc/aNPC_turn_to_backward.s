lbl_805356B0:
/* 805356B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805356B4  7C 08 02 A6 */	mflr r0
/* 805356B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805356BC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805356C0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805356C4  39 61 00 60 */	addi r11, r1, 0x60
/* 805356C8  4B B6 58 09 */	bl func_8009AED0
/* 805356CC  7C 7E 1B 78 */	mr r30, r3
/* 805356D0  7C 9C 23 78 */	mr r28, r4
/* 805356D4  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 805356D8  28 00 00 03 */	cmplwi r0, 3
/* 805356DC  40 82 00 10 */	bne lbl_805356EC
/* 805356E0  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 805356E4  28 00 00 FF */	cmplwi r0, 0xff
/* 805356E8  40 82 01 0C */	bne lbl_805357F4
lbl_805356EC:
/* 805356EC  AB BE 00 36 */	lha r29, 0x36(r30)
/* 805356F0  38 61 00 08 */	addi r3, r1, 8
/* 805356F4  3B E0 00 01 */	li r31, 1
/* 805356F8  38 80 00 0C */	li r4, 0xc
/* 805356FC  4B B2 79 6D */	bl bzero
/* 80535700  7C 1D E2 14 */	add r0, r29, r28
/* 80535704  7C 1D 07 34 */	extsh r29, r0
/* 80535708  7F A3 EB 78 */	mr r3, r29
/* 8053570C  4B E8 53 E5 */	bl sin_s
/* 80535710  3C 60 80 65 */	lis r3, lit_1583@ha /* 0x806492B4@ha */
/* 80535714  3C 00 43 30 */	lis r0, 0x4330
/* 80535718  38 83 92 B4 */	addi r4, r3, lit_1583@l /* 0x806492B4@l */
/* 8053571C  3C 60 80 65 */	lis r3, lit_818@ha /* 0x80649284@ha */
/* 80535720  C0 44 00 00 */	lfs f2, 0(r4)
/* 80535724  38 83 92 84 */	addi r4, r3, lit_818@l /* 0x80649284@l */
/* 80535728  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8053572C  7F A3 EB 78 */	mr r3, r29
/* 80535730  EC 42 00 72 */	fmuls f2, f2, f1
/* 80535734  90 01 00 20 */	stw r0, 0x20(r1)
/* 80535738  C8 24 00 00 */	lfd f1, 0(r4)
/* 8053573C  EC 00 10 2A */	fadds f0, f0, f2
/* 80535740  FC 00 00 1E */	fctiwz f0, f0
/* 80535744  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80535748  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8053574C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80535750  90 01 00 24 */	stw r0, 0x24(r1)
/* 80535754  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80535758  EF E0 08 28 */	fsubs f31, f0, f1
/* 8053575C  4B E8 53 41 */	bl cos_s
/* 80535760  3C 80 80 65 */	lis r4, lit_1583@ha /* 0x806492B4@ha */
/* 80535764  FC 00 F8 1E */	fctiwz f0, f31
/* 80535768  38 A4 92 B4 */	addi r5, r4, lit_1583@l /* 0x806492B4@l */
/* 8053576C  3C 60 43 30 */	lis r3, 0x4330
/* 80535770  C0 65 00 00 */	lfs f3, 0(r5)
/* 80535774  38 00 00 00 */	li r0, 0
/* 80535778  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8053577C  EC 63 00 72 */	fmuls f3, f3, f1
/* 80535780  3C 80 80 65 */	lis r4, lit_818@ha /* 0x80649284@ha */
/* 80535784  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80535788  C8 24 92 84 */	lfd f1, lit_818@l(r4)  /* 0x80649284@l */
/* 8053578C  EC 42 18 2A */	fadds f2, f2, f3
/* 80535790  90 61 00 30 */	stw r3, 0x30(r1)
/* 80535794  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80535798  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8053579C  FC 00 10 1E */	fctiwz f0, f2
/* 805357A0  B0 61 00 0C */	sth r3, 0xc(r1)
/* 805357A4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805357A8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805357AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805357B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805357B4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805357B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805357BC  FC 00 00 1E */	fctiwz f0, f0
/* 805357C0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805357C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805357C8  B0 01 00 0E */	sth r0, 0xe(r1)
/* 805357CC  88 1E 07 F4 */	lbz r0, 0x7f4(r30)
/* 805357D0  28 00 00 01 */	cmplwi r0, 1
/* 805357D4  41 80 00 08 */	blt lbl_805357DC
/* 805357D8  7C 1F 03 78 */	mr r31, r0
lbl_805357DC:
/* 805357DC  7F C3 F3 78 */	mr r3, r30
/* 805357E0  7F E4 FB 78 */	mr r4, r31
/* 805357E4  38 E1 00 08 */	addi r7, r1, 8
/* 805357E8  38 A0 00 03 */	li r5, 3
/* 805357EC  38 C0 00 01 */	li r6, 1
/* 805357F0  4B FF BE 0D */	bl aNPC_set_request_act
lbl_805357F4:
/* 805357F4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805357F8  39 61 00 60 */	addi r11, r1, 0x60
/* 805357FC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80535800  4B B6 57 1D */	bl func_8009AF1C
/* 80535804  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80535808  7C 08 03 A6 */	mtlr r0
/* 8053580C  38 21 00 70 */	addi r1, r1, 0x70
/* 80535810  4E 80 00 20 */	blr 
