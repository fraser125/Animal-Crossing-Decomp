lbl_805CDE1C:
/* 805CDE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CDE20  7C 08 02 A6 */	mflr r0
/* 805CDE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CDE28  39 61 00 20 */	addi r11, r1, 0x20
/* 805CDE2C  4B AC D0 A9 */	bl func_8009AED4
/* 805CDE30  83 E4 00 00 */	lwz r31, 0(r4)
/* 805CDE34  7C BD 2B 78 */	mr r29, r5
/* 805CDE38  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805CDE3C  4B E3 E3 99 */	bl Matrix_push
/* 805CDE40  1C BD 00 1D */	mulli r5, r29, 0x1d
/* 805CDE44  3C 00 43 30 */	lis r0, 0x4330
/* 805CDE48  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B01C@ha */
/* 805CDE4C  90 01 00 08 */	stw r0, 8(r1)
/* 805CDE50  3C 80 80 65 */	lis r4, lit_775@ha /* 0x8064B024@ha */
/* 805CDE54  7C A0 0E 70 */	srawi r0, r5, 1
/* 805CDE58  7C 00 01 94 */	addze r0, r0
/* 805CDE5C  38 A3 B0 1C */	addi r5, r3, lit_655@l /* 0x8064B01C@l */
/* 805CDE60  20 00 00 34 */	subfic r0, r0, 0x34
/* 805CDE64  3C 60 80 65 */	lis r3, lit_651@ha /* 0x8064B00C@ha */
/* 805CDE68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805CDE6C  38 C4 B0 24 */	addi r6, r4, lit_775@l /* 0x8064B024@l */
/* 805CDE70  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CDE74  38 83 B0 0C */	addi r4, r3, lit_651@l /* 0x8064B00C@l */
/* 805CDE78  C8 45 00 00 */	lfd f2, 0(r5)
/* 805CDE7C  38 60 00 01 */	li r3, 1
/* 805CDE80  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CDE84  C0 26 00 00 */	lfs f1, 0(r6)
/* 805CDE88  EC 40 10 28 */	fsubs f2, f0, f2
/* 805CDE8C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805CDE90  4B E3 E4 71 */	bl Matrix_translate
/* 805CDE94  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805CDE98  7F E3 FB 78 */	mr r3, r31
/* 805CDE9C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805CDEA0  90 1E 00 00 */	stw r0, 0(r30)
/* 805CDEA4  4B E3 F5 31 */	bl _Matrix_to_Mtx_new
/* 805CDEA8  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805CDEAC  90 7E 00 04 */	stw r3, 4(r30)
/* 805CDEB0  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805CDEB4  3C 60 80 6D */	lis r3, prim_table_746@ha /* 0x806CB864@ha */
/* 805CDEB8  38 83 B8 64 */	addi r4, r3, prim_table_746@l /* 0x806CB864@l */
/* 805CDEBC  90 1E 00 08 */	stw r0, 8(r30)
/* 805CDEC0  1D 5D 00 03 */	mulli r10, r29, 3
/* 805CDEC4  3C 60 80 6D */	lis r3, data_806CB808@ha /* 0x806CB808@ha */
/* 805CDEC8  3C E0 FB 00 */	lis r7, 0xfb00
/* 805CDECC  38 A3 B8 08 */	addi r5, r3, data_806CB808@l /* 0x806CB808@l */
/* 805CDED0  7C C4 52 14 */	add r6, r4, r10
/* 805CDED4  7C 84 50 AE */	lbzx r4, r4, r10
/* 805CDED8  88 06 00 01 */	lbz r0, 1(r6)
/* 805CDEDC  3C 60 80 A4 */	lis r3, sav_sentaku_taguT_model@ha /* 0x80A3D260@ha */
/* 805CDEE0  89 26 00 02 */	lbz r9, 2(r6)
/* 805CDEE4  7C C5 52 14 */	add r6, r5, r10
/* 805CDEE8  54 08 82 1E */	rlwinm r8, r0, 0x10, 8, 0xf
/* 805CDEEC  38 03 D2 60 */	addi r0, r3, sav_sentaku_taguT_model@l /* 0x80A3D260@l */
/* 805CDEF0  50 88 C0 0E */	rlwimi r8, r4, 0x18, 0, 7
/* 805CDEF4  3C 80 DE 00 */	lis r4, 0xde00
/* 805CDEF8  51 28 44 2E */	rlwimi r8, r9, 8, 0x10, 0x17
/* 805CDEFC  61 03 00 FF */	ori r3, r8, 0xff
/* 805CDF00  90 7E 00 0C */	stw r3, 0xc(r30)
/* 805CDF04  90 FE 00 10 */	stw r7, 0x10(r30)
/* 805CDF08  88 66 00 01 */	lbz r3, 1(r6)
/* 805CDF0C  7C A5 50 AE */	lbzx r5, r5, r10
/* 805CDF10  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805CDF14  88 C6 00 02 */	lbz r6, 2(r6)
/* 805CDF18  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805CDF1C  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 805CDF20  60 63 00 FF */	ori r3, r3, 0xff
/* 805CDF24  90 7E 00 14 */	stw r3, 0x14(r30)
/* 805CDF28  90 9E 00 18 */	stw r4, 0x18(r30)
/* 805CDF2C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 805CDF30  3B DE 00 20 */	addi r30, r30, 0x20
/* 805CDF34  4B E3 E2 E1 */	bl Matrix_pull
/* 805CDF38  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805CDF3C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CDF40  4B AC CF E1 */	bl func_8009AF20
/* 805CDF44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CDF48  7C 08 03 A6 */	mtlr r0
/* 805CDF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 805CDF50  4E 80 00 20 */	blr 
