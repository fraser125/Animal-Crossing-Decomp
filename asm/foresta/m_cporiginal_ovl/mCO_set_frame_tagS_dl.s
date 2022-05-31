lbl_805CDC90:
/* 805CDC90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CDC94  7C 08 02 A6 */	mflr r0
/* 805CDC98  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CDC9C  39 61 00 30 */	addi r11, r1, 0x30
/* 805CDCA0  4B AC D2 25 */	bl func_8009AEC4
/* 805CDCA4  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CDCA8  3C 60 80 A4 */	lis r3, sav_win1_taguT_model@ha /* 0x80A443D0@ha */
/* 805CDCAC  83 64 00 00 */	lwz r27, 0(r4)
/* 805CDCB0  7C B9 2B 78 */	mr r25, r5
/* 805CDCB4  83 C6 09 DC */	lwz r30, 0x9dc(r6)
/* 805CDCB8  3B E3 43 D0 */	addi r31, r3, sav_win1_taguT_model@l /* 0x80A443D0@l */
/* 805CDCBC  83 5B 02 D0 */	lwz r26, 0x2d0(r27)
/* 805CDCC0  3B A0 00 07 */	li r29, 7
lbl_805CDCC4:
/* 805CDCC4  38 1D 00 04 */	addi r0, r29, 4
/* 805CDCC8  7F 9E 00 AE */	lbzx r28, r30, r0
/* 805CDCCC  7C 1C C8 00 */	cmpw r28, r25
/* 805CDCD0  41 82 00 EC */	beq lbl_805CDDBC
/* 805CDCD4  4B E3 E5 01 */	bl Matrix_push
/* 805CDCD8  1C 9C 00 1D */	mulli r4, r28, 0x1d
/* 805CDCDC  3C 00 43 30 */	lis r0, 0x4330
/* 805CDCE0  90 01 00 08 */	stw r0, 8(r1)
/* 805CDCE4  3C A0 80 65 */	lis r5, lit_651@ha /* 0x8064B00C@ha */
/* 805CDCE8  C0 25 B0 0C */	lfs f1, lit_651@l(r5)  /* 0x8064B00C@l */
/* 805CDCEC  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B01C@ha */
/* 805CDCF0  7C 80 0E 70 */	srawi r0, r4, 1
/* 805CDCF4  38 83 B0 1C */	addi r4, r3, lit_655@l /* 0x8064B01C@l */
/* 805CDCF8  7C 00 01 94 */	addze r0, r0
/* 805CDCFC  C8 44 00 00 */	lfd f2, 0(r4)
/* 805CDD00  7C 00 00 D0 */	neg r0, r0
/* 805CDD04  FC 60 08 90 */	fmr f3, f1
/* 805CDD08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805CDD0C  38 60 00 01 */	li r3, 1
/* 805CDD10  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CDD14  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CDD18  EC 40 10 28 */	fsubs f2, f0, f2
/* 805CDD1C  4B E3 E5 E5 */	bl Matrix_translate
/* 805CDD20  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805CDD24  7F 63 DB 78 */	mr r3, r27
/* 805CDD28  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805CDD2C  90 1A 00 00 */	stw r0, 0(r26)
/* 805CDD30  4B E3 F6 A5 */	bl _Matrix_to_Mtx_new
/* 805CDD34  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805CDD38  90 7A 00 04 */	stw r3, 4(r26)
/* 805CDD3C  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805CDD40  3C 60 80 6D */	lis r3, prim_table_703@ha /* 0x806CB834@ha */
/* 805CDD44  90 1A 00 08 */	stw r0, 8(r26)
/* 805CDD48  38 03 B8 34 */	addi r0, r3, prim_table_703@l /* 0x806CB834@l */
/* 805CDD4C  1D 1C 00 03 */	mulli r8, r28, 3
/* 805CDD50  3C 60 80 6D */	lis r3, env_table2@ha /* 0x806CB84C@ha */
/* 805CDD54  3C 80 FB 00 */	lis r4, 0xfb00
/* 805CDD58  7C E0 42 14 */	add r7, r0, r8
/* 805CDD5C  38 03 B8 4C */	addi r0, r3, env_table2@l /* 0x806CB84C@l */
/* 805CDD60  88 A7 00 01 */	lbz r5, 1(r7)
/* 805CDD64  7D 00 42 14 */	add r8, r0, r8
/* 805CDD68  88 C7 00 00 */	lbz r6, 0(r7)
/* 805CDD6C  3C 00 DE 00 */	lis r0, 0xde00
/* 805CDD70  54 A3 82 1E */	rlwinm r3, r5, 0x10, 8, 0xf
/* 805CDD74  88 A7 00 02 */	lbz r5, 2(r7)
/* 805CDD78  50 C3 C0 0E */	rlwimi r3, r6, 0x18, 0, 7
/* 805CDD7C  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805CDD80  60 63 00 FF */	ori r3, r3, 0xff
/* 805CDD84  90 7A 00 0C */	stw r3, 0xc(r26)
/* 805CDD88  90 9A 00 10 */	stw r4, 0x10(r26)
/* 805CDD8C  88 68 00 01 */	lbz r3, 1(r8)
/* 805CDD90  88 88 00 00 */	lbz r4, 0(r8)
/* 805CDD94  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805CDD98  88 A8 00 02 */	lbz r5, 2(r8)
/* 805CDD9C  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805CDDA0  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805CDDA4  60 63 00 FF */	ori r3, r3, 0xff
/* 805CDDA8  90 7A 00 14 */	stw r3, 0x14(r26)
/* 805CDDAC  90 1A 00 18 */	stw r0, 0x18(r26)
/* 805CDDB0  93 FA 00 1C */	stw r31, 0x1c(r26)
/* 805CDDB4  3B 5A 00 20 */	addi r26, r26, 0x20
/* 805CDDB8  4B E3 E4 5D */	bl Matrix_pull
lbl_805CDDBC:
/* 805CDDBC  37 BD FF FF */	addic. r29, r29, -1
/* 805CDDC0  40 80 FF 04 */	bge lbl_805CDCC4
/* 805CDDC4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CDDC8  7F 59 D3 78 */	mr r25, r26
/* 805CDDCC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CDDD0  7F 63 DB 78 */	mr r3, r27
/* 805CDDD4  90 1A 00 00 */	stw r0, 0(r26)
/* 805CDDD8  3B 5A 00 08 */	addi r26, r26, 8
/* 805CDDDC  4B E3 F5 F9 */	bl _Matrix_to_Mtx_new
/* 805CDDE0  90 79 00 04 */	stw r3, 4(r25)
/* 805CDDE4  7F 44 D3 78 */	mr r4, r26
/* 805CDDE8  3C 00 DE 00 */	lis r0, 0xde00
/* 805CDDEC  3C 60 80 A4 */	lis r3, sav_win1_kage_model@ha /* 0x80A44098@ha */
/* 805CDDF0  90 1A 00 00 */	stw r0, 0(r26)
/* 805CDDF4  38 03 40 98 */	addi r0, r3, sav_win1_kage_model@l /* 0x80A44098@l */
/* 805CDDF8  3B 5A 00 08 */	addi r26, r26, 8
/* 805CDDFC  90 04 00 04 */	stw r0, 4(r4)
/* 805CDE00  93 5B 02 D0 */	stw r26, 0x2d0(r27)
/* 805CDE04  39 61 00 30 */	addi r11, r1, 0x30
/* 805CDE08  4B AC D1 09 */	bl func_8009AF10
/* 805CDE0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CDE10  7C 08 03 A6 */	mtlr r0
/* 805CDE14  38 21 00 30 */	addi r1, r1, 0x30
/* 805CDE18  4E 80 00 20 */	blr 
