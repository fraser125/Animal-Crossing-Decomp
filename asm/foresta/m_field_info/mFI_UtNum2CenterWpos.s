lbl_803A547C:
/* 803A547C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A5480  7C 08 02 A6 */	mflr r0
/* 803A5484  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A5488  39 61 00 30 */	addi r11, r1, 0x30
/* 803A548C  4B CF 5A 49 */	bl func_8009AED4
/* 803A5490  7C 9D 23 78 */	mr r29, r4
/* 803A5494  3C C0 43 30 */	lis r6, 0x4330
/* 803A5498  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 803A549C  7C BE 2B 78 */	mr r30, r5
/* 803A54A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A54A4  3C 80 80 64 */	lis r4, lit_648@ha /* 0x80641F5C@ha */
/* 803A54A8  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 803A54AC  C8 64 1F 5C */	lfd f3, lit_648@l(r4)  /* 0x80641F5C@l */
/* 803A54B0  90 C1 00 08 */	stw r6, 8(r1)
/* 803A54B4  3C A0 80 64 */	lis r5, lit_621@ha /* 0x80641F40@ha */
/* 803A54B8  3C 80 80 64 */	lis r4, lit_646@ha /* 0x80641F54@ha */
/* 803A54BC  C0 85 1F 40 */	lfs f4, lit_621@l(r5)  /* 0x80641F40@l */
/* 803A54C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A54C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A54C8  EC 40 18 28 */	fsubs f2, f0, f3
/* 803A54CC  C0 24 1F 54 */	lfs f1, lit_646@l(r4)  /* 0x80641F54@l */
/* 803A54D0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803A54D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A54D8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 803A54DC  EC 00 18 28 */	fsubs f0, f0, f3
/* 803A54E0  D0 43 00 00 */	stfs f2, 0(r3)
/* 803A54E4  EC 04 00 32 */	fmuls f0, f4, f0
/* 803A54E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 803A54EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 803A54F0  EC 00 08 2A */	fadds f0, f0, f1
/* 803A54F4  D0 03 00 00 */	stfs f0, 0(r3)
/* 803A54F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 803A54FC  EC 00 08 2A */	fadds f0, f0, f1
/* 803A5500  D0 03 00 08 */	stfs f0, 8(r3)
/* 803A5504  4B FF F8 D5 */	bl mFI_GetBlockZMax
/* 803A5508  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A550C  4B FF F8 85 */	bl mFI_GetBlockXMax
/* 803A5510  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A5514  7F A3 EB 78 */	mr r3, r29
/* 803A5518  7F C4 F3 78 */	mr r4, r30
/* 803A551C  7F E6 FB 78 */	mr r6, r31
/* 803A5520  4B FF FD 85 */	bl mFI_UtNumCheck
/* 803A5524  39 61 00 30 */	addi r11, r1, 0x30
/* 803A5528  4B CF 59 F9 */	bl func_8009AF20
/* 803A552C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A5530  7C 08 03 A6 */	mtlr r0
/* 803A5534  38 21 00 30 */	addi r1, r1, 0x30
/* 803A5538  4E 80 00 20 */	blr 
