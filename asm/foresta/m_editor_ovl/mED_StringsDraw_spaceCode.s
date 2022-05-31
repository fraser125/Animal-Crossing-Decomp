lbl_805DB970:
/* 805DB970  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DB974  7C 08 02 A6 */	mflr r0
/* 805DB978  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DB97C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DB980  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DB984  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DB988  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DB98C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DB990  4B AB F5 45 */	bl func_8009AED4
/* 805DB994  3C A0 80 65 */	lis r5, lit_1942@ha /* 0x8064B250@ha */
/* 805DB998  83 E3 00 00 */	lwz r31, 0(r3)
/* 805DB99C  38 65 B2 50 */	addi r3, r5, lit_1942@l /* 0x8064B250@l */
/* 805DB9A0  3C E0 80 65 */	lis r7, lit_1939@ha /* 0x8064B244@ha */
/* 805DB9A4  C0 03 00 00 */	lfs f0, 0(r3)
/* 805DB9A8  3C A0 80 65 */	lis r5, lit_1940@ha /* 0x8064B248@ha */
/* 805DB9AC  3C 60 80 65 */	lis r3, lit_1941@ha /* 0x8064B24C@ha */
/* 805DB9B0  C0 87 B2 44 */	lfs f4, lit_1939@l(r7)  /* 0x8064B244@l */
/* 805DB9B4  38 C5 B2 48 */	addi r6, r5, lit_1940@l /* 0x8064B248@l */
/* 805DB9B8  EC 02 00 28 */	fsubs f0, f2, f0
/* 805DB9BC  38 A3 B2 4C */	addi r5, r3, lit_1941@l /* 0x8064B24C@l */
/* 805DB9C0  C0 66 00 00 */	lfs f3, 0(r6)
/* 805DB9C4  C0 45 00 00 */	lfs f2, 0(r5)
/* 805DB9C8  3C 60 80 65 */	lis r3, lit_1858@ha /* 0x8064B228@ha */
/* 805DB9CC  EC 61 18 28 */	fsubs f3, f1, f3
/* 805DB9D0  38 A3 B2 28 */	addi r5, r3, lit_1858@l /* 0x8064B228@l */
/* 805DB9D4  EC 02 00 2A */	fadds f0, f2, f0
/* 805DB9D8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805DB9DC  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DB9E0  EF C4 18 2A */	fadds f30, f4, f3
/* 805DB9E4  C0 63 B2 2C */	lfs f3, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DB9E8  FC 40 08 90 */	fmr f2, f1
/* 805DB9EC  FF E0 00 50 */	fneg f31, f0
/* 805DB9F0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805DB9F4  7C 9D 23 78 */	mr r29, r4
/* 805DB9F8  38 60 00 00 */	li r3, 0
/* 805DB9FC  4B E3 09 F1 */	bl Matrix_scale
/* 805DBA00  3C 60 80 65 */	lis r3, lit_1800@ha /* 0x8064B220@ha */
/* 805DBA04  FC 20 F0 90 */	fmr f1, f30
/* 805DBA08  C0 63 B2 20 */	lfs f3, lit_1800@l(r3)  /* 0x8064B220@l */
/* 805DBA0C  FC 40 F8 90 */	fmr f2, f31
/* 805DBA10  38 60 00 01 */	li r3, 1
/* 805DBA14  4B E3 08 ED */	bl Matrix_translate
/* 805DBA18  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBA1C  3C A0 80 65 */	lis r5, lit_1943@ha /* 0x8064B254@ha */
/* 805DBA20  38 83 B2 2C */	addi r4, r3, lit_1859@l /* 0x8064B22C@l */
/* 805DBA24  C0 25 B2 54 */	lfs f1, lit_1943@l(r5)  /* 0x8064B254@l */
/* 805DBA28  C0 44 00 00 */	lfs f2, 0(r4)
/* 805DBA2C  38 60 00 01 */	li r3, 1
/* 805DBA30  FC 60 10 90 */	fmr f3, f2
/* 805DBA34  4B E3 09 B9 */	bl Matrix_scale
/* 805DBA38  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805DBA3C  7F E3 FB 78 */	mr r3, r31
/* 805DBA40  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805DBA44  90 1E 00 00 */	stw r0, 0(r30)
/* 805DBA48  4B E3 19 8D */	bl _Matrix_to_Mtx_new
/* 805DBA4C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805DBA50  90 7E 00 04 */	stw r3, 4(r30)
/* 805DBA54  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805DBA58  3C A0 80 A7 */	lis r5, lat_sousa_spT_model@ha /* 0x80A6EA10@ha */
/* 805DBA5C  90 1E 00 08 */	stw r0, 8(r30)
/* 805DBA60  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805DBA64  3C 60 80 66 */	lis r3, data_8065F870@ha /* 0x8065F870@ha */
/* 805DBA68  3C C0 DE 00 */	lis r6, 0xde00
/* 805DBA6C  88 1D 00 01 */	lbz r0, 1(r29)
/* 805DBA70  38 A5 EA 10 */	addi r5, r5, lat_sousa_spT_model@l /* 0x80A6EA10@l */
/* 805DBA74  89 1D 00 00 */	lbz r8, 0(r29)
/* 805DBA78  38 84 00 03 */	addi r4, r4, 0x0003 /* 0xDA380003@l */
/* 805DBA7C  54 07 82 1E */	rlwinm r7, r0, 0x10, 8, 0xf
/* 805DBA80  89 3D 00 02 */	lbz r9, 2(r29)
/* 805DBA84  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 805DBA88  38 03 F8 70 */	addi r0, r3, data_8065F870@l /* 0x8065F870@l */
/* 805DBA8C  51 27 44 2E */	rlwimi r7, r9, 8, 0x10, 0x17
/* 805DBA90  60 E3 00 FF */	ori r3, r7, 0xff
/* 805DBA94  90 7E 00 0C */	stw r3, 0xc(r30)
/* 805DBA98  90 DE 00 10 */	stw r6, 0x10(r30)
/* 805DBA9C  90 BE 00 14 */	stw r5, 0x14(r30)
/* 805DBAA0  3B DE 00 18 */	addi r30, r30, 0x18
/* 805DBAA4  7F C3 F3 78 */	mr r3, r30
/* 805DBAA8  90 9E 00 00 */	stw r4, 0(r30)
/* 805DBAAC  3B DE 00 08 */	addi r30, r30, 8
/* 805DBAB0  90 03 00 04 */	stw r0, 4(r3)
/* 805DBAB4  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805DBAB8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DBABC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DBAC0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DBAC4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DBAC8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DBACC  4B AB F4 55 */	bl func_8009AF20
/* 805DBAD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DBAD4  7C 08 03 A6 */	mtlr r0
/* 805DBAD8  38 21 00 40 */	addi r1, r1, 0x40
/* 805DBADC  4E 80 00 20 */	blr 
