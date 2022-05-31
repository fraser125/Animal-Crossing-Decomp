lbl_805E6EA4:
/* 805E6EA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E6EA8  7C 08 02 A6 */	mflr r0
/* 805E6EAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E6EB0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E6EB4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E6EB8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E6EBC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E6EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E6EC4  4B AB 40 11 */	bl func_8009AED4
/* 805E6EC8  C0 64 00 04 */	lfs f3, 4(r4)
/* 805E6ECC  7C 7F 1B 78 */	mr r31, r3
/* 805E6ED0  3C A0 80 65 */	lis r5, lit_749@ha /* 0x8064B568@ha */
/* 805E6ED4  C0 04 00 08 */	lfs f0, 8(r4)
/* 805E6ED8  EF E3 08 2A */	fadds f31, f3, f1
/* 805E6EDC  C0 25 B5 68 */	lfs f1, lit_749@l(r5)  /* 0x8064B568@l */
/* 805E6EE0  3C A0 80 65 */	lis r5, lit_750@ha /* 0x8064B56C@ha */
/* 805E6EE4  EF C0 10 2A */	fadds f30, f0, f2
/* 805E6EE8  FC 40 08 90 */	fmr f2, f1
/* 805E6EEC  83 C4 00 14 */	lwz r30, 0x14(r4)
/* 805E6EF0  C0 65 B5 6C */	lfs f3, lit_750@l(r5)  /* 0x8064B56C@l */
/* 805E6EF4  38 60 00 00 */	li r3, 0
/* 805E6EF8  4B E2 54 F5 */	bl Matrix_scale
/* 805E6EFC  3C 60 80 65 */	lis r3, lit_748@ha /* 0x8064B564@ha */
/* 805E6F00  3C 80 80 65 */	lis r4, lit_747@ha /* 0x8064B560@ha */
/* 805E6F04  38 A3 B5 64 */	addi r5, r3, lit_748@l /* 0x8064B564@l */
/* 805E6F08  C0 04 B5 60 */	lfs f0, lit_747@l(r4)  /* 0x8064B560@l */
/* 805E6F0C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E6F10  3C 60 80 65 */	lis r3, lit_751@ha /* 0x8064B570@ha */
/* 805E6F14  C0 63 B5 70 */	lfs f3, lit_751@l(r3)  /* 0x8064B570@l */
/* 805E6F18  EC 40 F0 2A */	fadds f2, f0, f30
/* 805E6F1C  EC 21 F8 2A */	fadds f1, f1, f31
/* 805E6F20  38 60 00 01 */	li r3, 1
/* 805E6F24  4B E2 53 DD */	bl Matrix_translate
/* 805E6F28  3C A0 80 6D */	lis r5, cursol_scale@ha /* 0x806CDEB4@ha */
/* 805E6F2C  3C 80 80 65 */	lis r4, lit_750@ha /* 0x8064B56C@ha */
/* 805E6F30  57 DE 10 3A */	slwi r30, r30, 2
/* 805E6F34  C0 64 B5 6C */	lfs f3, lit_750@l(r4)  /* 0x8064B56C@l */
/* 805E6F38  38 A5 DE B4 */	addi r5, r5, cursol_scale@l /* 0x806CDEB4@l */
/* 805E6F3C  38 60 00 01 */	li r3, 1
/* 805E6F40  7C 25 F4 2E */	lfsx f1, r5, r30
/* 805E6F44  FC 40 08 90 */	fmr f2, f1
/* 805E6F48  4B E2 54 A5 */	bl Matrix_scale
/* 805E6F4C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E6F50  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805E6F54  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E6F58  7F E3 FB 78 */	mr r3, r31
/* 805E6F5C  90 1D 00 00 */	stw r0, 0(r29)
/* 805E6F60  4B E2 64 75 */	bl _Matrix_to_Mtx_new
/* 805E6F64  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805E6F68  90 7D 00 04 */	stw r3, 4(r29)
/* 805E6F6C  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805E6F70  3C 60 80 6D */	lis r3, col_g@ha /* 0x806CDE6C@ha */
/* 805E6F74  90 1D 00 08 */	stw r0, 8(r29)
/* 805E6F78  38 A3 DE 6C */	addi r5, r3, col_g@l /* 0x806CDE6C@l */
/* 805E6F7C  3C 60 80 B0 */	lis r3, kan_win_cursorT_model@ha /* 0x80AFBAA0@ha */
/* 805E6F80  3C 80 DE 00 */	lis r4, 0xde00
/* 805E6F84  7C A5 F0 2E */	lwzx r5, r5, r30
/* 805E6F88  38 03 BA A0 */	addi r0, r3, kan_win_cursorT_model@l /* 0x80AFBAA0@l */
/* 805E6F8C  54 A3 82 1E */	rlwinm r3, r5, 0x10, 8, 0xf
/* 805E6F90  64 63 FF 00 */	oris r3, r3, 0xff00
/* 805E6F94  60 63 FF FF */	ori r3, r3, 0xffff
/* 805E6F98  90 7D 00 0C */	stw r3, 0xc(r29)
/* 805E6F9C  3B BD 00 10 */	addi r29, r29, 0x10
/* 805E6FA0  7F A3 EB 78 */	mr r3, r29
/* 805E6FA4  90 9D 00 00 */	stw r4, 0(r29)
/* 805E6FA8  3B BD 00 08 */	addi r29, r29, 8
/* 805E6FAC  90 03 00 04 */	stw r0, 4(r3)
/* 805E6FB0  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805E6FB4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E6FB8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E6FBC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E6FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E6FC4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E6FC8  4B AB 3F 59 */	bl func_8009AF20
/* 805E6FCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E6FD0  7C 08 03 A6 */	mtlr r0
/* 805E6FD4  38 21 00 40 */	addi r1, r1, 0x40
/* 805E6FD8  4E 80 00 20 */	blr 
