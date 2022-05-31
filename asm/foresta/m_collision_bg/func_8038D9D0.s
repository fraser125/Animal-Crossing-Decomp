lbl_8038D9D0:
/* 8038D9D0  7C 86 07 34 */	extsh r6, r4
/* 8038D9D4  7C A0 07 34 */	extsh r0, r5
/* 8038D9D8  7C 06 00 00 */	cmpw r6, r0
/* 8038D9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D9E0  40 82 00 08 */	bne lbl_8038D9E8
/* 8038D9E4  48 00 00 70 */	b lbl_8038DA54
lbl_8038D9E8:
/* 8038D9E8  7C 65 07 34 */	extsh r5, r3
/* 8038D9EC  7C 05 30 00 */	cmpw r5, r6
/* 8038D9F0  41 81 00 08 */	bgt lbl_8038D9F8
/* 8038D9F4  48 00 00 60 */	b lbl_8038DA54
lbl_8038D9F8:
/* 8038D9F8  7C 05 00 00 */	cmpw r5, r0
/* 8038D9FC  41 80 00 0C */	blt lbl_8038DA08
/* 8038DA00  FC 20 10 90 */	fmr f1, f2
/* 8038DA04  48 00 00 50 */	b lbl_8038DA54
lbl_8038DA08:
/* 8038DA08  7C 06 00 50 */	subf r0, r6, r0
/* 8038DA0C  3C 60 43 30 */	lis r3, 0x4330
/* 8038DA10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038DA14  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806419DC@ha */
/* 8038DA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038DA1C  7C 06 28 50 */	subf r0, r6, r5
/* 8038DA20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038DA24  C8 64 19 DC */	lfd f3, lit_793@l(r4)  /* 0x806419DC@l */
/* 8038DA28  90 61 00 10 */	stw r3, 0x10(r1)
/* 8038DA2C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8038DA30  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8038DA34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038DA38  EC 00 18 28 */	fsubs f0, f0, f3
/* 8038DA3C  90 61 00 08 */	stw r3, 8(r1)
/* 8038DA40  EC 02 00 24 */	fdivs f0, f2, f0
/* 8038DA44  C8 41 00 08 */	lfd f2, 8(r1)
/* 8038DA48  EC 42 18 28 */	fsubs f2, f2, f3
/* 8038DA4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8038DA50  EC 21 00 2A */	fadds f1, f1, f0
lbl_8038DA54:
/* 8038DA54  38 21 00 20 */	addi r1, r1, 0x20
/* 8038DA58  4E 80 00 20 */	blr 
