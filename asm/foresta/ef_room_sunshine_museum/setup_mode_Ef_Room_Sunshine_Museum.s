lbl_804D0B3C:
/* 804D0B3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D0B40  7C 08 02 A6 */	mflr r0
/* 804D0B44  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D0B48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D0B4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D0B50  39 61 00 30 */	addi r11, r1, 0x30
/* 804D0B54  4B BC A3 81 */	bl func_8009AED4
/* 804D0B58  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 804D0B5C  7C 7D 1B 78 */	mr r29, r3
/* 804D0B60  38 65 61 38 */	addi r3, r5, debug_mode@l /* 0x81166138@l */
/* 804D0B64  3C A0 43 30 */	lis r5, 0x4330
/* 804D0B68  81 03 00 00 */	lwz r8, 0(r3)
/* 804D0B6C  3C 60 80 64 */	lis r3, lit_407@ha /* 0x806463F4@ha */
/* 804D0B70  38 E3 63 F4 */	addi r7, r3, lit_407@l /* 0x806463F4@l */
/* 804D0B74  7C 9E 23 78 */	mr r30, r4
/* 804D0B78  A8 C8 1B 3C */	lha r6, 0x1b3c(r8)
/* 804D0B7C  38 60 00 00 */	li r3, 0
/* 804D0B80  A8 88 1B 3E */	lha r4, 0x1b3e(r8)
/* 804D0B84  A8 08 1B 40 */	lha r0, 0x1b40(r8)
/* 804D0B88  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 804D0B8C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804D0B90  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804D0B94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D0B98  C8 A7 00 00 */	lfd f5, 0(r7)
/* 804D0B9C  90 A1 00 08 */	stw r5, 8(r1)
/* 804D0BA0  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 804D0BA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D0BA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804D0BAC  EC 20 28 28 */	fsubs f1, f0, f5
/* 804D0BB0  C0 9D 00 2C */	lfs f4, 0x2c(r29)
/* 804D0BB4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804D0BB8  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804D0BBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804D0BC0  EC 22 08 2A */	fadds f1, f2, f1
/* 804D0BC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D0BC8  EC 40 28 28 */	fsubs f2, f0, f5
/* 804D0BCC  83 FE 00 00 */	lwz r31, 0(r30)
/* 804D0BD0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804D0BD4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804D0BD8  EC 44 10 2A */	fadds f2, f4, f2
/* 804D0BDC  EC 00 28 28 */	fsubs f0, f0, f5
/* 804D0BE0  EC 63 00 2A */	fadds f3, f3, f0
/* 804D0BE4  4B F3 B7 1D */	bl Matrix_translate
/* 804D0BE8  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 804D0BEC  38 60 00 01 */	li r3, 1
/* 804D0BF0  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804D0BF4  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 804D0BF8  4B F3 B7 F5 */	bl Matrix_scale
/* 804D0BFC  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804D0C00  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804D0C04  3C A0 E7 00 */	lis r5, 0xe700
/* 804D0C08  38 80 00 00 */	li r4, 0
/* 804D0C0C  38 C7 00 08 */	addi r6, r7, 8
/* 804D0C10  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804D0C14  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804D0C18  90 A7 00 00 */	stw r5, 0(r7)
/* 804D0C1C  90 87 00 04 */	stw r4, 4(r7)
/* 804D0C20  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 804D0C24  38 7D 00 08 */	addi r3, r29, 8
/* 804D0C28  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804D0C2C  90 1D 00 00 */	stw r0, 0(r29)
/* 804D0C30  80 7E 00 00 */	lwz r3, 0(r30)
/* 804D0C34  4B F3 C7 A1 */	bl _Matrix_to_Mtx_new
/* 804D0C38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D0C3C  90 7D 00 04 */	stw r3, 4(r29)
/* 804D0C40  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D0C44  3C 63 00 02 */	addis r3, r3, 2
/* 804D0C48  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D0C4C  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D0C50  41 80 00 1C */	blt lbl_804D0C6C
/* 804D0C54  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D0C58  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D0C5C  7C 04 00 00 */	cmpw r4, r0
/* 804D0C60  40 80 00 0C */	bge lbl_804D0C6C
/* 804D0C64  3B BE 1D 70 */	addi r29, r30, 0x1d70
/* 804D0C68  48 00 00 08 */	b lbl_804D0C70
lbl_804D0C6C:
/* 804D0C6C  3B BE 1D 73 */	addi r29, r30, 0x1d73
lbl_804D0C70:
/* 804D0C70  4B EE 8B E1 */	bl mKK_windowlight_alpha_get
/* 804D0C74  FF E0 08 90 */	fmr f31, f1
/* 804D0C78  4B FF FC 49 */	bl calc_alpha_Ef_Room_SunshineMuseum
/* 804D0C7C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D0C80  3C 00 43 30 */	lis r0, 0x4330
/* 804D0C84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804D0C88  3C 60 80 64 */	lis r3, lit_484@ha /* 0x8064640C@ha */
/* 804D0C8C  C8 23 64 0C */	lfd f1, lit_484@l(r3)  /* 0x8064640C@l */
/* 804D0C90  90 01 00 18 */	stw r0, 0x18(r1)
/* 804D0C94  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804D0C98  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804D0C9C  38 05 00 08 */	addi r0, r5, 8
/* 804D0CA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D0CA4  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804D0CA8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804D0CAC  FC 00 00 1E */	fctiwz f0, f0
/* 804D0CB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804D0CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0CB8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D0CBC  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804D0CC0  90 05 00 00 */	stw r0, 0(r5)
/* 804D0CC4  88 1D 00 01 */	lbz r0, 1(r29)
/* 804D0CC8  88 7D 00 00 */	lbz r3, 0(r29)
/* 804D0CCC  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804D0CD0  88 9D 00 02 */	lbz r4, 2(r29)
/* 804D0CD4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804D0CD8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804D0CDC  60 00 00 4B */	ori r0, r0, 0x4b
/* 804D0CE0  90 05 00 04 */	stw r0, 4(r5)
/* 804D0CE4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D0CE8  39 61 00 30 */	addi r11, r1, 0x30
/* 804D0CEC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D0CF0  4B BC A2 31 */	bl func_8009AF20
/* 804D0CF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D0CF8  7C 08 03 A6 */	mtlr r0
/* 804D0CFC  38 21 00 40 */	addi r1, r1, 0x40
/* 804D0D00  4E 80 00 20 */	blr 
