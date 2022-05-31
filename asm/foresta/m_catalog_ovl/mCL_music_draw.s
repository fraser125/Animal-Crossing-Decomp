lbl_805CAC70:
/* 805CAC70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CAC74  7C 08 02 A6 */	mflr r0
/* 805CAC78  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CAC7C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CAC80  4B AD 02 55 */	bl func_8009AED4
/* 805CAC84  A8 03 50 8A */	lha r0, 0x508a(r3)
/* 805CAC88  7C BD 2B 78 */	mr r29, r5
/* 805CAC8C  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 805CAC90  1C 00 02 22 */	mulli r0, r0, 0x222
/* 805CAC94  7C 03 07 34 */	extsh r3, r0
/* 805CAC98  4B DE FE 05 */	bl cos_s
/* 805CAC9C  3C 60 80 65 */	lis r3, lit_1002@ha /* 0x8064AF34@ha */
/* 805CACA0  38 80 00 01 */	li r4, 1
/* 805CACA4  C0 03 AF 34 */	lfs f0, lit_1002@l(r3)  /* 0x8064AF34@l */
/* 805CACA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805CACAC  FC 00 00 1E */	fctiwz f0, f0
/* 805CACB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805CACB4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805CACB8  4B E4 1B 39 */	bl Matrix_RotateZ
/* 805CACBC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CACC0  7F FE FB 78 */	mr r30, r31
/* 805CACC4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CACC8  7F A3 EB 78 */	mr r3, r29
/* 805CACCC  90 1F 00 00 */	stw r0, 0(r31)
/* 805CACD0  3B FF 00 08 */	addi r31, r31, 8
/* 805CACD4  4B E4 27 01 */	bl _Matrix_to_Mtx_new
/* 805CACD8  90 7E 00 04 */	stw r3, 4(r30)
/* 805CACDC  7F E4 FB 78 */	mr r4, r31
/* 805CACE0  3C 00 DE 00 */	lis r0, 0xde00
/* 805CACE4  3C 60 80 A3 */	lis r3, mCL_music_model@ha /* 0x80A331B0@ha */
/* 805CACE8  90 1F 00 00 */	stw r0, 0(r31)
/* 805CACEC  38 03 31 B0 */	addi r0, r3, mCL_music_model@l /* 0x80A331B0@l */
/* 805CACF0  3B FF 00 08 */	addi r31, r31, 8
/* 805CACF4  90 04 00 04 */	stw r0, 4(r4)
/* 805CACF8  93 FD 02 D0 */	stw r31, 0x2d0(r29)
/* 805CACFC  39 61 00 20 */	addi r11, r1, 0x20
/* 805CAD00  4B AD 02 21 */	bl func_8009AF20
/* 805CAD04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CAD08  7C 08 03 A6 */	mtlr r0
/* 805CAD0C  38 21 00 20 */	addi r1, r1, 0x20
/* 805CAD10  4E 80 00 20 */	blr 
