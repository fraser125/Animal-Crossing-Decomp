lbl_804CE164:
/* 804CE164  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CE168  7C 08 02 A6 */	mflr r0
/* 804CE16C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CE170  39 61 00 30 */	addi r11, r1, 0x30
/* 804CE174  4B BC CD 59 */	bl func_8009AECC
/* 804CE178  7C 7B 1B 78 */	mr r27, r3
/* 804CE17C  7C 9C 23 78 */	mr r28, r4
/* 804CE180  80 83 00 00 */	lwz r4, 0(r3)
/* 804CE184  7C BD 2B 78 */	mr r29, r5
/* 804CE188  80 64 02 D4 */	lwz r3, 0x2d4(r4)
/* 804CE18C  38 03 FF C0 */	addi r0, r3, -64
/* 804CE190  90 04 02 D4 */	stw r0, 0x2d4(r4)
/* 804CE194  7C 1E 03 78 */	mr r30, r0
/* 804CE198  83 FB 00 00 */	lwz r31, 0(r27)
/* 804CE19C  7F E3 FB 78 */	mr r3, r31
/* 804CE1A0  4B F1 6F B9 */	bl _texture_z_light_fog_prim_xlu
/* 804CE1A4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804CE1A8  3C 00 43 30 */	lis r0, 0x4330
/* 804CE1AC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804CE1B0  3C A0 80 64 */	lis r5, lit_506@ha /* 0x806462A8@ha */
/* 804CE1B4  80 84 00 00 */	lwz r4, 0(r4)
/* 804CE1B8  3C 60 80 64 */	lis r3, lit_479@ha /* 0x8064629C@ha */
/* 804CE1BC  C8 23 62 9C */	lfd f1, lit_479@l(r3)  /* 0x8064629C@l */
/* 804CE1C0  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806462A4@ha */
/* 804CE1C4  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 804CE1C8  7F C3 F3 78 */	mr r3, r30
/* 804CE1CC  90 01 00 08 */	stw r0, 8(r1)
/* 804CE1D0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804CE1D4  C0 85 62 A8 */	lfs f4, lit_506@l(r5)  /* 0x806462A8@l */
/* 804CE1D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CE1DC  C0 E6 62 A4 */	lfs f7, lit_505@l(r6)  /* 0x806462A4@l */
/* 804CE1E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CE1E4  C0 5D 00 04 */	lfs f2, 4(r29)
/* 804CE1E8  EC 60 08 28 */	fsubs f3, f0, f1
/* 804CE1EC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804CE1F0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804CE1F4  C0 BC 00 04 */	lfs f5, 4(r28)
/* 804CE1F8  EC 64 00 F2 */	fmuls f3, f4, f3
/* 804CE1FC  C0 9C 00 00 */	lfs f4, 0(r28)
/* 804CE200  C0 DC 00 08 */	lfs f6, 8(r28)
/* 804CE204  EC 67 18 2A */	fadds f3, f7, f3
/* 804CE208  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804CE20C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 804CE210  EC 60 00 F2 */	fmuls f3, f0, f3
/* 804CE214  4B F4 00 D1 */	bl suMtxMakeTS
/* 804CE218  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804CE21C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CE220  38 83 00 03 */	addi r4, r3, 0x0003 /* 0xDA380003@l */
/* 804CE224  38 A6 00 08 */	addi r5, r6, 8
/* 804CE228  38 03 00 01 */	addi r0, r3, 1
/* 804CE22C  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804CE230  90 86 00 00 */	stw r4, 0(r6)
/* 804CE234  93 C6 00 04 */	stw r30, 4(r6)
/* 804CE238  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 804CE23C  38 64 00 08 */	addi r3, r4, 8
/* 804CE240  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CE244  90 04 00 00 */	stw r0, 0(r4)
/* 804CE248  80 1B 20 8C */	lwz r0, 0x208c(r27)
/* 804CE24C  90 04 00 04 */	stw r0, 4(r4)
/* 804CE250  39 61 00 30 */	addi r11, r1, 0x30
/* 804CE254  4B BC CC C5 */	bl func_8009AF18
/* 804CE258  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CE25C  7C 08 03 A6 */	mtlr r0
/* 804CE260  38 21 00 30 */	addi r1, r1, 0x30
/* 804CE264  4E 80 00 20 */	blr 
