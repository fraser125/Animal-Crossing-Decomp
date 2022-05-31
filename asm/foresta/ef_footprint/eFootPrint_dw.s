lbl_8060BF44:
/* 8060BF44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060BF48  7C 08 02 A6 */	mflr r0
/* 8060BF4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060BF50  39 61 00 30 */	addi r11, r1, 0x30
/* 8060BF54  4B A8 EF 79 */	bl func_8009AECC
/* 8060BF58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060BF5C  7C 7C 1B 78 */	mr r28, r3
/* 8060BF60  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8060BF64  A8 1C 00 00 */	lha r0, 0(r28)
/* 8060BF68  3C 63 00 02 */	addis r3, r3, 2
/* 8060BF6C  3C C0 80 65 */	lis r6, lit_466@ha /* 0x8064BFD4@ha */
/* 8060BF70  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 8060BF74  3C A0 80 65 */	lis r5, lit_429@ha /* 0x8064BFD0@ha */
/* 8060BF78  7C 9D 23 78 */	mr r29, r4
/* 8060BF7C  C0 45 BF D0 */	lfs f2, lit_429@l(r5)  /* 0x8064BFD0@l */
/* 8060BF80  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060BF84  20 00 00 A0 */	subfic r0, r0, 0xa0
/* 8060BF88  7C 03 07 34 */	extsh r3, r0
/* 8060BF8C  C0 26 BF D4 */	lfs f1, lit_466@l(r6)  /* 0x8064BFD4@l */
/* 8060BF90  38 80 00 76 */	li r4, 0x76
/* 8060BF94  38 A0 00 9F */	li r5, 0x9f
/* 8060BF98  7D 89 03 A6 */	mtctr r12
/* 8060BF9C  4E 80 04 21 */	bctrl 
/* 8060BFA0  FC 00 08 1E */	fctiwz f0, f1
/* 8060BFA4  83 FD 00 00 */	lwz r31, 0(r29)
/* 8060BFA8  7F E3 FB 78 */	mr r3, r31
/* 8060BFAC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060BFB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060BFB4  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8060BFB8  4B DD 91 A1 */	bl _texture_z_light_fog_prim_xlu
/* 8060BFBC  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8060BFC0  38 60 00 00 */	li r3, 0
/* 8060BFC4  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8060BFC8  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 8060BFCC  4B E0 03 35 */	bl Matrix_translate
/* 8060BFD0  A8 7C 00 4C */	lha r3, 0x4c(r28)
/* 8060BFD4  38 80 00 01 */	li r4, 1
/* 8060BFD8  4B E0 04 E1 */	bl Matrix_RotateX
/* 8060BFDC  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 8060BFE0  38 80 00 01 */	li r4, 1
/* 8060BFE4  4B E0 06 79 */	bl Matrix_RotateY
/* 8060BFE8  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060BFEC  38 80 00 01 */	li r4, 1
/* 8060BFF0  4B E0 08 01 */	bl Matrix_RotateZ
/* 8060BFF4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060BFF8  3C 00 43 30 */	lis r0, 0x4330
/* 8060BFFC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060C000  3C C0 80 65 */	lis r6, lit_469@ha /* 0x8064BFE0@ha */
/* 8060C004  80 84 00 00 */	lwz r4, 0(r4)
/* 8060C008  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064BFEC@ha */
/* 8060C00C  38 A3 BF EC */	addi r5, r3, lit_473@l /* 0x8064BFEC@l */
/* 8060C010  3C E0 80 65 */	lis r7, lit_468@ha /* 0x8064BFDC@ha */
/* 8060C014  A8 64 19 0A */	lha r3, 0x190a(r4)
/* 8060C018  3D 00 80 65 */	lis r8, lit_467@ha /* 0x8064BFD8@ha */
/* 8060C01C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060C020  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8060C024  C8 25 00 00 */	lfd f1, 0(r5)
/* 8060C028  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060C02C  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064BFE4@ha */
/* 8060C030  38 83 BF E4 */	addi r4, r3, lit_470@l /* 0x8064BFE4@l */
/* 8060C034  C0 46 BF E0 */	lfs f2, lit_469@l(r6)  /* 0x8064BFE0@l */
/* 8060C038  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8060C03C  38 60 00 01 */	li r3, 1
/* 8060C040  C0 87 BF DC */	lfs f4, lit_468@l(r7)  /* 0x8064BFDC@l */
/* 8060C044  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060C048  C0 28 BF D8 */	lfs f1, lit_467@l(r8)  /* 0x8064BFD8@l */
/* 8060C04C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8060C050  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C054  EC 04 00 2A */	fadds f0, f4, f0
/* 8060C058  EC 21 00 32 */	fmuls f1, f1, f0
/* 8060C05C  FC 40 08 90 */	fmr f2, f1
/* 8060C060  4B E0 03 8D */	bl Matrix_scale
/* 8060C064  83 7F 02 E0 */	lwz r27, 0x2e0(r31)
/* 8060C068  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060C06C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060C070  38 7B 00 08 */	addi r3, r27, 8
/* 8060C074  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060C078  90 1B 00 00 */	stw r0, 0(r27)
/* 8060C07C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060C080  4B E0 13 55 */	bl _Matrix_to_Mtx_new
/* 8060C084  90 7B 00 04 */	stw r3, 4(r27)
/* 8060C088  A8 1C 00 52 */	lha r0, 0x52(r28)
/* 8060C08C  2C 00 00 00 */	cmpwi r0, 0
/* 8060C090  41 82 00 2C */	beq lbl_8060C0BC
/* 8060C094  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060C098  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 8060C09C  67 C0 46 32 */	oris r0, r30, 0x4632
/* 8060C0A0  38 85 00 08 */	addi r4, r5, 8
/* 8060C0A4  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 8060C0A8  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 8060C0AC  60 00 32 00 */	ori r0, r0, 0x3200
/* 8060C0B0  90 65 00 00 */	stw r3, 0(r5)
/* 8060C0B4  90 05 00 04 */	stw r0, 4(r5)
/* 8060C0B8  48 00 00 28 */	b lbl_8060C0E0
lbl_8060C0BC:
/* 8060C0BC  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060C0C0  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 8060C0C4  67 C0 00 32 */	oris r0, r30, 0x32
/* 8060C0C8  38 85 00 08 */	addi r4, r5, 8
/* 8060C0CC  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 8060C0D0  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 8060C0D4  60 00 64 00 */	ori r0, r0, 0x6400
/* 8060C0D8  90 65 00 00 */	stw r3, 0(r5)
/* 8060C0DC  90 05 00 04 */	stw r0, 4(r5)
lbl_8060C0E0:
/* 8060C0E0  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8060C0E4  3C 60 80 CC */	lis r3, ef_footprint01_00_modelT@ha /* 0x80CBB8E0@ha */
/* 8060C0E8  3C C0 FB 00 */	lis r6, 0xfb00
/* 8060C0EC  38 A0 FF FF */	li r5, -1
/* 8060C0F0  38 07 00 08 */	addi r0, r7, 8
/* 8060C0F4  3C 80 DE 00 */	lis r4, 0xde00
/* 8060C0F8  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 8060C0FC  38 03 B8 E0 */	addi r0, r3, ef_footprint01_00_modelT@l /* 0x80CBB8E0@l */
/* 8060C100  90 C7 00 00 */	stw r6, 0(r7)
/* 8060C104  90 A7 00 04 */	stw r5, 4(r7)
/* 8060C108  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060C10C  38 65 00 08 */	addi r3, r5, 8
/* 8060C110  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060C114  90 85 00 00 */	stw r4, 0(r5)
/* 8060C118  90 05 00 04 */	stw r0, 4(r5)
/* 8060C11C  39 61 00 30 */	addi r11, r1, 0x30
/* 8060C120  4B A8 ED F9 */	bl func_8009AF18
/* 8060C124  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060C128  7C 08 03 A6 */	mtlr r0
/* 8060C12C  38 21 00 30 */	addi r1, r1, 0x30
/* 8060C130  4E 80 00 20 */	blr 
