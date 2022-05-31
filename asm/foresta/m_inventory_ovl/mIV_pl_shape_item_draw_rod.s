lbl_805E2278:
/* 805E2278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E227C  7C 08 02 A6 */	mflr r0
/* 805E2280  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E2284  39 61 00 30 */	addi r11, r1, 0x30
/* 805E2288  4B AB 8C 45 */	bl func_8009AECC
/* 805E228C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E2290  7C 7B 1B 78 */	mr r27, r3
/* 805E2294  7C 9E 23 78 */	mr r30, r4
/* 805E2298  80 84 00 00 */	lwz r4, 0(r4)
/* 805E229C  80 7F 09 88 */	lwz r3, 0x988(r31)
/* 805E22A0  80 04 02 D4 */	lwz r0, 0x2d4(r4)
/* 805E22A4  3B A3 02 24 */	addi r29, r3, 0x224
/* 805E22A8  80 63 02 3C */	lwz r3, 0x23c(r3)
/* 805E22AC  88 63 00 01 */	lbz r3, 1(r3)
/* 805E22B0  54 63 30 32 */	slwi r3, r3, 6
/* 805E22B4  7C 03 00 51 */	subf. r0, r3, r0
/* 805E22B8  90 04 02 D4 */	stw r0, 0x2d4(r4)
/* 805E22BC  7C 1C 03 78 */	mr r28, r0
/* 805E22C0  41 82 01 1C */	beq lbl_805E23DC
/* 805E22C4  3C 80 80 65 */	lis r4, lit_928@ha /* 0x8064B444@ha */
/* 805E22C8  38 61 00 08 */	addi r3, r1, 8
/* 805E22CC  C0 24 B4 44 */	lfs f1, lit_928@l(r4)  /* 0x8064B444@l */
/* 805E22D0  4B E2 B2 61 */	bl Matrix_Position_VecZ
/* 805E22D4  7F C3 F3 78 */	mr r3, r30
/* 805E22D8  7F A4 EB 78 */	mr r4, r29
/* 805E22DC  7F 85 E3 78 */	mr r5, r28
/* 805E22E0  38 C0 00 00 */	li r6, 0
/* 805E22E4  38 E0 00 00 */	li r7, 0
/* 805E22E8  39 00 00 00 */	li r8, 0
/* 805E22EC  4B D8 F4 4D */	bl cKF_Si3_draw_R_SV
/* 805E22F0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805E22F4  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E22F8  38 63 02 F4 */	addi r3, r3, 0x2f4
/* 805E22FC  4B E2 9F 5D */	bl Matrix_put
/* 805E2300  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E2304  3C 80 80 65 */	lis r4, lit_928@ha /* 0x8064B444@ha */
/* 805E2308  38 A3 B4 00 */	addi r5, r3, lit_744@l /* 0x8064B400@l */
/* 805E230C  C0 64 B4 44 */	lfs f3, lit_928@l(r4)  /* 0x8064B444@l */
/* 805E2310  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E2314  38 60 00 01 */	li r3, 1
/* 805E2318  FC 40 08 90 */	fmr f2, f1
/* 805E231C  4B E2 9F E5 */	bl Matrix_translate
/* 805E2320  38 60 11 39 */	li r3, 0x1139
/* 805E2324  38 80 00 01 */	li r4, 1
/* 805E2328  4B E2 A4 C9 */	bl Matrix_RotateZ
/* 805E232C  38 60 2E 93 */	li r3, 0x2e93
/* 805E2330  38 80 00 01 */	li r4, 1
/* 805E2334  4B E2 A1 85 */	bl Matrix_RotateX
/* 805E2338  38 60 38 A1 */	li r3, 0x38a1
/* 805E233C  38 80 00 01 */	li r4, 1
/* 805E2340  4B E2 A3 1D */	bl Matrix_RotateY
/* 805E2344  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E2348  3C 80 80 65 */	lis r4, lit_929@ha /* 0x8064B448@ha */
/* 805E234C  38 A3 B4 00 */	addi r5, r3, lit_744@l /* 0x8064B400@l */
/* 805E2350  C0 44 B4 48 */	lfs f2, lit_929@l(r4)  /* 0x8064B448@l */
/* 805E2354  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E2358  38 60 00 01 */	li r3, 1
/* 805E235C  FC 60 08 90 */	fmr f3, f1
/* 805E2360  4B E2 9F A1 */	bl Matrix_translate
/* 805E2364  83 9E 00 00 */	lwz r28, 0(r30)
/* 805E2368  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E236C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E2370  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 805E2374  38 7D 00 08 */	addi r3, r29, 8
/* 805E2378  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805E237C  90 1D 00 00 */	stw r0, 0(r29)
/* 805E2380  80 7E 00 00 */	lwz r3, 0(r30)
/* 805E2384  4B E2 B0 51 */	bl _Matrix_to_Mtx_new
/* 805E2388  90 7D 00 04 */	stw r3, 4(r29)
/* 805E238C  A8 1F 00 06 */	lha r0, 6(r31)
/* 805E2390  2C 00 00 07 */	cmpwi r0, 7
/* 805E2394  40 82 00 28 */	bne lbl_805E23BC
/* 805E2398  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805E239C  3C 60 80 A9 */	lis r3, inv_uki2_model@ha /* 0x80A91B30@ha */
/* 805E23A0  3C 80 DE 00 */	lis r4, 0xde00
/* 805E23A4  38 A6 00 08 */	addi r5, r6, 8
/* 805E23A8  38 03 1B 30 */	addi r0, r3, inv_uki2_model@l /* 0x80A91B30@l */
/* 805E23AC  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805E23B0  90 86 00 00 */	stw r4, 0(r6)
/* 805E23B4  90 06 00 04 */	stw r0, 4(r6)
/* 805E23B8  48 00 00 24 */	b lbl_805E23DC
lbl_805E23BC:
/* 805E23BC  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805E23C0  3C 60 80 A9 */	lis r3, inv_uki_model@ha /* 0x80A91770@ha */
/* 805E23C4  3C 80 DE 00 */	lis r4, 0xde00
/* 805E23C8  38 A6 00 08 */	addi r5, r6, 8
/* 805E23CC  38 03 17 70 */	addi r0, r3, inv_uki_model@l /* 0x80A91770@l */
/* 805E23D0  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805E23D4  90 86 00 00 */	stw r4, 0(r6)
/* 805E23D8  90 06 00 04 */	stw r0, 4(r6)
lbl_805E23DC:
/* 805E23DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805E23E0  4B AB 8B 39 */	bl func_8009AF18
/* 805E23E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E23E8  7C 08 03 A6 */	mtlr r0
/* 805E23EC  38 21 00 30 */	addi r1, r1, 0x30
/* 805E23F0  4E 80 00 20 */	blr 
