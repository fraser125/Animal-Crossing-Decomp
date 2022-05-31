lbl_805DFB50:
/* 805DFB50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DFB54  7C 08 02 A6 */	mflr r0
/* 805DFB58  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DFB5C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DFB60  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DFB64  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DFB68  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DFB6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DFB70  4B AB B3 61 */	bl func_8009AED0
/* 805DFB74  3C E0 80 65 */	lis r7, lit_464@ha /* 0x8064B340@ha */
/* 805DFB78  FF C0 08 90 */	fmr f30, f1
/* 805DFB7C  C0 27 B3 40 */	lfs f1, lit_464@l(r7)  /* 0x8064B340@l */
/* 805DFB80  FF E0 10 90 */	fmr f31, f2
/* 805DFB84  7C 7C 1B 78 */	mr r28, r3
/* 805DFB88  7C 9D 23 78 */	mr r29, r4
/* 805DFB8C  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 805DFB90  7C BE 2B 78 */	mr r30, r5
/* 805DFB94  7C DF 33 78 */	mr r31, r6
/* 805DFB98  41 80 00 C8 */	blt lbl_805DFC60
/* 805DFB9C  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064B344@ha */
/* 805DFBA0  C0 03 B3 44 */	lfs f0, lit_465@l(r3)  /* 0x8064B344@l */
/* 805DFBA4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 805DFBA8  41 81 00 B8 */	bgt lbl_805DFC60
/* 805DFBAC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 805DFBB0  41 80 00 B0 */	blt lbl_805DFC60
/* 805DFBB4  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064B348@ha */
/* 805DFBB8  C0 03 B3 48 */	lfs f0, lit_466@l(r3)  /* 0x8064B348@l */
/* 805DFBBC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805DFBC0  40 81 00 08 */	ble lbl_805DFBC8
/* 805DFBC4  48 00 00 9C */	b lbl_805DFC60
lbl_805DFBC8:
/* 805DFBC8  4B E2 C6 0D */	bl Matrix_push
/* 805DFBCC  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DFBD0  3C 80 80 65 */	lis r4, lit_467@ha /* 0x8064B34C@ha */
/* 805DFBD4  38 A4 B3 4C */	addi r5, r4, lit_467@l /* 0x8064B34C@l */
/* 805DFBD8  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064B354@ha */
/* 805DFBDC  38 06 00 08 */	addi r0, r6, 8
/* 805DFBE0  C0 03 B3 54 */	lfs f0, lit_469@l(r3)  /* 0x8064B354@l */
/* 805DFBE4  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805DFBE8  3C 00 E7 00 */	lis r0, 0xe700
/* 805DFBEC  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064B350@ha */
/* 805DFBF0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805DFBF4  90 06 00 00 */	stw r0, 0(r6)
/* 805DFBF8  38 83 B3 50 */	addi r4, r3, lit_468@l /* 0x8064B350@l */
/* 805DFBFC  38 00 00 00 */	li r0, 0
/* 805DFC00  C0 44 00 00 */	lfs f2, 0(r4)
/* 805DFC04  90 06 00 04 */	stw r0, 4(r6)
/* 805DFC08  EC 60 07 B2 */	fmuls f3, f0, f30
/* 805DFC0C  EC 80 07 F2 */	fmuls f4, f0, f31
/* 805DFC10  7F C3 F3 78 */	mr r3, r30
/* 805DFC14  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805DFC18  38 80 09 00 */	li r4, 0x900
/* 805DFC1C  38 C0 00 80 */	li r6, 0x80
/* 805DFC20  81 85 09 6C */	lwz r12, 0x96c(r5)
/* 805DFC24  38 A0 00 80 */	li r5, 0x80
/* 805DFC28  7D 89 03 A6 */	mtctr r12
/* 805DFC2C  4E 80 04 21 */	bctrl 
/* 805DFC30  7F 83 E3 78 */	mr r3, r28
/* 805DFC34  7F A4 EB 78 */	mr r4, r29
/* 805DFC38  7F E5 FB 78 */	mr r5, r31
/* 805DFC3C  4B FF FD 99 */	bl mHP_haniwaPortrait_shape_draw
/* 805DFC40  80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 805DFC44  7F 83 E3 78 */	mr r3, r28
/* 805DFC48  7F C4 F3 78 */	mr r4, r30
/* 805DFC4C  38 A0 00 00 */	li r5, 0
/* 805DFC50  81 86 09 64 */	lwz r12, 0x964(r6)
/* 805DFC54  7D 89 03 A6 */	mtctr r12
/* 805DFC58  4E 80 04 21 */	bctrl 
/* 805DFC5C  4B E2 C5 B9 */	bl Matrix_pull
lbl_805DFC60:
/* 805DFC60  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DFC64  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DFC68  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DFC6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DFC70  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DFC74  4B AB B2 A9 */	bl func_8009AF1C
/* 805DFC78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DFC7C  7C 08 03 A6 */	mtlr r0
/* 805DFC80  38 21 00 40 */	addi r1, r1, 0x40
/* 805DFC84  4E 80 00 20 */	blr 
