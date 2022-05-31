lbl_804F7634:
/* 804F7634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F7638  7C 08 02 A6 */	mflr r0
/* 804F763C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F7640  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7644  4B BA 38 8D */	bl func_8009AED0
/* 804F7648  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F764C  7C 7F 1B 78 */	mr r31, r3
/* 804F7650  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804F7654  3F C3 00 02 */	addis r30, r3, 2
/* 804F7658  80 1E 60 80 */	lwz r0, 0x6080(r30)
/* 804F765C  28 00 00 00 */	cmplwi r0, 0
/* 804F7660  41 82 00 D0 */	beq lbl_804F7730
/* 804F7664  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 804F7668  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804F766C  38 83 6C 44 */	addi r4, r3, lit_2591@l /* 0x80646C44@l */
/* 804F7670  2C 00 00 58 */	cmpwi r0, 0x58
/* 804F7674  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F7678  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F767C  40 82 00 0C */	bne lbl_804F7688
/* 804F7680  FC 00 08 90 */	fmr f0, f1
/* 804F7684  48 00 00 0C */	b lbl_804F7690
lbl_804F7688:
/* 804F7688  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F768C  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
lbl_804F7690:
/* 804F7690  EC 21 00 2A */	fadds f1, f1, f0
/* 804F7694  4B FD FF 6D */	bl Player_actor_Check_AnimationFrame
/* 804F7698  2C 03 00 00 */	cmpwi r3, 0
/* 804F769C  41 82 00 94 */	beq lbl_804F7730
/* 804F76A0  80 7E 60 80 */	lwz r3, 0x6080(r30)
/* 804F76A4  3B BF 0D 18 */	addi r29, r31, 0xd18
/* 804F76A8  A3 9F 0D 24 */	lhz r28, 0xd24(r31)
/* 804F76AC  7F A4 EB 78 */	mr r4, r29
/* 804F76B0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 804F76B4  38 A0 00 0C */	li r5, 0xc
/* 804F76B8  7F 83 E3 78 */	mr r3, r28
/* 804F76BC  38 C0 00 00 */	li r6, 0
/* 804F76C0  7D 89 03 A6 */	mtctr r12
/* 804F76C4  4E 80 04 21 */	bctrl 
/* 804F76C8  2C 03 00 00 */	cmpwi r3, 0
/* 804F76CC  41 82 00 64 */	beq lbl_804F7730
/* 804F76D0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F76D4  3C 80 80 64 */	lis r4, lit_5641@ha /* 0x80647D6C@ha */
/* 804F76D8  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804F76DC  C0 44 7D 6C */	lfs f2, lit_5641@l(r4)  /* 0x80647D6C@l */
/* 804F76E0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F76E4  7F A3 EB 78 */	mr r3, r29
/* 804F76E8  38 80 00 0C */	li r4, 0xc
/* 804F76EC  4B E9 64 E5 */	bl mCoBG_RegistDecalCircle
/* 804F76F0  28 1C 00 00 */	cmplwi r28, 0
/* 804F76F4  41 82 00 3C */	beq lbl_804F7730
/* 804F76F8  38 00 00 00 */	li r0, 0
/* 804F76FC  41 82 00 10 */	beq lbl_804F770C
/* 804F7700  28 1C 00 5C */	cmplwi r28, 0x5c
/* 804F7704  41 82 00 08 */	beq lbl_804F770C
/* 804F7708  38 00 00 01 */	li r0, 1
lbl_804F770C:
/* 804F770C  2C 00 00 00 */	cmpwi r0, 0
/* 804F7710  41 82 00 20 */	beq lbl_804F7730
/* 804F7714  80 DE 60 80 */	lwz r6, 0x6080(r30)
/* 804F7718  7F 83 E3 78 */	mr r3, r28
/* 804F771C  7F A4 EB 78 */	mr r4, r29
/* 804F7720  A8 BF 00 DE */	lha r5, 0xde(r31)
/* 804F7724  81 86 00 34 */	lwz r12, 0x34(r6)
/* 804F7728  7D 89 03 A6 */	mtctr r12
/* 804F772C  4E 80 04 21 */	bctrl 
lbl_804F7730:
/* 804F7730  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7734  4B BA 37 E9 */	bl func_8009AF1C
/* 804F7738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F773C  7C 08 03 A6 */	mtlr r0
/* 804F7740  38 21 00 20 */	addi r1, r1, 0x20
/* 804F7744  4E 80 00 20 */	blr 
