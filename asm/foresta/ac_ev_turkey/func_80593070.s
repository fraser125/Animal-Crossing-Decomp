lbl_80593070:
/* 80593070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80593074  7C 08 02 A6 */	mflr r0
/* 80593078  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059307C  39 61 00 30 */	addi r11, r1, 0x30
/* 80593080  4B B0 7E 55 */	bl func_8009AED4
/* 80593084  7C 7E 1B 78 */	mr r30, r3
/* 80593088  3B A0 00 00 */	li r29, 0
/* 8059308C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80593090  3B E0 00 00 */	li r31, 0
/* 80593094  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 80593098  2C 00 0F FF */	cmpwi r0, 0xfff
/* 8059309C  40 82 00 0C */	bne lbl_805930A8
/* 805930A0  38 00 00 00 */	li r0, 0
/* 805930A4  B0 1E 00 00 */	sth r0, 0(r30)
lbl_805930A8:
/* 805930A8  38 00 00 0C */	li r0, 0xc
/* 805930AC  38 60 00 00 */	li r3, 0
/* 805930B0  7C 09 03 A6 */	mtctr r0
lbl_805930B4:
/* 805930B4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 805930B8  7C 00 1E 30 */	sraw r0, r0, r3
/* 805930BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805930C0  40 82 00 08 */	bne lbl_805930C8
/* 805930C4  3B BD 00 01 */	addi r29, r29, 1
lbl_805930C8:
/* 805930C8  38 63 00 01 */	addi r3, r3, 1
/* 805930CC  42 00 FF E8 */	bdnz lbl_805930B4
/* 805930D0  4B AC 9C 25 */	bl fqrand
/* 805930D4  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 805930D8  3C 60 43 30 */	lis r3, 0x4330
/* 805930DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805930E0  3C 80 80 65 */	lis r4, lit_481@ha /* 0x80649CCC@ha */
/* 805930E4  C8 44 9C CC */	lfd f2, lit_481@l(r4)  /* 0x80649CCC@l */
/* 805930E8  38 00 00 0C */	li r0, 0xc
/* 805930EC  90 61 00 08 */	stw r3, 8(r1)
/* 805930F0  38 60 00 00 */	li r3, 0
/* 805930F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805930F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 805930FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80593100  FC 00 00 1E */	fctiwz f0, f0
/* 80593104  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80593108  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8059310C  7C 09 03 A6 */	mtctr r0
lbl_80593110:
/* 80593110  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80593114  7C 00 1E 30 */	sraw r0, r0, r3
/* 80593118  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8059311C  40 82 00 14 */	bne lbl_80593130
/* 80593120  7C 1F 20 00 */	cmpw r31, r4
/* 80593124  40 82 00 08 */	bne lbl_8059312C
/* 80593128  48 00 00 14 */	b lbl_8059313C
lbl_8059312C:
/* 8059312C  3B FF 00 01 */	addi r31, r31, 1
lbl_80593130:
/* 80593130  38 63 00 01 */	addi r3, r3, 1
/* 80593134  42 00 FF DC */	bdnz lbl_80593110
/* 80593138  38 60 00 00 */	li r3, 0
lbl_8059313C:
/* 8059313C  39 61 00 30 */	addi r11, r1, 0x30
/* 80593140  4B B0 7D E1 */	bl func_8009AF20
/* 80593144  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80593148  7C 08 03 A6 */	mtlr r0
/* 8059314C  38 21 00 30 */	addi r1, r1, 0x30
/* 80593150  4E 80 00 20 */	blr 