lbl_8060CE00:
/* 8060CE00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060CE04  7C 08 02 A6 */	mflr r0
/* 8060CE08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060CE0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8060CE10  4B A8 E0 C1 */	bl func_8009AED0
/* 8060CE14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060CE18  7C 9F 23 78 */	mr r31, r4
/* 8060CE1C  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8060CE20  3C C0 80 65 */	lis r6, lit_461@ha /* 0x8064C09C@ha */
/* 8060CE24  3C 84 00 02 */	addis r4, r4, 2
/* 8060CE28  7C 7C 1B 78 */	mr r28, r3
/* 8060CE2C  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8060CE30  38 E6 C0 9C */	addi r7, r6, lit_461@l /* 0x8064C09C@l */
/* 8060CE34  3C A0 80 65 */	lis r5, lit_462@ha /* 0x8064C0A0@ha */
/* 8060CE38  A8 63 00 00 */	lha r3, 0(r3)
/* 8060CE3C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8060CE40  38 C5 C0 A0 */	addi r6, r5, lit_462@l /* 0x8064C0A0@l */
/* 8060CE44  38 80 00 00 */	li r4, 0
/* 8060CE48  C0 27 00 00 */	lfs f1, 0(r7)
/* 8060CE4C  38 A0 00 14 */	li r5, 0x14
/* 8060CE50  C0 46 00 00 */	lfs f2, 0(r6)
/* 8060CE54  7D 89 03 A6 */	mtctr r12
/* 8060CE58  4E 80 04 21 */	bctrl 
/* 8060CE5C  FC 00 08 1E */	fctiwz f0, f1
/* 8060CE60  80 7F 00 00 */	lwz r3, 0(r31)
/* 8060CE64  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060CE68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060CE6C  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8060CE70  4B DD 82 E9 */	bl _texture_z_light_fog_prim_xlu
/* 8060CE74  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8060CE78  38 60 00 00 */	li r3, 0
/* 8060CE7C  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8060CE80  83 BF 00 00 */	lwz r29, 0(r31)
/* 8060CE84  EC 21 00 2A */	fadds f1, f1, f0
/* 8060CE88  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8060CE8C  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 8060CE90  4B DF F4 71 */	bl Matrix_translate
/* 8060CE94  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060CE98  3C 00 43 30 */	lis r0, 0x4330
/* 8060CE9C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060CEA0  3C A0 80 65 */	lis r5, lit_429@ha /* 0x8064C064@ha */
/* 8060CEA4  80 84 00 00 */	lwz r4, 0(r4)
/* 8060CEA8  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064C0A4@ha */
/* 8060CEAC  C8 23 C0 A4 */	lfd f1, lit_465@l(r3)  /* 0x8064C0A4@l */
/* 8060CEB0  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064C084@ha */
/* 8060CEB4  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8060CEB8  38 60 00 01 */	li r3, 1
/* 8060CEBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060CEC0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060CEC4  C0 85 C0 64 */	lfs f4, lit_429@l(r5)  /* 0x8064C064@l */
/* 8060CEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060CECC  C0 A6 C0 84 */	lfs f5, lit_433@l(r6)  /* 0x8064C084@l */
/* 8060CED0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8060CED4  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 8060CED8  EC 60 08 28 */	fsubs f3, f0, f1
/* 8060CEDC  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 8060CEE0  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 8060CEE4  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8060CEE8  EC 65 18 2A */	fadds f3, f5, f3
/* 8060CEEC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8060CEF0  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8060CEF4  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8060CEF8  4B DF F4 F5 */	bl Matrix_scale
/* 8060CEFC  38 7F 20 4C */	addi r3, r31, 0x204c
/* 8060CF00  38 80 00 01 */	li r4, 1
/* 8060CF04  4B DF F3 95 */	bl Matrix_mult
/* 8060CF08  A8 7C 00 4C */	lha r3, 0x4c(r28)
/* 8060CF0C  38 80 00 01 */	li r4, 1
/* 8060CF10  4B DF F8 E1 */	bl Matrix_RotateZ
/* 8060CF14  3C 80 80 CB */	lis r4, ef_goki01_01_evw_anime@ha /* 0x80CB2DB8@ha */
/* 8060CF18  7F E3 FB 78 */	mr r3, r31
/* 8060CF1C  38 84 2D B8 */	addi r4, r4, ef_goki01_01_evw_anime@l /* 0x80CB2DB8@l */
/* 8060CF20  4B D6 66 3D */	bl Evw_Anime_Set
/* 8060CF24  83 9D 02 E0 */	lwz r28, 0x2e0(r29)
/* 8060CF28  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060CF2C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060CF30  38 7C 00 08 */	addi r3, r28, 8
/* 8060CF34  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8060CF38  90 1C 00 00 */	stw r0, 0(r28)
/* 8060CF3C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8060CF40  4B E0 04 95 */	bl _Matrix_to_Mtx_new
/* 8060CF44  90 7C 00 04 */	stw r3, 4(r28)
/* 8060CF48  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 8060CF4C  67 C5 FF FF */	oris r5, r30, 0xffff
/* 8060CF50  3C 60 80 CB */	lis r3, ef_goki01_01_modelT@ha /* 0x80CB2D40@ha */
/* 8060CF54  81 1D 02 E0 */	lwz r8, 0x2e0(r29)
/* 8060CF58  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 8060CF5C  60 A5 FF 00 */	ori r5, r5, 0xff00
/* 8060CF60  3C 80 DE 00 */	lis r4, 0xde00
/* 8060CF64  38 E8 00 08 */	addi r7, r8, 8
/* 8060CF68  38 03 2D 40 */	addi r0, r3, ef_goki01_01_modelT@l /* 0x80CB2D40@l */
/* 8060CF6C  90 FD 02 E0 */	stw r7, 0x2e0(r29)
/* 8060CF70  90 C8 00 00 */	stw r6, 0(r8)
/* 8060CF74  90 A8 00 04 */	stw r5, 4(r8)
/* 8060CF78  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8060CF7C  38 65 00 08 */	addi r3, r5, 8
/* 8060CF80  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8060CF84  90 85 00 00 */	stw r4, 0(r5)
/* 8060CF88  90 05 00 04 */	stw r0, 4(r5)
/* 8060CF8C  39 61 00 30 */	addi r11, r1, 0x30
/* 8060CF90  4B A8 DF 8D */	bl func_8009AF1C
/* 8060CF94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060CF98  7C 08 03 A6 */	mtlr r0
/* 8060CF9C  38 21 00 30 */	addi r1, r1, 0x30
/* 8060CFA0  4E 80 00 20 */	blr 
