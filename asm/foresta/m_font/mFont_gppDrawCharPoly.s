lbl_803B0334:
/* 803B0334  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803B0338  7C 08 02 A6 */	mflr r0
/* 803B033C  90 01 00 74 */	stw r0, 0x74(r1)
/* 803B0340  39 61 00 70 */	addi r11, r1, 0x70
/* 803B0344  4B CE AB 85 */	bl func_8009AEC8
/* 803B0348  80 04 00 00 */	lwz r0, 0(r4)
/* 803B034C  7C 9A 23 78 */	mr r26, r4
/* 803B0350  7C DB 33 78 */	mr r27, r6
/* 803B0354  7C FC 3B 78 */	mr r28, r7
/* 803B0358  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B035C  7D 3E 4B 78 */	mr r30, r9
/* 803B0360  7D 1D 43 78 */	mr r29, r8
/* 803B0364  7C A4 2B 78 */	mr r4, r5
/* 803B0368  81 23 02 D4 */	lwz r9, 0x2d4(r3)
/* 803B036C  38 A1 00 14 */	addi r5, r1, 0x14
/* 803B0370  38 C1 00 10 */	addi r6, r1, 0x10
/* 803B0374  38 E1 00 0C */	addi r7, r1, 0xc
/* 803B0378  38 09 FF C0 */	addi r0, r9, -64
/* 803B037C  39 01 00 08 */	addi r8, r1, 8
/* 803B0380  90 03 02 D4 */	stw r0, 0x2d4(r3)
/* 803B0384  7C 1F 03 78 */	mr r31, r0
/* 803B0388  38 61 00 18 */	addi r3, r1, 0x18
/* 803B038C  4B FF F7 1D */	bl mFont_gppLoadTexture
/* 803B0390  3C 60 43 30 */	lis r3, 0x4330
/* 803B0394  6F A4 80 00 */	xoris r4, r29, 0x8000
/* 803B0398  90 81 00 24 */	stw r4, 0x24(r1)
/* 803B039C  3C A0 80 64 */	lis r5, lit_635@ha /* 0x806420AC@ha */
/* 803B03A0  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 803B03A4  C8 45 20 AC */	lfd f2, lit_635@l(r5)  /* 0x806420AC@l */
/* 803B03A8  90 61 00 20 */	stw r3, 0x20(r1)
/* 803B03AC  3C 80 80 64 */	lis r4, lit_773@ha /* 0x806420D0@ha */
/* 803B03B0  3C A0 80 64 */	lis r5, lit_628@ha /* 0x80642090@ha */
/* 803B03B4  3C C0 80 64 */	lis r6, lit_627@ha /* 0x8064208C@ha */
/* 803B03B8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803B03BC  90 61 00 28 */	stw r3, 0x28(r1)
/* 803B03C0  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806420A0@ha */
/* 803B03C4  C0 64 20 D0 */	lfs f3, lit_773@l(r4)  /* 0x806420D0@l */
/* 803B03C8  EC 20 10 28 */	fsubs f1, f0, f2
/* 803B03CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803B03D0  38 83 20 A0 */	addi r4, r3, lit_632@l /* 0x806420A0@l */
/* 803B03D4  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806420A4@ha */
/* 803B03D8  81 21 00 10 */	lwz r9, 0x10(r1)
/* 803B03DC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803B03E0  ED 23 08 24 */	fdivs f9, f3, f1
/* 803B03E4  C0 BB 00 04 */	lfs f5, 4(r27)
/* 803B03E8  C0 C5 20 90 */	lfs f6, lit_628@l(r5)  /* 0x80642090@l */
/* 803B03EC  39 03 20 A4 */	addi r8, r3, lit_633@l /* 0x806420A4@l */
/* 803B03F0  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 803B03F4  7C 09 F2 14 */	add r0, r9, r30
/* 803B03F8  EC 40 10 28 */	fsubs f2, f0, f2
/* 803B03FC  C0 24 00 00 */	lfs f1, 0(r4)
/* 803B0400  EC A5 30 28 */	fsubs f5, f5, f6
/* 803B0404  C0 9C 00 04 */	lfs f4, 4(r28)
/* 803B0408  C1 1B 00 00 */	lfs f8, 0(r27)
/* 803B040C  EC 01 48 28 */	fsubs f0, f1, f9
/* 803B0410  ED 43 10 24 */	fdivs f10, f3, f2
/* 803B0414  C0 E6 20 8C */	lfs f7, lit_627@l(r6)  /* 0x8064208C@l */
/* 803B0418  C0 7C 00 00 */	lfs f3, 0(r28)
/* 803B041C  7C 67 EA 14 */	add r3, r7, r29
/* 803B0420  54 65 30 32 */	slwi r5, r3, 6
/* 803B0424  54 04 30 32 */	slwi r4, r0, 6
/* 803B0428  EC 44 30 28 */	fsubs f2, f4, f6
/* 803B042C  54 E3 30 32 */	slwi r3, r7, 6
/* 803B0430  38 C3 00 20 */	addi r6, r3, 0x20
/* 803B0434  38 A5 FF E0 */	addi r5, r5, -32
/* 803B0438  55 23 30 32 */	slwi r3, r9, 6
/* 803B043C  38 04 FF E0 */	addi r0, r4, -32
/* 803B0440  38 E3 00 20 */	addi r7, r3, 0x20
/* 803B0444  EC C8 38 28 */	fsubs f6, f8, f7
/* 803B0448  EC 63 38 28 */	fsubs f3, f3, f7
/* 803B044C  C0 88 00 00 */	lfs f4, 0(r8)
/* 803B0450  FC A0 28 50 */	fneg f5, f5
/* 803B0454  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803B0458  FC 40 10 50 */	fneg f2, f2
/* 803B045C  EC 63 30 28 */	fsubs f3, f3, f6
/* 803B0460  EC 21 50 28 */	fsubs f1, f1, f10
/* 803B0464  90 01 00 08 */	stw r0, 8(r1)
/* 803B0468  ED 02 28 28 */	fsubs f8, f2, f5
/* 803B046C  7F E3 FB 78 */	mr r3, r31
/* 803B0470  EC 43 00 32 */	fmuls f2, f3, f0
/* 803B0474  EC 03 02 72 */	fmuls f0, f3, f9
/* 803B0478  EC 28 00 72 */	fmuls f1, f8, f1
/* 803B047C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803B0480  EC 66 10 2A */	fadds f3, f6, f2
/* 803B0484  EC C6 00 2A */	fadds f6, f6, f0
/* 803B0488  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803B048C  EC E5 08 2A */	fadds f7, f5, f1
/* 803B0490  EC 08 02 B2 */	fmuls f0, f8, f10
/* 803B0494  EC 24 00 F2 */	fmuls f1, f4, f3
/* 803B0498  EC 44 01 B2 */	fmuls f2, f4, f6
/* 803B049C  EC A5 00 2A */	fadds f5, f5, f0
/* 803B04A0  EC 04 01 F2 */	fmuls f0, f4, f7
/* 803B04A4  FC 60 10 1E */	fctiwz f3, f2
/* 803B04A8  EC 44 01 72 */	fmuls f2, f4, f5
/* 803B04AC  FC 20 08 1E */	fctiwz f1, f1
/* 803B04B0  FC 00 00 1E */	fctiwz f0, f0
/* 803B04B4  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 803B04B8  FC 40 10 1E */	fctiwz f2, f2
/* 803B04BC  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 803B04C0  83 61 00 34 */	lwz r27, 0x34(r1)
/* 803B04C4  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 803B04C8  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803B04CC  7F 64 DB 78 */	mr r4, r27
/* 803B04D0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 803B04D4  83 81 00 3C */	lwz r28, 0x3c(r1)
/* 803B04D8  83 C1 00 4C */	lwz r30, 0x4c(r1)
/* 803B04DC  7F 85 E3 78 */	mr r5, r28
/* 803B04E0  4B FF F6 61 */	bl mFont_SetVertex_dol
/* 803B04E4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 803B04E8  7F 64 DB 78 */	mr r4, r27
/* 803B04EC  80 E1 00 08 */	lwz r7, 8(r1)
/* 803B04F0  7F C5 F3 78 */	mr r5, r30
/* 803B04F4  38 7F 00 10 */	addi r3, r31, 0x10
/* 803B04F8  4B FF F6 49 */	bl mFont_SetVertex_dol
/* 803B04FC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803B0500  7F A4 EB 78 */	mr r4, r29
/* 803B0504  80 E1 00 08 */	lwz r7, 8(r1)
/* 803B0508  7F C5 F3 78 */	mr r5, r30
/* 803B050C  38 7F 00 20 */	addi r3, r31, 0x20
/* 803B0510  4B FF F6 31 */	bl mFont_SetVertex_dol
/* 803B0514  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803B0518  7F A4 EB 78 */	mr r4, r29
/* 803B051C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 803B0520  7F 85 E3 78 */	mr r5, r28
/* 803B0524  38 7F 00 30 */	addi r3, r31, 0x30
/* 803B0528  4B FF F6 19 */	bl mFont_SetVertex_dol
/* 803B052C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 803B0530  3C A0 01 00 */	lis r5, 0x0100 /* 0x01004008@ha */
/* 803B0534  3C 60 62 01 */	lis r3, 0x6201 /* 0x62008200@ha */
/* 803B0538  3C 80 0A 02 */	lis r4, 0xa02
/* 803B053C  38 06 00 08 */	addi r0, r6, 8
/* 803B0540  38 A5 40 08 */	addi r5, r5, 0x4008 /* 0x01004008@l */
/* 803B0544  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B0548  38 03 82 00 */	addi r0, r3, 0x8200 /* 0x62008200@l */
/* 803B054C  90 A6 00 00 */	stw r5, 0(r6)
/* 803B0550  93 E6 00 04 */	stw r31, 4(r6)
/* 803B0554  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 803B0558  38 65 00 08 */	addi r3, r5, 8
/* 803B055C  90 61 00 18 */	stw r3, 0x18(r1)
/* 803B0560  90 85 00 00 */	stw r4, 0(r5)
/* 803B0564  90 05 00 04 */	stw r0, 4(r5)
/* 803B0568  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803B056C  90 1A 00 00 */	stw r0, 0(r26)
/* 803B0570  39 61 00 70 */	addi r11, r1, 0x70
/* 803B0574  4B CE A9 A1 */	bl func_8009AF14
/* 803B0578  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803B057C  7C 08 03 A6 */	mtlr r0
/* 803B0580  38 21 00 70 */	addi r1, r1, 0x70
/* 803B0584  4E 80 00 20 */	blr 
