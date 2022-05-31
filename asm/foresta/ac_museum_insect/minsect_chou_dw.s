lbl_8045DE94:
/* 8045DE94  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045DE98  7C 08 02 A6 */	mflr r0
/* 8045DE9C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045DEA0  39 61 00 40 */	addi r11, r1, 0x40
/* 8045DEA4  4B C3 D0 2D */	bl func_8009AED0
/* 8045DEA8  7C 9E 23 78 */	mr r30, r4
/* 8045DEAC  7C 7D 1B 78 */	mr r29, r3
/* 8045DEB0  80 64 00 00 */	lwz r3, 0(r4)
/* 8045DEB4  4B F8 72 55 */	bl _texture_z_light_fog_prim
/* 8045DEB8  83 FE 00 00 */	lwz r31, 0(r30)
/* 8045DEBC  38 60 00 00 */	li r3, 0
/* 8045DEC0  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8045DEC4  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 8045DEC8  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 8045DECC  4B FA E4 35 */	bl Matrix_translate
/* 8045DED0  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8045DED4  38 60 00 01 */	li r3, 1
/* 8045DED8  FC 40 08 90 */	fmr f2, f1
/* 8045DEDC  FC 60 08 90 */	fmr f3, f1
/* 8045DEE0  4B FA E5 0D */	bl Matrix_scale
/* 8045DEE4  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 8045DEE8  38 C0 00 01 */	li r6, 1
/* 8045DEEC  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 8045DEF0  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 8045DEF4  4B FA EA A1 */	bl Matrix_rotateXYZ
/* 8045DEF8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045DEFC  3C A0 43 30 */	lis r5, 0x4330
/* 8045DF00  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045DF04  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045DF08  81 44 00 00 */	lwz r10, 0(r4)
/* 8045DF0C  38 E3 46 3C */	addi r7, r3, lit_589@l /* 0x8064463C@l */
/* 8045DF10  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8045DF14  3C C0 80 64 */	lis r6, lit_511@ha /* 0x8064460C@ha */
/* 8045DF18  A8 8A 16 94 */	lha r4, 0x1694(r10)
/* 8045DF1C  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 8045DF20  A8 6A 16 96 */	lha r3, 0x1696(r10)
/* 8045DF24  39 26 46 0C */	addi r9, r6, lit_511@l /* 0x8064460C@l */
/* 8045DF28  A8 0A 16 98 */	lha r0, 0x1698(r10)
/* 8045DF2C  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 8045DF30  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8045DF34  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8045DF38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8045DF3C  C8 67 00 00 */	lfd f3, 0(r7)
/* 8045DF40  90 A1 00 08 */	stw r5, 8(r1)
/* 8045DF44  38 60 00 01 */	li r3, 1
/* 8045DF48  C0 88 00 00 */	lfs f4, 0(r8)
/* 8045DF4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8045DF50  90 81 00 14 */	stw r4, 0x14(r1)
/* 8045DF54  EC 20 18 28 */	fsubs f1, f0, f3
/* 8045DF58  C0 A9 00 00 */	lfs f5, 0(r9)
/* 8045DF5C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8045DF60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8045DF64  EC 24 00 72 */	fmuls f1, f4, f1
/* 8045DF68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8045DF6C  EC 40 18 28 */	fsubs f2, f0, f3
/* 8045DF70  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8045DF74  EC 25 08 2A */	fadds f1, f5, f1
/* 8045DF78  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8045DF7C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8045DF80  EC 00 18 28 */	fsubs f0, f0, f3
/* 8045DF84  EC 45 10 2A */	fadds f2, f5, f2
/* 8045DF88  EC 04 00 32 */	fmuls f0, f4, f0
/* 8045DF8C  EC 65 00 2A */	fadds f3, f5, f0
/* 8045DF90  4B FA E4 5D */	bl Matrix_scale
/* 8045DF94  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8045DF98  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045DF9C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045DFA0  38 7C 00 08 */	addi r3, r28, 8
/* 8045DFA4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8045DFA8  90 1C 00 00 */	stw r0, 0(r28)
/* 8045DFAC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8045DFB0  4B FA F4 25 */	bl _Matrix_to_Mtx_new
/* 8045DFB4  90 7C 00 04 */	stw r3, 4(r28)
/* 8045DFB8  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 8045DFBC  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8045DFC0  3C E0 FB 00 */	lis r7, 0xfb00
/* 8045DFC4  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8045DFC8  38 C4 9B FF */	addi r6, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 8045DFCC  3C 00 DE 00 */	lis r0, 0xde00
/* 8045DFD0  38 A3 65 4C */	addi r5, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8045DFD4  38 88 00 08 */	addi r4, r8, 8
/* 8045DFD8  7F A3 EB 78 */	mr r3, r29
/* 8045DFDC  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8045DFE0  7F C4 F3 78 */	mr r4, r30
/* 8045DFE4  90 E8 00 00 */	stw r7, 0(r8)
/* 8045DFE8  90 C8 00 04 */	stw r6, 4(r8)
/* 8045DFEC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8045DFF0  38 C7 00 08 */	addi r6, r7, 8
/* 8045DFF4  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8045DFF8  90 07 00 00 */	stw r0, 0(r7)
/* 8045DFFC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8045E000  80 1D 00 00 */	lwz r0, 0(r29)
/* 8045E004  FC 00 00 1E */	fctiwz f0, f0
/* 8045E008  54 00 10 3A */	slwi r0, r0, 2
/* 8045E00C  7C A5 00 2E */	lwzx r5, r5, r0
/* 8045E010  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8045E014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045E018  54 00 10 3A */	slwi r0, r0, 2
/* 8045E01C  7C 05 00 2E */	lwzx r0, r5, r0
/* 8045E020  90 07 00 04 */	stw r0, 4(r7)
/* 8045E024  4B FF D9 0D */	bl minsect_draw_shadow
/* 8045E028  39 61 00 40 */	addi r11, r1, 0x40
/* 8045E02C  4B C3 CE F1 */	bl func_8009AF1C
/* 8045E030  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045E034  7C 08 03 A6 */	mtlr r0
/* 8045E038  38 21 00 40 */	addi r1, r1, 0x40
/* 8045E03C  4E 80 00 20 */	blr 
