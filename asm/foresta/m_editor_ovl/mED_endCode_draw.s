lbl_805DBFC8:
/* 805DBFC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DBFCC  7C 08 02 A6 */	mflr r0
/* 805DBFD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DBFD4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DBFD8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DBFDC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DBFE0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DBFE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DBFE8  4B AB EE ED */	bl func_8009AED4
/* 805DBFEC  3C A0 80 65 */	lis r5, lit_1858@ha /* 0x8064B228@ha */
/* 805DBFF0  FF C0 08 90 */	fmr f30, f1
/* 805DBFF4  C0 25 B2 28 */	lfs f1, lit_1858@l(r5)  /* 0x8064B228@l */
/* 805DBFF8  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBFFC  FF E0 10 90 */	fmr f31, f2
/* 805DC000  C0 63 B2 2C */	lfs f3, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DC004  FC 40 08 90 */	fmr f2, f1
/* 805DC008  83 E4 00 00 */	lwz r31, 0(r4)
/* 805DC00C  38 60 00 00 */	li r3, 0
/* 805DC010  4B E3 03 DD */	bl Matrix_scale
/* 805DC014  3C 60 80 65 */	lis r3, lit_2045@ha /* 0x8064B278@ha */
/* 805DC018  FC 20 F0 90 */	fmr f1, f30
/* 805DC01C  C0 63 B2 78 */	lfs f3, lit_2045@l(r3)  /* 0x8064B278@l */
/* 805DC020  FC 40 F8 90 */	fmr f2, f31
/* 805DC024  38 60 00 01 */	li r3, 1
/* 805DC028  4B E3 02 D9 */	bl Matrix_translate
/* 805DC02C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805DC030  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DC034  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DC038  7F E3 FB 78 */	mr r3, r31
/* 805DC03C  90 1E 00 00 */	stw r0, 0(r30)
/* 805DC040  7F DD F3 78 */	mr r29, r30
/* 805DC044  3B DE 00 08 */	addi r30, r30, 8
/* 805DC048  4B E3 13 8D */	bl _Matrix_to_Mtx_new
/* 805DC04C  90 7D 00 04 */	stw r3, 4(r29)
/* 805DC050  7F C4 F3 78 */	mr r4, r30
/* 805DC054  3C 00 DE 00 */	lis r0, 0xde00
/* 805DC058  3C 60 80 A7 */	lis r3, lat_end_cordT_model@ha /* 0x80A6EEC8@ha */
/* 805DC05C  90 1E 00 00 */	stw r0, 0(r30)
/* 805DC060  38 03 EE C8 */	addi r0, r3, lat_end_cordT_model@l /* 0x80A6EEC8@l */
/* 805DC064  3B DE 00 08 */	addi r30, r30, 8
/* 805DC068  90 04 00 04 */	stw r0, 4(r4)
/* 805DC06C  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805DC070  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DC074  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DC078  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DC07C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC080  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DC084  4B AB EE 9D */	bl func_8009AF20
/* 805DC088  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DC08C  7C 08 03 A6 */	mtlr r0
/* 805DC090  38 21 00 40 */	addi r1, r1, 0x40
/* 805DC094  4E 80 00 20 */	blr 
