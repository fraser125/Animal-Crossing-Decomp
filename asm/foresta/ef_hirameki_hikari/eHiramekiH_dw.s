lbl_806108F4:
/* 806108F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806108F8  7C 08 02 A6 */	mflr r0
/* 806108FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80610900  39 61 00 30 */	addi r11, r1, 0x30
/* 80610904  4B A8 A5 C5 */	bl func_8009AEC8
/* 80610908  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061090C  A8 03 00 00 */	lha r0, 0(r3)
/* 80610910  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80610914  3C E0 80 65 */	lis r7, lit_417@ha /* 0x8064C32C@ha */
/* 80610918  3F C5 00 02 */	addis r30, r5, 2
/* 8061091C  20 00 00 0C */	subfic r0, r0, 0xc
/* 80610920  80 BE 60 9C */	lwz r5, 0x609c(r30)
/* 80610924  3C C0 80 65 */	lis r6, lit_418@ha /* 0x8064C330@ha */
/* 80610928  7C 9F 23 78 */	mr r31, r4
/* 8061092C  7C 1D 07 34 */	extsh r29, r0
/* 80610930  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80610934  3B 83 00 10 */	addi r28, r3, 0x10
/* 80610938  3B 63 00 40 */	addi r27, r3, 0x40
/* 8061093C  3B 43 00 34 */	addi r26, r3, 0x34
/* 80610940  7F A3 EB 78 */	mr r3, r29
/* 80610944  C0 27 C3 2C */	lfs f1, lit_417@l(r7)  /* 0x8064C32C@l */
/* 80610948  C0 46 C3 30 */	lfs f2, lit_418@l(r6)  /* 0x8064C330@l */
/* 8061094C  38 80 00 00 */	li r4, 0
/* 80610950  38 A0 00 0C */	li r5, 0xc
/* 80610954  7D 89 03 A6 */	mtctr r12
/* 80610958  4E 80 04 21 */	bctrl 
/* 8061095C  D0 3A 00 00 */	stfs f1, 0(r26)
/* 80610960  2C 1D 00 04 */	cmpwi r29, 4
/* 80610964  D0 3A 00 04 */	stfs f1, 4(r26)
/* 80610968  D0 3A 00 08 */	stfs f1, 8(r26)
/* 8061096C  40 80 00 1C */	bge lbl_80610988
/* 80610970  2C 1D 00 00 */	cmpwi r29, 0
/* 80610974  40 80 00 08 */	bge lbl_8061097C
/* 80610978  48 00 00 10 */	b lbl_80610988
lbl_8061097C:
/* 8061097C  1C 1D 00 32 */	mulli r0, r29, 0x32
/* 80610980  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80610984  48 00 00 40 */	b lbl_806109C4
lbl_80610988:
/* 80610988  80 9E 60 9C */	lwz r4, 0x609c(r30)
/* 8061098C  3C C0 80 65 */	lis r6, lit_419@ha /* 0x8064C334@ha */
/* 80610990  3C A0 80 65 */	lis r5, lit_383@ha /* 0x8064C328@ha */
/* 80610994  7F A3 EB 78 */	mr r3, r29
/* 80610998  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061099C  38 80 00 04 */	li r4, 4
/* 806109A0  C0 45 C3 28 */	lfs f2, lit_383@l(r5)  /* 0x8064C328@l */
/* 806109A4  38 A0 00 0C */	li r5, 0xc
/* 806109A8  C0 26 C3 34 */	lfs f1, lit_419@l(r6)  /* 0x8064C334@l */
/* 806109AC  7D 89 03 A6 */	mtctr r12
/* 806109B0  4E 80 04 21 */	bctrl 
/* 806109B4  FC 00 08 1E */	fctiwz f0, f1
/* 806109B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 806109BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806109C0  54 1D 06 3E */	clrlwi r29, r0, 0x18
lbl_806109C4:
/* 806109C4  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 806109C8  7F E3 FB 78 */	mr r3, r31
/* 806109CC  7F 84 E3 78 */	mr r4, r28
/* 806109D0  7F 45 D3 78 */	mr r5, r26
/* 806109D4  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 806109D8  7F 66 DB 78 */	mr r6, r27
/* 806109DC  83 5F 00 00 */	lwz r26, 0(r31)
/* 806109E0  7D 89 03 A6 */	mtctr r12
/* 806109E4  4E 80 04 21 */	bctrl 
/* 806109E8  80 FA 02 E0 */	lwz r7, 0x2e0(r26)
/* 806109EC  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 806109F0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 806109F4  3C 60 80 CB */	lis r3, ef_hirameki01_hikari_modelT@ha /* 0x80CB54A0@ha */
/* 806109F8  38 A7 00 08 */	addi r5, r7, 8
/* 806109FC  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 80610A00  90 BA 02 E0 */	stw r5, 0x2e0(r26)
/* 80610A04  64 05 FF FF */	oris r5, r0, 0xffff
/* 80610A08  60 A5 64 00 */	ori r5, r5, 0x6400
/* 80610A0C  3C 80 DE 00 */	lis r4, 0xde00
/* 80610A10  90 C7 00 00 */	stw r6, 0(r7)
/* 80610A14  38 03 54 A0 */	addi r0, r3, ef_hirameki01_hikari_modelT@l /* 0x80CB54A0@l */
/* 80610A18  90 A7 00 04 */	stw r5, 4(r7)
/* 80610A1C  80 BA 02 E0 */	lwz r5, 0x2e0(r26)
/* 80610A20  38 65 00 08 */	addi r3, r5, 8
/* 80610A24  90 7A 02 E0 */	stw r3, 0x2e0(r26)
/* 80610A28  90 85 00 00 */	stw r4, 0(r5)
/* 80610A2C  90 05 00 04 */	stw r0, 4(r5)
/* 80610A30  39 61 00 30 */	addi r11, r1, 0x30
/* 80610A34  4B A8 A4 E1 */	bl func_8009AF14
/* 80610A38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80610A3C  7C 08 03 A6 */	mtlr r0
/* 80610A40  38 21 00 30 */	addi r1, r1, 0x30
/* 80610A44  4E 80 00 20 */	blr 
