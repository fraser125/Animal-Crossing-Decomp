lbl_805EA2E4:
/* 805EA2E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EA2E8  7C 08 02 A6 */	mflr r0
/* 805EA2EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EA2F0  39 61 00 30 */	addi r11, r1, 0x30
/* 805EA2F4  4B AB 0B E1 */	bl func_8009AED4
/* 805EA2F8  3C C0 43 30 */	lis r6, 0x4330
/* 805EA2FC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805EA300  90 81 00 0C */	stw r4, 0xc(r1)
/* 805EA304  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 805EA308  3C A0 80 65 */	lis r5, lit_719@ha /* 0x8064B6AC@ha */
/* 805EA30C  83 E3 00 00 */	lwz r31, 0(r3)
/* 805EA310  90 C1 00 08 */	stw r6, 8(r1)
/* 805EA314  3C 80 80 65 */	lis r4, lit_574@ha /* 0x8064B69C@ha */
/* 805EA318  C8 45 B6 AC */	lfd f2, lit_719@l(r5)  /* 0x8064B6AC@l */
/* 805EA31C  38 60 00 01 */	li r3, 1
/* 805EA320  C8 01 00 08 */	lfd f0, 8(r1)
/* 805EA324  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EA328  EC 20 10 28 */	fsubs f1, f0, f2
/* 805EA32C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805EA330  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805EA334  C0 64 B6 9C */	lfs f3, lit_574@l(r4)  /* 0x8064B69C@l */
/* 805EA338  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EA33C  EC 40 10 28 */	fsubs f2, f0, f2
/* 805EA340  4B E2 1F C1 */	bl Matrix_translate
/* 805EA344  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EA348  7F DD F3 78 */	mr r29, r30
/* 805EA34C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EA350  7F E3 FB 78 */	mr r3, r31
/* 805EA354  90 1E 00 00 */	stw r0, 0(r30)
/* 805EA358  3B DE 00 08 */	addi r30, r30, 8
/* 805EA35C  4B E2 30 79 */	bl _Matrix_to_Mtx_new
/* 805EA360  90 7D 00 04 */	stw r3, 4(r29)
/* 805EA364  7F C4 F3 78 */	mr r4, r30
/* 805EA368  3C 00 DE 00 */	lis r0, 0xde00
/* 805EA36C  3C 60 80 B1 */	lis r3, sav_mark_winT_model@ha /* 0x80B10DF0@ha */
/* 805EA370  90 1E 00 00 */	stw r0, 0(r30)
/* 805EA374  38 03 0D F0 */	addi r0, r3, sav_mark_winT_model@l /* 0x80B10DF0@l */
/* 805EA378  3B DE 00 08 */	addi r30, r30, 8
/* 805EA37C  90 04 00 04 */	stw r0, 4(r4)
/* 805EA380  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805EA384  39 61 00 30 */	addi r11, r1, 0x30
/* 805EA388  4B AB 0B 99 */	bl func_8009AF20
/* 805EA38C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EA390  7C 08 03 A6 */	mtlr r0
/* 805EA394  38 21 00 30 */	addi r1, r1, 0x30
/* 805EA398  4E 80 00 20 */	blr 
