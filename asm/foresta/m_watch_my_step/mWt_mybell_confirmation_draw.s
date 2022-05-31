lbl_803F6188:
/* 803F6188  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F618C  7C 08 02 A6 */	mflr r0
/* 803F6190  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F6194  39 61 00 40 */	addi r11, r1, 0x40
/* 803F6198  4B CA 4D 35 */	bl func_8009AECC
/* 803F619C  83 C3 00 00 */	lwz r30, 0(r3)
/* 803F61A0  7C 7F 1B 78 */	mr r31, r3
/* 803F61A4  3C 80 81 17 */	lis r4, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F61A8  80 7E 02 D4 */	lwz r3, 0x2d4(r30)
/* 803F61AC  38 84 15 94 */	addi r4, r4, S_mybell_conf@l /* 0x81171594@l */
/* 803F61B0  3B A3 FF C0 */	addi r29, r3, -64
/* 803F61B4  93 BE 02 D4 */	stw r29, 0x2d4(r30)
/* 803F61B8  88 04 00 0B */	lbz r0, 0xb(r4)
/* 803F61BC  28 00 00 00 */	cmplwi r0, 0
/* 803F61C0  41 82 02 20 */	beq lbl_803F63E0
/* 803F61C4  3C 60 80 64 */	lis r3, lit_630@ha /* 0x806433A0@ha */
/* 803F61C8  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F61CC  C0 23 33 A0 */	lfs f1, lit_630@l(r3)  /* 0x806433A0@l */
/* 803F61D0  28 1D 00 00 */	cmplwi r29, 0
/* 803F61D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F61D8  FC 00 00 1E */	fctiwz f0, f0
/* 803F61DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803F61E0  83 81 00 1C */	lwz r28, 0x1c(r1)
/* 803F61E4  41 82 00 28 */	beq lbl_803F620C
/* 803F61E8  7F A3 EB 78 */	mr r3, r29
/* 803F61EC  4B FB 9E F5 */	bl mFont_CulcOrthoMatrix
/* 803F61F0  80 9E 02 F0 */	lwz r4, 0x2f0(r30)
/* 803F61F4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 803F61F8  38 03 00 07 */	addi r0, r3, 0x0007 /* 0xDA380007@l */
/* 803F61FC  38 64 00 08 */	addi r3, r4, 8
/* 803F6200  90 7E 02 F0 */	stw r3, 0x2f0(r30)
/* 803F6204  90 04 00 00 */	stw r0, 0(r4)
/* 803F6208  93 A4 00 04 */	stw r29, 4(r4)
lbl_803F620C:
/* 803F620C  3C 80 80 64 */	lis r4, lit_623@ha /* 0x80643384@ha */
/* 803F6210  38 60 00 00 */	li r3, 0
/* 803F6214  C0 24 33 84 */	lfs f1, lit_623@l(r4)  /* 0x80643384@l */
/* 803F6218  FC 40 08 90 */	fmr f2, f1
/* 803F621C  FC 60 08 90 */	fmr f3, f1
/* 803F6220  48 01 61 CD */	bl Matrix_scale
/* 803F6224  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803F6228  83 BE 02 F0 */	lwz r29, 0x2f0(r30)
/* 803F622C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803F6230  7F C3 F3 78 */	mr r3, r30
/* 803F6234  90 1D 00 00 */	stw r0, 0(r29)
/* 803F6238  48 01 71 9D */	bl _Matrix_to_Mtx_new
/* 803F623C  90 7D 00 04 */	stw r3, 4(r29)
/* 803F6240  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 803F6244  3D 40 DE 00 */	lis r10, 0xde00
/* 803F6248  3C 80 80 EE */	lis r4, fki_win_mode@ha /* 0x80EE5018@ha */
/* 803F624C  91 5D 00 08 */	stw r10, 8(r29)
/* 803F6250  38 04 50 18 */	addi r0, r4, fki_win_mode@l /* 0x80EE5018@l */
/* 803F6254  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE200001C@ha */
/* 803F6258  3C C0 80 EE */	lis r6, mny_win_ueT_model@ha /* 0x80EE4700@ha */
/* 803F625C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 803F6260  39 24 00 1C */	addi r9, r4, 0x001C /* 0xE200001C@l */
/* 803F6264  3D 00 00 50 */	lis r8, 0x0050 /* 0x00504340@ha */
/* 803F6268  64 60 5F 32 */	oris r0, r3, 0x5f32
/* 803F626C  91 3D 00 10 */	stw r9, 0x10(r29)
/* 803F6270  38 88 43 40 */	addi r4, r8, 0x4340 /* 0x00504340@l */
/* 803F6274  38 E6 47 00 */	addi r7, r6, mny_win_ueT_model@l /* 0x80EE4700@l */
/* 803F6278  64 6C FF F5 */	oris r12, r3, 0xfff5
/* 803F627C  90 9D 00 14 */	stw r4, 0x14(r29)
/* 803F6280  64 6B FA 00 */	oris r11, r3, 0xfa00
/* 803F6284  3C A0 80 EE */	lis r5, mny_win_beruT_model@ha /* 0x80EE46A0@ha */
/* 803F6288  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F628C  91 7D 00 18 */	stw r11, 0x18(r29)
/* 803F6290  60 00 AF 00 */	ori r0, r0, 0xaf00
/* 803F6294  C0 23 33 34 */	lfs f1, lit_544@l(r3)  /* 0x80643334@l */
/* 803F6298  38 C8 42 40 */	addi r6, r8, 0x4240
/* 803F629C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 803F62A0  3C 80 80 EE */	lis r4, mny_win_mojiT_model@ha /* 0x80EE46D0@ha */
/* 803F62A4  61 8C FF 00 */	ori r12, r12, 0xff00
/* 803F62A8  38 A5 46 A0 */	addi r5, r5, mny_win_beruT_model@l /* 0x80EE46A0@l */
/* 803F62AC  91 5D 00 20 */	stw r10, 0x20(r29)
/* 803F62B0  FC 40 08 90 */	fmr f2, f1
/* 803F62B4  38 04 46 D0 */	addi r0, r4, mny_win_mojiT_model@l /* 0x80EE46D0@l */
/* 803F62B8  FC 60 08 90 */	fmr f3, f1
/* 803F62BC  90 FD 00 24 */	stw r7, 0x24(r29)
/* 803F62C0  38 60 00 00 */	li r3, 0
/* 803F62C4  91 3D 00 28 */	stw r9, 0x28(r29)
/* 803F62C8  90 DD 00 2C */	stw r6, 0x2c(r29)
/* 803F62CC  91 7D 00 30 */	stw r11, 0x30(r29)
/* 803F62D0  91 9D 00 34 */	stw r12, 0x34(r29)
/* 803F62D4  91 5D 00 38 */	stw r10, 0x38(r29)
/* 803F62D8  90 BD 00 3C */	stw r5, 0x3c(r29)
/* 803F62DC  91 7D 00 40 */	stw r11, 0x40(r29)
/* 803F62E0  91 9D 00 44 */	stw r12, 0x44(r29)
/* 803F62E4  91 5D 00 48 */	stw r10, 0x48(r29)
/* 803F62E8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 803F62EC  3B BD 00 50 */	addi r29, r29, 0x50
/* 803F62F0  48 01 60 FD */	bl Matrix_scale
/* 803F62F4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803F62F8  7F BB EB 78 */	mr r27, r29
/* 803F62FC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803F6300  7F C3 F3 78 */	mr r3, r30
/* 803F6304  90 1D 00 00 */	stw r0, 0(r29)
/* 803F6308  3B BD 00 08 */	addi r29, r29, 8
/* 803F630C  48 01 70 C9 */	bl _Matrix_to_Mtx_new
/* 803F6310  90 7B 00 04 */	stw r3, 4(r27)
/* 803F6314  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F6318  38 A3 15 94 */	addi r5, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F631C  38 61 00 10 */	addi r3, r1, 0x10
/* 803F6320  93 BE 02 F0 */	stw r29, 0x2f0(r30)
/* 803F6324  38 80 00 07 */	li r4, 7
/* 803F6328  38 C0 00 06 */	li r6, 6
/* 803F632C  38 E0 00 01 */	li r7, 1
/* 803F6330  80 A5 00 04 */	lwz r5, 4(r5)
/* 803F6334  39 00 00 00 */	li r8, 0
/* 803F6338  39 20 00 01 */	li r9, 1
/* 803F633C  4B FB 91 3D */	bl mFont_UnintToString
/* 803F6340  38 61 00 10 */	addi r3, r1, 0x10
/* 803F6344  38 80 00 07 */	li r4, 7
/* 803F6348  38 A0 00 20 */	li r5, 0x20
/* 803F634C  4B FC 62 D9 */	bl func_803BC624
/* 803F6350  7C 60 1B 78 */	mr r0, r3
/* 803F6354  38 61 00 10 */	addi r3, r1, 0x10
/* 803F6358  7C 04 03 78 */	mr r4, r0
/* 803F635C  38 A0 00 01 */	li r5, 1
/* 803F6360  4B FB 93 71 */	bl mFont_GetStringWidth
/* 803F6364  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803F6368  3C 00 43 30 */	lis r0, 0x4330
/* 803F636C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803F6370  3C 80 80 64 */	lis r4, lit_563@ha /* 0x8064337C@ha */
/* 803F6374  3C 60 80 64 */	lis r3, lit_624@ha /* 0x80643388@ha */
/* 803F6378  C8 24 33 7C */	lfd f1, lit_563@l(r4)  /* 0x8064337C@l */
/* 803F637C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803F6380  38 A3 33 88 */	addi r5, r3, lit_624@l /* 0x80643388@l */
/* 803F6384  C0 65 00 00 */	lfs f3, 0(r5)
/* 803F6388  3C 60 80 64 */	lis r3, lit_875@ha /* 0x806433E4@ha */
/* 803F638C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F6390  38 83 33 E4 */	addi r4, r3, lit_875@l /* 0x806433E4@l */
/* 803F6394  38 00 00 01 */	li r0, 1
/* 803F6398  3C 60 80 64 */	lis r3, lit_876@ha /* 0x806433E8@ha */
/* 803F639C  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F63A0  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F63A4  90 01 00 08 */	stw r0, 8(r1)
/* 803F63A8  FC 80 18 90 */	fmr f4, f3
/* 803F63AC  C0 43 33 E8 */	lfs f2, lit_876@l(r3)  /* 0x806433E8@l */
/* 803F63B0  7F E3 FB 78 */	mr r3, r31
/* 803F63B4  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F63B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F63BC  38 81 00 10 */	addi r4, r1, 0x10
/* 803F63C0  57 89 06 3E */	clrlwi r9, r28, 0x18
/* 803F63C4  38 A0 00 07 */	li r5, 7
/* 803F63C8  38 C0 00 FF */	li r6, 0xff
/* 803F63CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F63D0  38 E0 00 F5 */	li r7, 0xf5
/* 803F63D4  39 00 00 00 */	li r8, 0
/* 803F63D8  39 40 00 00 */	li r10, 0
/* 803F63DC  4B FB 9C CD */	bl mFont_SetLineStrings
lbl_803F63E0:
/* 803F63E0  39 61 00 40 */	addi r11, r1, 0x40
/* 803F63E4  4B CA 4B 35 */	bl func_8009AF18
/* 803F63E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F63EC  7C 08 03 A6 */	mtlr r0
/* 803F63F0  38 21 00 40 */	addi r1, r1, 0x40
/* 803F63F4  4E 80 00 20 */	blr 
