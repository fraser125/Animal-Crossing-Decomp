lbl_805D7C88:
/* 805D7C88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D7C8C  7C 08 02 A6 */	mflr r0
/* 805D7C90  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D7C94  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805D7C98  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805D7C9C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805D7CA0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805D7CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7CA8  4B AC 32 2D */	bl func_8009AED4
/* 805D7CAC  3C C0 80 65 */	lis r6, lit_485@ha /* 0x8064B1F4@ha */
/* 805D7CB0  FF C0 08 90 */	fmr f30, f1
/* 805D7CB4  C0 26 B1 F4 */	lfs f1, lit_485@l(r6)  /* 0x8064B1F4@l */
/* 805D7CB8  3C A0 80 65 */	lis r5, lit_439@ha /* 0x8064B1D8@ha */
/* 805D7CBC  FF E0 10 90 */	fmr f31, f2
/* 805D7CC0  7C 7D 1B 78 */	mr r29, r3
/* 805D7CC4  FC 40 08 90 */	fmr f2, f1
/* 805D7CC8  C0 65 B1 D8 */	lfs f3, lit_439@l(r5)  /* 0x8064B1D8@l */
/* 805D7CCC  7C 9E 23 78 */	mr r30, r4
/* 805D7CD0  38 60 00 00 */	li r3, 0
/* 805D7CD4  4B E3 47 19 */	bl Matrix_scale
/* 805D7CD8  3C 60 80 65 */	lis r3, lit_486@ha /* 0x8064B1F8@ha */
/* 805D7CDC  FC 20 F0 90 */	fmr f1, f30
/* 805D7CE0  C0 63 B1 F8 */	lfs f3, lit_486@l(r3)  /* 0x8064B1F8@l */
/* 805D7CE4  FC 40 F8 90 */	fmr f2, f31
/* 805D7CE8  38 60 00 01 */	li r3, 1
/* 805D7CEC  4B E3 46 15 */	bl Matrix_translate
/* 805D7CF0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D7CF4  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 805D7CF8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D7CFC  7F C3 F3 78 */	mr r3, r30
/* 805D7D00  90 1F 00 00 */	stw r0, 0(r31)
/* 805D7D04  4B E3 56 D1 */	bl _Matrix_to_Mtx_new
/* 805D7D08  90 7F 00 04 */	stw r3, 4(r31)
/* 805D7D0C  3D 00 DE 00 */	lis r8, 0xde00
/* 805D7D10  3C 60 80 A6 */	lis r3, lat_kakunin_DL_mode@ha /* 0x80A58970@ha */
/* 805D7D14  3C A0 80 A6 */	lis r5, lat_kakunin_wakuT_model@ha /* 0x80A589D0@ha */
/* 805D7D18  91 1F 00 08 */	stw r8, 8(r31)
/* 805D7D1C  38 03 89 70 */	addi r0, r3, lat_kakunin_DL_mode@l /* 0x80A58970@l */
/* 805D7D20  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805D7D24  3C 60 80 A6 */	lis r3, lat_kakunin_c_model@ha /* 0x80A589A0@ha */
/* 805D7D28  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805D7D2C  38 E5 89 D0 */	addi r7, r5, lat_kakunin_wakuT_model@l /* 0x80A589D0@l */
/* 805D7D30  3C C0 E7 00 */	lis r6, 0xe700
/* 805D7D34  38 A0 00 00 */	li r5, 0
/* 805D7D38  91 1F 00 10 */	stw r8, 0x10(r31)
/* 805D7D3C  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 805D7D40  38 03 89 A0 */	addi r0, r3, lat_kakunin_c_model@l /* 0x80A589A0@l */
/* 805D7D44  90 FF 00 14 */	stw r7, 0x14(r31)
/* 805D7D48  90 DF 00 18 */	stw r6, 0x18(r31)
/* 805D7D4C  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 805D7D50  90 9F 00 20 */	stw r4, 0x20(r31)
/* 805D7D54  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805D7D58  80 63 09 A4 */	lwz r3, 0x9a4(r3)
/* 805D7D5C  88 63 00 03 */	lbz r3, 3(r3)
/* 805D7D60  60 63 FF 00 */	ori r3, r3, 0xff00
/* 805D7D64  90 7F 00 24 */	stw r3, 0x24(r31)
/* 805D7D68  3B FF 00 28 */	addi r31, r31, 0x28
/* 805D7D6C  7F E3 FB 78 */	mr r3, r31
/* 805D7D70  91 1F 00 00 */	stw r8, 0(r31)
/* 805D7D74  3B FF 00 08 */	addi r31, r31, 8
/* 805D7D78  90 03 00 04 */	stw r0, 4(r3)
/* 805D7D7C  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 805D7D80  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805D7D84  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805D7D88  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805D7D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7D90  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805D7D94  4B AC 31 8D */	bl func_8009AF20
/* 805D7D98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D7D9C  7C 08 03 A6 */	mtlr r0
/* 805D7DA0  38 21 00 40 */	addi r1, r1, 0x40
/* 805D7DA4  4E 80 00 20 */	blr 
