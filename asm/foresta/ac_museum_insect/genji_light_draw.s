lbl_8046BF98:
/* 8046BF98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046BF9C  7C 08 02 A6 */	mflr r0
/* 8046BFA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8046BFA4  39 61 00 50 */	addi r11, r1, 0x50
/* 8046BFA8  4B C2 EF 21 */	bl func_8009AEC8
/* 8046BFAC  7C 7B 1B 78 */	mr r27, r3
/* 8046BFB0  7C 9C 23 78 */	mr r28, r4
/* 8046BFB4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8046BFB8  3C 60 80 64 */	lis r3, lit_1462@ha /* 0x80644748@ha */
/* 8046BFBC  80 BB 00 1C */	lwz r5, 0x1c(r27)
/* 8046BFC0  FC 20 02 10 */	fabs f1, f0
/* 8046BFC4  80 9B 00 20 */	lwz r4, 0x20(r27)
/* 8046BFC8  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8046BFCC  C0 03 47 48 */	lfs f0, lit_1462@l(r3)  /* 0x80644748@l */
/* 8046BFD0  FC 20 08 18 */	frsp f1, f1
/* 8046BFD4  90 A1 00 08 */	stw r5, 8(r1)
/* 8046BFD8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8046BFDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046BFE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046BFE4  41 80 01 D0 */	blt lbl_8046C1B4
/* 8046BFE8  A8 1B 00 78 */	lha r0, 0x78(r27)
/* 8046BFEC  2C 00 00 00 */	cmpwi r0, 0
/* 8046BFF0  40 82 00 78 */	bne lbl_8046C068
/* 8046BFF4  A8 1B 00 6C */	lha r0, 0x6c(r27)
/* 8046BFF8  7C 00 00 D0 */	neg r0, r0
/* 8046BFFC  7C 03 07 34 */	extsh r3, r0
/* 8046C000  4B F4 EA F1 */	bl sin_s
/* 8046C004  3C 60 80 64 */	lis r3, lit_4277@ha /* 0x806448E0@ha */
/* 8046C008  A8 1B 00 6C */	lha r0, 0x6c(r27)
/* 8046C00C  C0 43 48 E0 */	lfs f2, lit_4277@l(r3)  /* 0x806448E0@l */
/* 8046C010  7C 00 00 D0 */	neg r0, r0
/* 8046C014  C0 01 00 08 */	lfs f0, 8(r1)
/* 8046C018  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046C01C  7C 03 07 34 */	extsh r3, r0
/* 8046C020  EC 00 08 2A */	fadds f0, f0, f1
/* 8046C024  D0 01 00 08 */	stfs f0, 8(r1)
/* 8046C028  4B F4 EA 75 */	bl cos_s
/* 8046C02C  3C 60 80 64 */	lis r3, lit_4277@ha /* 0x806448E0@ha */
/* 8046C030  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8046C034  38 83 48 E0 */	addi r4, r3, lit_4277@l /* 0x806448E0@l */
/* 8046C038  A8 7B 00 7E */	lha r3, 0x7e(r27)
/* 8046C03C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046C040  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046C044  EC 00 08 2A */	fadds f0, f0, f1
/* 8046C048  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8046C04C  4B F4 EA 51 */	bl cos_s
/* 8046C050  3C 60 80 64 */	lis r3, lit_1033@ha /* 0x806446F4@ha */
/* 8046C054  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8046C058  C0 43 46 F4 */	lfs f2, lit_1033@l(r3)  /* 0x806446F4@l */
/* 8046C05C  EC 22 08 2A */	fadds f1, f2, f1
/* 8046C060  EC 00 08 2A */	fadds f0, f0, f1
/* 8046C064  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8046C068:
/* 8046C068  A8 DB 00 76 */	lha r6, 0x76(r27)
/* 8046C06C  3C 00 43 30 */	lis r0, 0x4330
/* 8046C070  3C 80 80 64 */	lis r4, lit_4279@ha /* 0x806448E4@ha */
/* 8046C074  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046C078  54 DA 06 3E */	clrlwi r26, r6, 0x18
/* 8046C07C  20 A6 00 FF */	subfic r5, r6, 0xff
/* 8046C080  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8046C084  54 BF 06 3E */	clrlwi r31, r5, 0x18
/* 8046C088  C0 23 46 0C */	lfs f1, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046C08C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046C090  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8046C094  C8 64 48 E4 */	lfd f3, lit_4279@l(r4)  /* 0x806448E4@l */
/* 8046C098  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8046C09C  EC 81 00 28 */	fsubs f4, f1, f0
/* 8046C0A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8046C0A4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8046C0A8  80 7C 00 00 */	lwz r3, 0(r28)
/* 8046C0AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8046C0B0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8046C0B4  EC 22 01 32 */	fmuls f1, f2, f4
/* 8046C0B8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8046C0BC  FC 20 08 1E */	fctiwz f1, f1
/* 8046C0C0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8046C0C4  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8046C0C8  FC 00 00 1E */	fctiwz f0, f0
/* 8046C0CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C0D0  7F 40 D0 50 */	subf r26, r0, r26
/* 8046C0D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C0D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C0DC  7F E0 F8 50 */	subf r31, r0, r31
/* 8046C0E0  4B F7 90 79 */	bl _texture_z_light_fog_prim_xlu
/* 8046C0E4  83 DC 00 00 */	lwz r30, 0(r28)
/* 8046C0E8  38 60 00 00 */	li r3, 0
/* 8046C0EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 8046C0F0  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 8046C0F4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8046C0F8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8046C0FC  4B FA 02 05 */	bl Matrix_translate
/* 8046C100  38 7C 20 4C */	addi r3, r28, 0x204c
/* 8046C104  38 80 00 01 */	li r4, 1
/* 8046C108  4B FA 01 91 */	bl Matrix_mult
/* 8046C10C  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8046C110  38 60 00 01 */	li r3, 1
/* 8046C114  FC 40 08 90 */	fmr f2, f1
/* 8046C118  FC 60 08 90 */	fmr f3, f1
/* 8046C11C  4B FA 02 D1 */	bl Matrix_scale
/* 8046C120  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046C124  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046C128  90 1D 00 00 */	stw r0, 0(r29)
/* 8046C12C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8046C130  4B FA 12 A5 */	bl _Matrix_to_Mtx_new
/* 8046C134  90 7D 00 04 */	stw r3, 4(r29)
/* 8046C138  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8046C13C  3D 00 FB 00 */	lis r8, 0xfb00
/* 8046C140  3C 60 80 68 */	lis r3, m_genji_disp_tbl@ha /* 0x8068650C@ha */
/* 8046C144  64 04 00 FF */	oris r4, r0, 0xff
/* 8046C148  91 1D 00 08 */	stw r8, 8(r29)
/* 8046C14C  60 84 9B 00 */	ori r4, r4, 0x9b00
/* 8046C150  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8046C154  90 9D 00 0C */	stw r4, 0xc(r29)
/* 8046C158  3C E0 DE 00 */	lis r7, 0xde00
/* 8046C15C  64 00 00 FF */	oris r0, r0, 0xff
/* 8046C160  38 C3 65 0C */	addi r6, r3, m_genji_disp_tbl@l /* 0x8068650C@l */
/* 8046C164  90 FD 00 10 */	stw r7, 0x10(r29)
/* 8046C168  60 00 9B 00 */	ori r0, r0, 0x9b00
/* 8046C16C  7F 63 DB 78 */	mr r3, r27
/* 8046C170  7F 84 E3 78 */	mr r4, r28
/* 8046C174  A8 BB 00 72 */	lha r5, 0x72(r27)
/* 8046C178  54 A5 10 3A */	slwi r5, r5, 2
/* 8046C17C  7C A6 28 2E */	lwzx r5, r6, r5
/* 8046C180  90 BD 00 14 */	stw r5, 0x14(r29)
/* 8046C184  91 1D 00 18 */	stw r8, 0x18(r29)
/* 8046C188  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8046C18C  3B BD 00 20 */	addi r29, r29, 0x20
/* 8046C190  7F A5 EB 78 */	mr r5, r29
/* 8046C194  90 FD 00 00 */	stw r7, 0(r29)
/* 8046C198  3B BD 00 08 */	addi r29, r29, 8
/* 8046C19C  A8 1B 00 74 */	lha r0, 0x74(r27)
/* 8046C1A0  54 00 10 3A */	slwi r0, r0, 2
/* 8046C1A4  7C 06 00 2E */	lwzx r0, r6, r0
/* 8046C1A8  90 05 00 04 */	stw r0, 4(r5)
/* 8046C1AC  93 BE 02 E0 */	stw r29, 0x2e0(r30)
/* 8046C1B0  4B FE F7 81 */	bl minsect_draw_shadow
lbl_8046C1B4:
/* 8046C1B4  39 61 00 50 */	addi r11, r1, 0x50
/* 8046C1B8  4B C2 ED 5D */	bl func_8009AF14
/* 8046C1BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046C1C0  7C 08 03 A6 */	mtlr r0
/* 8046C1C4  38 21 00 50 */	addi r1, r1, 0x50
/* 8046C1C8  4E 80 00 20 */	blr 
