lbl_803A7A7C:
/* 803A7A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A7A80  7C 08 02 A6 */	mflr r0
/* 803A7A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A7A88  39 61 00 20 */	addi r11, r1, 0x20
/* 803A7A8C  4B CF 34 49 */	bl func_8009AED4
/* 803A7A90  3C C0 80 64 */	lis r6, lit_637@ha /* 0x80641F44@ha */
/* 803A7A94  7C 9E 23 78 */	mr r30, r4
/* 803A7A98  C0 06 1F 44 */	lfs f0, lit_637@l(r6)  /* 0x80641F44@l */
/* 803A7A9C  7C BF 2B 78 */	mr r31, r5
/* 803A7AA0  7C 7D 1B 78 */	mr r29, r3
/* 803A7AA4  7F C3 F3 78 */	mr r3, r30
/* 803A7AA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803A7AAC  7F E4 FB 78 */	mr r4, r31
/* 803A7AB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 803A7AB4  4B FF D7 05 */	bl mFI_GetBlockNum
/* 803A7AB8  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7ABC  7F C5 F3 78 */	mr r5, r30
/* 803A7AC0  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A7AC4  7F E6 FB 78 */	mr r6, r31
/* 803A7AC8  80 84 00 00 */	lwz r4, 0(r4)
/* 803A7ACC  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A7AD0  38 61 00 0C */	addi r3, r1, 0xc
/* 803A7AD4  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 803A7AD8  38 81 00 08 */	addi r4, r1, 8
/* 803A7ADC  7C E7 02 14 */	add r7, r7, r0
/* 803A7AE0  80 07 05 84 */	lwz r0, 0x584(r7)
/* 803A7AE4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 803A7AE8  9B DD 00 00 */	stb r30, 0(r29)
/* 803A7AEC  9B FD 00 01 */	stb r31, 1(r29)
/* 803A7AF0  4B FF E0 89 */	bl mFI_BkNum2WposXZ
/* 803A7AF4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803A7AF8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 803A7AFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 803A7B00  D0 1D 00 08 */	stfs f0, 8(r29)
/* 803A7B04  39 61 00 20 */	addi r11, r1, 0x20
/* 803A7B08  4B CF 34 19 */	bl func_8009AF20
/* 803A7B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A7B10  7C 08 03 A6 */	mtlr r0
/* 803A7B14  38 21 00 20 */	addi r1, r1, 0x20
/* 803A7B18  4E 80 00 20 */	blr 
