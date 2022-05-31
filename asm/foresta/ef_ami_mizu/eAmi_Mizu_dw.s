lbl_80604A80:
/* 80604A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80604A84  7C 08 02 A6 */	mflr r0
/* 80604A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80604A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80604A90  4B A9 64 41 */	bl func_8009AED0
/* 80604A94  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80604A98  3C E0 80 65 */	lis r7, lit_434@ha /* 0x8064BB84@ha */
/* 80604A9C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80604AA0  3C C0 80 65 */	lis r6, lit_435@ha /* 0x8064BB88@ha */
/* 80604AA4  3C A5 00 02 */	addis r5, r5, 2
/* 80604AA8  7C 7E 1B 78 */	mr r30, r3
/* 80604AAC  80 65 60 9C */	lwz r3, 0x609c(r5)
/* 80604AB0  7C 9C 23 78 */	mr r28, r4
/* 80604AB4  38 80 00 00 */	li r4, 0
/* 80604AB8  38 A0 00 06 */	li r5, 6
/* 80604ABC  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80604AC0  A8 7E 00 00 */	lha r3, 0(r30)
/* 80604AC4  C0 27 BB 84 */	lfs f1, lit_434@l(r7)  /* 0x8064BB84@l */
/* 80604AC8  C0 46 BB 88 */	lfs f2, lit_435@l(r6)  /* 0x8064BB88@l */
/* 80604ACC  7D 89 03 A6 */	mtctr r12
/* 80604AD0  4E 80 04 21 */	bctrl 
/* 80604AD4  FC 00 08 1E */	fctiwz f0, f1
/* 80604AD8  83 FC 00 00 */	lwz r31, 0(r28)
/* 80604ADC  7F E3 FB 78 */	mr r3, r31
/* 80604AE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80604AE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80604AE8  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80604AEC  4B DE 06 6D */	bl _texture_z_light_fog_prim_xlu
/* 80604AF0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80604AF4  38 60 00 00 */	li r3, 0
/* 80604AF8  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80604AFC  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80604B00  4B E0 78 01 */	bl Matrix_translate
/* 80604B04  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80604B08  38 60 00 01 */	li r3, 1
/* 80604B0C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80604B10  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80604B14  4B E0 78 D9 */	bl Matrix_scale
/* 80604B18  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 80604B1C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80604B20  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80604B24  38 7E 00 08 */	addi r3, r30, 8
/* 80604B28  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80604B2C  90 1E 00 00 */	stw r0, 0(r30)
/* 80604B30  80 7C 00 00 */	lwz r3, 0(r28)
/* 80604B34  4B E0 88 A1 */	bl _Matrix_to_Mtx_new
/* 80604B38  90 7E 00 04 */	stw r3, 4(r30)
/* 80604B3C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80604B40  67 A7 00 FF */	oris r7, r29, 0xff
/* 80604B44  3C 60 80 CB */	lis r3, ef_amimizu01_00_modelT@ha /* 0x80CB75E0@ha */
/* 80604B48  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 80604B4C  39 04 00 FF */	addi r8, r4, 0x00FF /* 0xFA0000FF@l */
/* 80604B50  60 E7 FF 00 */	ori r7, r7, 0xff00
/* 80604B54  3C C0 FB 00 */	lis r6, 0xfb00
/* 80604B58  38 09 00 08 */	addi r0, r9, 8
/* 80604B5C  38 A0 FF FF */	li r5, -1
/* 80604B60  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80604B64  3C 80 DE 00 */	lis r4, 0xde00
/* 80604B68  38 03 75 E0 */	addi r0, r3, ef_amimizu01_00_modelT@l /* 0x80CB75E0@l */
/* 80604B6C  91 09 00 00 */	stw r8, 0(r9)
/* 80604B70  90 E9 00 04 */	stw r7, 4(r9)
/* 80604B74  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80604B78  38 67 00 08 */	addi r3, r7, 8
/* 80604B7C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80604B80  90 C7 00 00 */	stw r6, 0(r7)
/* 80604B84  90 A7 00 04 */	stw r5, 4(r7)
/* 80604B88  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80604B8C  38 65 00 08 */	addi r3, r5, 8
/* 80604B90  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80604B94  90 85 00 00 */	stw r4, 0(r5)
/* 80604B98  90 05 00 04 */	stw r0, 4(r5)
/* 80604B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80604BA0  4B A9 63 7D */	bl func_8009AF1C
/* 80604BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80604BA8  7C 08 03 A6 */	mtlr r0
/* 80604BAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80604BB0  4E 80 00 20 */	blr 
