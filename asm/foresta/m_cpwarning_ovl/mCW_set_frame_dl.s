lbl_805CEE3C:
/* 805CEE3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CEE40  7C 08 02 A6 */	mflr r0
/* 805CEE44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CEE48  39 61 00 20 */	addi r11, r1, 0x20
/* 805CEE4C  4B AC C0 89 */	bl func_8009AED4
/* 805CEE50  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CEE54  3C 60 80 65 */	lis r3, lit_484@ha /* 0x8064B06C@ha */
/* 805CEE58  38 E3 B0 6C */	addi r7, r3, lit_484@l /* 0x8064B06C@l */
/* 805CEE5C  83 E4 00 00 */	lwz r31, 0(r4)
/* 805CEE60  83 A6 09 C4 */	lwz r29, 0x9c4(r6)
/* 805CEE64  3C 60 80 65 */	lis r3, lit_412@ha /* 0x8064B048@ha */
/* 805CEE68  38 C3 B0 48 */	addi r6, r3, lit_412@l /* 0x8064B048@l */
/* 805CEE6C  C0 27 00 00 */	lfs f1, 0(r7)
/* 805CEE70  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805CEE74  7C BE 2B 78 */	mr r30, r5
/* 805CEE78  C0 66 00 00 */	lfs f3, 0(r6)
/* 805CEE7C  38 60 00 00 */	li r3, 0
/* 805CEE80  EC 21 00 32 */	fmuls f1, f1, f0
/* 805CEE84  FC 40 08 90 */	fmr f2, f1
/* 805CEE88  4B E3 D5 65 */	bl Matrix_scale
/* 805CEE8C  3C 60 80 65 */	lis r3, lit_485@ha /* 0x8064B070@ha */
/* 805CEE90  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805CEE94  C0 63 B0 70 */	lfs f3, lit_485@l(r3)  /* 0x8064B070@l */
/* 805CEE98  38 60 00 01 */	li r3, 1
/* 805CEE9C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 805CEEA0  4B E3 D4 61 */	bl Matrix_translate
/* 805CEEA4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CEEA8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805CEEAC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CEEB0  7F E3 FB 78 */	mr r3, r31
/* 805CEEB4  90 1E 00 00 */	stw r0, 0(r30)
/* 805CEEB8  4B E3 E5 1D */	bl _Matrix_to_Mtx_new
/* 805CEEBC  90 7E 00 04 */	stw r3, 4(r30)
/* 805CEEC0  3C 00 F9 00 */	lis r0, 0xf900
/* 805CEEC4  38 A0 FF 28 */	li r5, -216
/* 805CEEC8  3C 80 DE 00 */	lis r4, 0xde00
/* 805CEECC  90 1E 00 08 */	stw r0, 8(r30)
/* 805CEED0  3C 60 80 A2 */	lis r3, dia_att_winT_model@ha /* 0x80A184E8@ha */
/* 805CEED4  38 03 84 E8 */	addi r0, r3, dia_att_winT_model@l /* 0x80A184E8@l */
/* 805CEED8  90 BE 00 0C */	stw r5, 0xc(r30)
/* 805CEEDC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805CEEE0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805CEEE4  3B DE 00 18 */	addi r30, r30, 0x18
/* 805CEEE8  88 1D 00 05 */	lbz r0, 5(r29)
/* 805CEEEC  28 00 00 00 */	cmplwi r0, 0
/* 805CEEF0  41 82 00 28 */	beq lbl_805CEF18
/* 805CEEF4  3C C0 80 65 */	lis r6, lit_486@ha /* 0x8064B074@ha */
/* 805CEEF8  3C A0 80 65 */	lis r5, lit_487@ha /* 0x8064B078@ha */
/* 805CEEFC  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064B04C@ha */
/* 805CEF00  C0 26 B0 74 */	lfs f1, lit_486@l(r6)  /* 0x8064B074@l */
/* 805CEF04  C0 45 B0 78 */	lfs f2, lit_487@l(r5)  /* 0x8064B078@l */
/* 805CEF08  38 60 00 01 */	li r3, 1
/* 805CEF0C  C0 64 B0 4C */	lfs f3, lit_413@l(r4)  /* 0x8064B04C@l */
/* 805CEF10  4B E3 D3 F1 */	bl Matrix_translate
/* 805CEF14  48 00 00 24 */	b lbl_805CEF38
lbl_805CEF18:
/* 805CEF18  3C C0 80 65 */	lis r6, lit_488@ha /* 0x8064B07C@ha */
/* 805CEF1C  3C A0 80 65 */	lis r5, lit_487@ha /* 0x8064B078@ha */
/* 805CEF20  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064B04C@ha */
/* 805CEF24  C0 26 B0 7C */	lfs f1, lit_488@l(r6)  /* 0x8064B07C@l */
/* 805CEF28  C0 45 B0 78 */	lfs f2, lit_487@l(r5)  /* 0x8064B078@l */
/* 805CEF2C  38 60 00 01 */	li r3, 1
/* 805CEF30  C0 64 B0 4C */	lfs f3, lit_413@l(r4)  /* 0x8064B04C@l */
/* 805CEF34  4B E3 D3 CD */	bl Matrix_translate
lbl_805CEF38:
/* 805CEF38  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CEF3C  7F DD F3 78 */	mr r29, r30
/* 805CEF40  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CEF44  7F E3 FB 78 */	mr r3, r31
/* 805CEF48  90 1E 00 00 */	stw r0, 0(r30)
/* 805CEF4C  3B DE 00 08 */	addi r30, r30, 8
/* 805CEF50  4B E3 E4 85 */	bl _Matrix_to_Mtx_new
/* 805CEF54  90 7D 00 04 */	stw r3, 4(r29)
/* 805CEF58  7F C4 F3 78 */	mr r4, r30
/* 805CEF5C  3C 00 DE 00 */	lis r0, 0xde00
/* 805CEF60  3C 60 80 A2 */	lis r3, dia_att_cursor_model@ha /* 0x80A184B0@ha */
/* 805CEF64  90 1E 00 00 */	stw r0, 0(r30)
/* 805CEF68  38 03 84 B0 */	addi r0, r3, dia_att_cursor_model@l /* 0x80A184B0@l */
/* 805CEF6C  3B DE 00 08 */	addi r30, r30, 8
/* 805CEF70  90 04 00 04 */	stw r0, 4(r4)
/* 805CEF74  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805CEF78  39 61 00 20 */	addi r11, r1, 0x20
/* 805CEF7C  4B AC BF A5 */	bl func_8009AF20
/* 805CEF80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CEF84  7C 08 03 A6 */	mtlr r0
/* 805CEF88  38 21 00 20 */	addi r1, r1, 0x20
/* 805CEF8C  4E 80 00 20 */	blr 
