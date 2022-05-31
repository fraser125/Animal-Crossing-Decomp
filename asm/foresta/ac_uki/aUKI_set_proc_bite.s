lbl_804AF284:
/* 804AF284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AF288  7C 08 02 A6 */	mflr r0
/* 804AF28C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AF290  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AF294  7C 7F 1B 78 */	mr r31, r3
/* 804AF298  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AF29C  7C 9E 23 78 */	mr r30, r4
/* 804AF2A0  4B FF E8 A9 */	bl aUKI_clear_spd
/* 804AF2A4  7F E3 FB 78 */	mr r3, r31
/* 804AF2A8  7F C4 F3 78 */	mr r4, r30
/* 804AF2AC  38 A0 00 00 */	li r5, 0
/* 804AF2B0  4B FF EB 0D */	bl aUKI_effect_sibuki
/* 804AF2B4  80 1F 02 90 */	lwz r0, 0x290(r31)
/* 804AF2B8  2C 00 00 2C */	cmpwi r0, 0x2c
/* 804AF2BC  40 80 00 1C */	bge lbl_804AF2D8
/* 804AF2C0  2C 00 00 29 */	cmpwi r0, 0x29
/* 804AF2C4  40 80 00 08 */	bge lbl_804AF2CC
/* 804AF2C8  48 00 00 10 */	b lbl_804AF2D8
lbl_804AF2CC:
/* 804AF2CC  38 00 00 1A */	li r0, 0x1a
/* 804AF2D0  B0 1F 02 62 */	sth r0, 0x262(r31)
/* 804AF2D4  48 00 00 60 */	b lbl_804AF334
lbl_804AF2D8:
/* 804AF2D8  3C 60 80 69 */	lis r3, gyoei_type@ha /* 0x8068F798@ha */
/* 804AF2DC  54 06 18 38 */	slwi r6, r0, 3
/* 804AF2E0  38 A3 F7 98 */	addi r5, r3, gyoei_type@l /* 0x8068F798@l */
/* 804AF2E4  3C 80 80 69 */	lis r4, timer@ha /* 0x8068FADC@ha */
/* 804AF2E8  7C A5 32 AE */	lhax r5, r5, r6
/* 804AF2EC  3C 00 43 30 */	lis r0, 0x4330
/* 804AF2F0  3C 60 80 64 */	lis r3, lit_486@ha /* 0x80645F44@ha */
/* 804AF2F4  3C C0 80 64 */	lis r6, lit_564@ha /* 0x80645F70@ha */
/* 804AF2F8  38 84 FA DC */	addi r4, r4, timer@l /* 0x8068FADC@l */
/* 804AF2FC  54 A5 08 3C */	slwi r5, r5, 1
/* 804AF300  90 01 00 08 */	stw r0, 8(r1)
/* 804AF304  7C 04 2A AE */	lhax r0, r4, r5
/* 804AF308  C8 23 5F 44 */	lfd f1, lit_486@l(r3)  /* 0x80645F44@l */
/* 804AF30C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804AF310  C0 46 5F 70 */	lfs f2, lit_564@l(r6)  /* 0x80645F70@l */
/* 804AF314  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AF318  C8 01 00 08 */	lfd f0, 8(r1)
/* 804AF31C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804AF320  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AF324  FC 00 00 1E */	fctiwz f0, f0
/* 804AF328  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AF32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AF330  B0 1F 02 62 */	sth r0, 0x262(r31)
lbl_804AF334:
/* 804AF334  38 00 00 03 */	li r0, 3
/* 804AF338  90 1F 02 8C */	stw r0, 0x28c(r31)
/* 804AF33C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AF340  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AF344  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AF348  7C 08 03 A6 */	mtlr r0
/* 804AF34C  38 21 00 20 */	addi r1, r1, 0x20
/* 804AF350  4E 80 00 20 */	blr 
