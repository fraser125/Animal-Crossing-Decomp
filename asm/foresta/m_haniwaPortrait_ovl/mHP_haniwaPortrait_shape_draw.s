lbl_805DF9D4:
/* 805DF9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DF9D8  7C 08 02 A6 */	mflr r0
/* 805DF9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DF9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805DF9E4  4B AB B4 E5 */	bl func_8009AEC8
/* 805DF9E8  7C 7B 1B 78 */	mr r27, r3
/* 805DF9EC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF9F0  83 E5 00 00 */	lwz r31, 0(r5)
/* 805DF9F4  7C BD 2B 78 */	mr r29, r5
/* 805DF9F8  80 63 09 84 */	lwz r3, 0x984(r3)
/* 805DF9FC  7C 9C 23 78 */	mr r28, r4
/* 805DFA00  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805DFA04  80 63 00 18 */	lwz r3, 0x18(r3)
/* 805DFA08  88 63 00 01 */	lbz r3, 1(r3)
/* 805DFA0C  54 63 30 32 */	slwi r3, r3, 6
/* 805DFA10  7C 03 00 51 */	subf. r0, r3, r0
/* 805DFA14  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805DFA18  7C 1E 03 78 */	mr r30, r0
/* 805DFA1C  41 82 01 1C */	beq lbl_805DFB38
/* 805DFA20  80 7D 00 00 */	lwz r3, 0(r29)
/* 805DFA24  4B E0 56 E5 */	bl _texture_z_light_fog_prim
/* 805DFA28  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064B33C@ha */
/* 805DFA2C  38 60 00 00 */	li r3, 0
/* 805DFA30  C0 24 B3 3C */	lfs f1, lit_437@l(r4)  /* 0x8064B33C@l */
/* 805DFA34  FC 40 08 90 */	fmr f2, f1
/* 805DFA38  FC 60 08 90 */	fmr f3, f1
/* 805DFA3C  4B E2 C9 B1 */	bl Matrix_scale
/* 805DFA40  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 805DFA44  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DFA48  3C A0 E7 00 */	lis r5, 0xe700
/* 805DFA4C  38 80 00 00 */	li r4, 0
/* 805DFA50  38 C7 00 08 */	addi r6, r7, 8
/* 805DFA54  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DFA58  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 805DFA5C  7F E3 FB 78 */	mr r3, r31
/* 805DFA60  90 A7 00 00 */	stw r5, 0(r7)
/* 805DFA64  90 87 00 04 */	stw r4, 4(r7)
/* 805DFA68  83 5F 02 D0 */	lwz r26, 0x2d0(r31)
/* 805DFA6C  38 9A 00 08 */	addi r4, r26, 8
/* 805DFA70  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805DFA74  90 1A 00 00 */	stw r0, 0(r26)
/* 805DFA78  4B E2 D9 5D */	bl _Matrix_to_Mtx_new
/* 805DFA7C  90 7A 00 04 */	stw r3, 4(r26)
/* 805DFA80  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB06002C@ha */
/* 805DFA84  3C A0 80 8A */	lis r5, hnw_tmem_txt@ha /* 0x8089B180@ha */
/* 805DFA88  3C 80 F0 8F */	lis r4, 0xF08F /* 0xF08F4010@ha */
/* 805DFA8C  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 805DFA90  3C 60 80 8A */	lis r3, data_8089B160@ha /* 0x8089B160@ha */
/* 805DFA94  38 C6 00 2C */	addi r6, r6, 0x002C /* 0xDB06002C@l */
/* 805DFA98  38 A5 B1 80 */	addi r5, r5, hnw_tmem_txt@l /* 0x8089B180@l */
/* 805DFA9C  38 07 00 08 */	addi r0, r7, 8
/* 805DFAA0  38 84 40 10 */	addi r4, r4, 0x4010 /* 0xF08F4010@l */
/* 805DFAA4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 805DFAA8  38 03 B1 60 */	addi r0, r3, data_8089B160@l /* 0x8089B160@l */
/* 805DFAAC  90 C7 00 00 */	stw r6, 0(r7)
/* 805DFAB0  90 A7 00 04 */	stw r5, 4(r7)
/* 805DFAB4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 805DFAB8  38 65 00 08 */	addi r3, r5, 8
/* 805DFABC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 805DFAC0  90 85 00 00 */	stw r4, 0(r5)
/* 805DFAC4  90 05 00 04 */	stw r0, 4(r5)
/* 805DFAC8  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 805DFACC  2C 00 00 00 */	cmpwi r0, 0
/* 805DFAD0  40 82 00 28 */	bne lbl_805DFAF8
/* 805DFAD4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 805DFAD8  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805DFADC  38 63 00 80 */	addi r3, r3, 0x0080 /* 0xFA000080@l */
/* 805DFAE0  38 00 FF FF */	li r0, -1
/* 805DFAE4  38 85 00 08 */	addi r4, r5, 8
/* 805DFAE8  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805DFAEC  90 65 00 00 */	stw r3, 0(r5)
/* 805DFAF0  90 05 00 04 */	stw r0, 4(r5)
/* 805DFAF4  48 00 00 24 */	b lbl_805DFB18
lbl_805DFAF8:
/* 805DFAF8  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 805DFAFC  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805DFB00  38 63 00 80 */	addi r3, r3, 0x0080 /* 0xFA000080@l */
/* 805DFB04  38 00 FF FF */	li r0, -1
/* 805DFB08  38 85 00 08 */	addi r4, r5, 8
/* 805DFB0C  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805DFB10  90 65 00 00 */	stw r3, 0(r5)
/* 805DFB14  90 05 00 04 */	stw r0, 4(r5)
lbl_805DFB18:
/* 805DFB18  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 805DFB1C  7F A3 EB 78 */	mr r3, r29
/* 805DFB20  7F C5 F3 78 */	mr r5, r30
/* 805DFB24  38 C0 00 00 */	li r6, 0
/* 805DFB28  80 84 09 84 */	lwz r4, 0x984(r4)
/* 805DFB2C  38 E0 00 00 */	li r7, 0
/* 805DFB30  39 00 00 00 */	li r8, 0
/* 805DFB34  4B D9 1C 05 */	bl cKF_Si3_draw_R_SV
lbl_805DFB38:
/* 805DFB38  39 61 00 20 */	addi r11, r1, 0x20
/* 805DFB3C  4B AB B3 D9 */	bl func_8009AF14
/* 805DFB40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DFB44  7C 08 03 A6 */	mtlr r0
/* 805DFB48  38 21 00 20 */	addi r1, r1, 0x20
/* 805DFB4C  4E 80 00 20 */	blr 
