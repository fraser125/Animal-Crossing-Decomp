lbl_8061B6A8:
/* 8061B6A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061B6AC  7C 08 02 A6 */	mflr r0
/* 8061B6B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061B6B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8061B6B8  4B A7 F8 19 */	bl func_8009AED0
/* 8061B6BC  7C 7C 1B 78 */	mr r28, r3
/* 8061B6C0  7C 9D 23 78 */	mr r29, r4
/* 8061B6C4  A8 03 00 00 */	lha r0, 0(r3)
/* 8061B6C8  20 00 00 10 */	subfic r0, r0, 0x10
/* 8061B6CC  7C 00 0E 70 */	srawi r0, r0, 1
/* 8061B6D0  7C 00 07 35 */	extsh. r0, r0
/* 8061B6D4  40 80 00 0C */	bge lbl_8061B6E0
/* 8061B6D8  3B E0 00 00 */	li r31, 0
/* 8061B6DC  48 00 00 14 */	b lbl_8061B6F0
lbl_8061B6E0:
/* 8061B6E0  2C 00 00 07 */	cmpwi r0, 7
/* 8061B6E4  3B E0 00 07 */	li r31, 7
/* 8061B6E8  41 81 00 08 */	bgt lbl_8061B6F0
/* 8061B6EC  7C 1F 03 78 */	mr r31, r0
lbl_8061B6F0:
/* 8061B6F0  83 DD 00 00 */	lwz r30, 0(r29)
/* 8061B6F4  7F C3 F3 78 */	mr r3, r30
/* 8061B6F8  4B DC 9A 61 */	bl _texture_z_light_fog_prim_xlu
/* 8061B6FC  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8061B700  38 60 00 00 */	li r3, 0
/* 8061B704  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8061B708  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 8061B70C  4B DF 0B F5 */	bl Matrix_translate
/* 8061B710  38 60 E0 00 */	li r3, -8192
/* 8061B714  38 80 00 01 */	li r4, 1
/* 8061B718  4B DF 0D A1 */	bl Matrix_RotateX
/* 8061B71C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061B720  3C 00 43 30 */	lis r0, 0x4330
/* 8061B724  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061B728  3C A0 80 65 */	lis r5, lit_399@ha /* 0x8064CA54@ha */
/* 8061B72C  80 84 00 00 */	lwz r4, 0(r4)
/* 8061B730  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064CA7C@ha */
/* 8061B734  C8 23 CA 7C */	lfd f1, lit_447@l(r3)  /* 0x8064CA7C@l */
/* 8061B738  3C C0 80 65 */	lis r6, lit_445@ha /* 0x8064CA74@ha */
/* 8061B73C  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8061B740  38 60 00 01 */	li r3, 1
/* 8061B744  90 01 00 08 */	stw r0, 8(r1)
/* 8061B748  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061B74C  C0 85 CA 54 */	lfs f4, lit_399@l(r5)  /* 0x8064CA54@l */
/* 8061B750  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061B754  C0 A6 CA 74 */	lfs f5, lit_445@l(r6)  /* 0x8064CA74@l */
/* 8061B758  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061B75C  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 8061B760  EC 60 08 28 */	fsubs f3, f0, f1
/* 8061B764  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 8061B768  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 8061B76C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8061B770  EC 65 18 2A */	fadds f3, f5, f3
/* 8061B774  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8061B778  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8061B77C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8061B780  4B DF 0C 6D */	bl Matrix_scale
/* 8061B784  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8061B788  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA000082@ha */
/* 8061B78C  3C A0 14 14 */	lis r5, 0x1414 /* 0x141414FF@ha */
/* 8061B790  3C 80 CD B5 */	lis r4, 0xCDB5 /* 0xCDB48CFF@ha */
/* 8061B794  38 07 00 08 */	addi r0, r7, 8
/* 8061B798  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061B79C  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 8061B7A0  38 06 00 82 */	addi r0, r6, 0x0082 /* 0xFA000082@l */
/* 8061B7A4  38 C5 14 FF */	addi r6, r5, 0x14FF /* 0x141414FF@l */
/* 8061B7A8  3C A0 FB 00 */	lis r5, 0xfb00
/* 8061B7AC  90 07 00 00 */	stw r0, 0(r7)
/* 8061B7B0  38 84 8C FF */	addi r4, r4, 0x8CFF /* 0xCDB48CFF@l */
/* 8061B7B4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061B7B8  90 C7 00 04 */	stw r6, 4(r7)
/* 8061B7BC  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8061B7C0  38 66 00 08 */	addi r3, r6, 8
/* 8061B7C4  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061B7C8  90 A6 00 00 */	stw r5, 0(r6)
/* 8061B7CC  90 86 00 04 */	stw r4, 4(r6)
/* 8061B7D0  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8061B7D4  38 7C 00 08 */	addi r3, r28, 8
/* 8061B7D8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061B7DC  90 1C 00 00 */	stw r0, 0(r28)
/* 8061B7E0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8061B7E4  4B DF 1B F1 */	bl _Matrix_to_Mtx_new
/* 8061B7E8  90 7C 00 04 */	stw r3, 4(r28)
/* 8061B7EC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8061B7F0  7F E0 07 34 */	extsh r0, r31
/* 8061B7F4  3C 80 80 6D */	lis r4, eSunahane_pattern_table@ha /* 0x806D33B8@ha */
/* 8061B7F8  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8061B7FC  3C 60 80 CC */	lis r3, ef_sunahane01_00_modelT@ha /* 0x80CBEA80@ha */
/* 8061B800  38 E5 00 20 */	addi r7, r5, 0x0020 /* 0xDB060020@l */
/* 8061B804  54 06 10 3A */	slwi r6, r0, 2
/* 8061B808  38 08 00 08 */	addi r0, r8, 8
/* 8061B80C  38 A4 33 B8 */	addi r5, r4, eSunahane_pattern_table@l /* 0x806D33B8@l */
/* 8061B810  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 8061B814  3C 80 DE 00 */	lis r4, 0xde00
/* 8061B818  38 03 EA 80 */	addi r0, r3, ef_sunahane01_00_modelT@l /* 0x80CBEA80@l */
/* 8061B81C  90 E8 00 00 */	stw r7, 0(r8)
/* 8061B820  7C 65 30 2E */	lwzx r3, r5, r6
/* 8061B824  90 68 00 04 */	stw r3, 4(r8)
/* 8061B828  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8061B82C  38 65 00 08 */	addi r3, r5, 8
/* 8061B830  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061B834  90 85 00 00 */	stw r4, 0(r5)
/* 8061B838  90 05 00 04 */	stw r0, 4(r5)
/* 8061B83C  39 61 00 20 */	addi r11, r1, 0x20
/* 8061B840  4B A7 F6 DD */	bl func_8009AF1C
/* 8061B844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061B848  7C 08 03 A6 */	mtlr r0
/* 8061B84C  38 21 00 20 */	addi r1, r1, 0x20
/* 8061B850  4E 80 00 20 */	blr 
