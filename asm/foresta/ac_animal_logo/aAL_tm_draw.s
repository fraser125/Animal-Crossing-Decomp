lbl_8041105C:
/* 8041105C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411060  7C 08 02 A6 */	mflr r0
/* 80411064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041106C  93 C1 00 08 */	stw r30, 8(r1)
/* 80411070  7C 7E 1B 78 */	mr r30, r3
/* 80411074  4B FF B1 61 */	bl Matrix_push
/* 80411078  3C C0 80 64 */	lis r6, lit_644@ha /* 0x806438AC@ha */
/* 8041107C  3C A0 80 64 */	lis r5, lit_645@ha /* 0x806438B0@ha */
/* 80411080  3C 80 80 64 */	lis r4, lit_548@ha /* 0x80643844@ha */
/* 80411084  C0 26 38 AC */	lfs f1, lit_644@l(r6)  /* 0x806438AC@l */
/* 80411088  C0 45 38 B0 */	lfs f2, lit_645@l(r5)  /* 0x806438B0@l */
/* 8041108C  38 60 00 01 */	li r3, 1
/* 80411090  C0 64 38 44 */	lfs f3, lit_548@l(r4)  /* 0x80643844@l */
/* 80411094  4B FF B2 6D */	bl Matrix_translate
/* 80411098  3C 80 80 64 */	lis r4, lit_646@ha /* 0x806438B4@ha */
/* 8041109C  38 60 00 01 */	li r3, 1
/* 804110A0  C0 24 38 B4 */	lfs f1, lit_646@l(r4)  /* 0x806438B4@l */
/* 804110A4  FC 40 08 90 */	fmr f2, f1
/* 804110A8  FC 60 08 90 */	fmr f3, f1
/* 804110AC  4B FF B3 41 */	bl Matrix_scale
/* 804110B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804110B4  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 804110B8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804110BC  7F C3 F3 78 */	mr r3, r30
/* 804110C0  90 1F 00 00 */	stw r0, 0(r31)
/* 804110C4  4B FF C3 11 */	bl _Matrix_to_Mtx_new
/* 804110C8  90 7F 00 04 */	stw r3, 4(r31)
/* 804110CC  3C A0 DE 00 */	lis r5, 0xde00
/* 804110D0  3C 80 80 64 */	lis r4, init_disp_625@ha /* 0x8064388C@ha */
/* 804110D4  3C 60 80 C4 */	lis r3, logo_us_tm_model@ha /* 0x80C410A0@ha */
/* 804110D8  90 BF 00 08 */	stw r5, 8(r31)
/* 804110DC  38 84 38 8C */	addi r4, r4, init_disp_625@l /* 0x8064388C@l */
/* 804110E0  38 03 10 A0 */	addi r0, r3, logo_us_tm_model@l /* 0x80C410A0@l */
/* 804110E4  90 9F 00 0C */	stw r4, 0xc(r31)
/* 804110E8  3B FF 00 10 */	addi r31, r31, 0x10
/* 804110EC  7F E3 FB 78 */	mr r3, r31
/* 804110F0  90 BF 00 00 */	stw r5, 0(r31)
/* 804110F4  3B FF 00 08 */	addi r31, r31, 8
/* 804110F8  90 03 00 04 */	stw r0, 4(r3)
/* 804110FC  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 80411100  4B FF B1 15 */	bl Matrix_pull
/* 80411104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041110C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80411110  7C 08 03 A6 */	mtlr r0
/* 80411114  38 21 00 10 */	addi r1, r1, 0x10
/* 80411118  4E 80 00 20 */	blr 
