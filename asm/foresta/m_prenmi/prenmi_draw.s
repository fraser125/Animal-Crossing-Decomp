lbl_8062D8A8:
/* 8062D8A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062D8AC  7C 08 02 A6 */	mflr r0
/* 8062D8B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062D8B4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8062D8B8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8062D8BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8062D8C0  4B A6 D6 15 */	bl func_8009AED4
/* 8062D8C4  7C 7D 1B 78 */	mr r29, r3
/* 8062D8C8  38 80 00 00 */	li r4, 0
/* 8062D8CC  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062D8D0  38 A0 00 00 */	li r5, 0
/* 8062D8D4  38 C0 00 00 */	li r6, 0
/* 8062D8D8  38 E0 00 00 */	li r7, 0
/* 8062D8DC  7F E3 FB 78 */	mr r3, r31
/* 8062D8E0  4B DB 7D AD */	bl DisplayList_initialize
/* 8062D8E4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8062D8E8  3C 00 E7 00 */	lis r0, 0xe700
/* 8062D8EC  3C E0 43 30 */	lis r7, 0x4330
/* 8062D8F0  3C 60 EF 00 */	lis r3, 0xEF00 /* 0xEF000C30@ha */
/* 8062D8F4  90 1E 00 00 */	stw r0, 0(r30)
/* 8062D8F8  38 00 00 00 */	li r0, 0
/* 8062D8FC  3C C0 00 50 */	lis r6, 0x0050 /* 0x00504244@ha */
/* 8062D900  3C A0 FD 00 */	lis r5, 0xFD00 /* 0xFCFFFFFF@ha */
/* 8062D904  90 1E 00 04 */	stw r0, 4(r30)
/* 8062D908  38 03 0C 30 */	addi r0, r3, 0x0C30 /* 0xEF000C30@l */
/* 8062D90C  3C 60 80 65 */	lis r3, lit_311@ha /* 0x8064D24C@ha */
/* 8062D910  3C 80 FF FE */	lis r4, 0xFFFE /* 0xFFFDF6FB@ha */
/* 8062D914  90 1E 00 08 */	stw r0, 8(r30)
/* 8062D918  39 03 D2 4C */	addi r8, r3, lit_311@l /* 0x8064D24C@l */
/* 8062D91C  38 06 42 44 */	addi r0, r6, 0x4244 /* 0x00504244@l */
/* 8062D920  3C 60 80 65 */	lis r3, lit_306@ha /* 0x8064D238@ha */
/* 8062D924  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8062D928  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0xFCFFFFFF@l */
/* 8062D92C  38 C3 D2 38 */	addi r6, r3, lit_306@l /* 0x8064D238@l */
/* 8062D930  3C 60 80 65 */	lis r3, lit_305@ha /* 0x8064D234@ha */
/* 8062D934  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8062D938  38 04 F6 FB */	addi r0, r4, 0xF6FB /* 0xFFFDF6FB@l */
/* 8062D93C  39 23 D2 34 */	addi r9, r3, lit_305@l /* 0x8064D234@l */
/* 8062D940  3C 60 80 65 */	lis r3, lit_304@ha /* 0x8064D230@ha */
/* 8062D944  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8062D948  39 43 D2 30 */	addi r10, r3, lit_304@l /* 0x8064D230@l */
/* 8062D94C  3C 80 80 65 */	lis r4, data_8064D22C@ha /* 0x8064D22C@ha */
/* 8062D950  C8 48 00 00 */	lfd f2, 0(r8)
/* 8062D954  80 1D 00 E0 */	lwz r0, 0xe0(r29)
/* 8062D958  39 64 D2 2C */	addi r11, r4, data_8064D22C@l /* 0x8064D22C@l */
/* 8062D95C  3C 60 80 65 */	lis r3, lit_308@ha /* 0x8064D240@ha */
/* 8062D960  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8062D964  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8062D968  C0 06 00 00 */	lfs f0, 0(r6)
/* 8062D96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D970  38 83 D2 40 */	addi r4, r3, lit_308@l /* 0x8064D240@l */
/* 8062D974  3C 00 FA 00 */	lis r0, 0xfa00
/* 8062D978  C0 89 00 00 */	lfs f4, 0(r9)
/* 8062D97C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8062D980  3C A0 80 65 */	lis r5, lit_307@ha /* 0x8064D23C@ha */
/* 8062D984  C0 AA 00 00 */	lfs f5, 0(r10)
/* 8062D988  3C 60 80 65 */	lis r3, lit_309@ha /* 0x8064D244@ha */
/* 8062D98C  EC 21 10 28 */	fsubs f1, f1, f2
/* 8062D990  C0 CB 00 00 */	lfs f6, 0(r11)
/* 8062D994  C0 45 D2 3C */	lfs f2, lit_307@l(r5)  /* 0x8064D23C@l */
/* 8062D998  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8062D99C  EC 61 00 24 */	fdivs f3, f1, f0
/* 8062D9A0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8062D9A4  C0 23 D2 44 */	lfs f1, lit_309@l(r3)  /* 0x8064D244@l */
/* 8062D9A8  EC E4 18 28 */	fsubs f7, f4, f3
/* 8062D9AC  EC 65 01 F2 */	fmuls f3, f5, f7
/* 8062D9B0  EC 00 01 F2 */	fmuls f0, f0, f7
/* 8062D9B4  EC 66 18 2A */	fadds f3, f6, f3
/* 8062D9B8  EF E2 00 2A */	fadds f31, f2, f0
/* 8062D9BC  FC 40 18 1E */	fctiwz f2, f3
/* 8062D9C0  EC 04 F8 2A */	fadds f0, f4, f31
/* 8062D9C4  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 8062D9C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8062D9CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8062D9D0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8062D9D4  64 00 FF FF */	oris r0, r0, 0xffff
/* 8062D9D8  60 00 FF 00 */	ori r0, r0, 0xff00
/* 8062D9DC  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8062D9E0  3B DE 00 20 */	addi r30, r30, 0x20
/* 8062D9E4  4B A6 D3 C1 */	bl func_8009ADA4
/* 8062D9E8  3C 80 80 65 */	lis r4, lit_309@ha /* 0x8064D244@ha */
/* 8062D9EC  7C 7D 1B 78 */	mr r29, r3
/* 8062D9F0  C0 04 D2 44 */	lfs f0, lit_309@l(r4)  /* 0x8064D244@l */
/* 8062D9F4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8062D9F8  4B A6 D3 AD */	bl func_8009ADA4
/* 8062D9FC  38 00 00 00 */	li r0, 0
/* 8062DA00  7C 65 1B 78 */	mr r5, r3
/* 8062DA04  90 01 00 08 */	stw r0, 8(r1)
/* 8062DA08  7F C3 F3 78 */	mr r3, r30
/* 8062DA0C  7F A7 EB 78 */	mr r7, r29
/* 8062DA10  38 80 00 00 */	li r4, 0
/* 8062DA14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062DA18  38 C0 05 00 */	li r6, 0x500
/* 8062DA1C  39 00 00 00 */	li r8, 0
/* 8062DA20  39 20 00 00 */	li r9, 0
/* 8062DA24  39 40 00 00 */	li r10, 0
/* 8062DA28  4B DB 7F F9 */	bl gfx_gSPTextureRectangle1
/* 8062DA2C  3C 80 E7 00 */	lis r4, 0xe700
/* 8062DA30  38 00 00 00 */	li r0, 0
/* 8062DA34  90 83 00 00 */	stw r4, 0(r3)
/* 8062DA38  7C 65 1B 78 */	mr r5, r3
/* 8062DA3C  38 63 00 08 */	addi r3, r3, 8
/* 8062DA40  90 05 00 04 */	stw r0, 4(r5)
/* 8062DA44  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8062DA48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8062DA4C  39 61 00 30 */	addi r11, r1, 0x30
/* 8062DA50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8062DA54  4B A6 D4 CD */	bl func_8009AF20
/* 8062DA58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062DA5C  7C 08 03 A6 */	mtlr r0
/* 8062DA60  38 21 00 40 */	addi r1, r1, 0x40
/* 8062DA64  4E 80 00 20 */	blr 
