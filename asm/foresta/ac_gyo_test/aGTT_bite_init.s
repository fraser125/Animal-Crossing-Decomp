lbl_805A4A84:
/* 805A4A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A4A88  7C 08 02 A6 */	mflr r0
/* 805A4A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4A90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A4A94  7C 7F 1B 78 */	mr r31, r3
/* 805A4A98  4B FF E4 39 */	bl aGYO_get_uki_type
/* 805A4A9C  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A4AA0  3C 80 80 6C */	lis r4, data_806C3C58@ha /* 0x806C3C58@ha */
/* 805A4AA4  1C C3 00 14 */	mulli r6, r3, 0x14
/* 805A4AA8  3C A0 80 6C */	lis r5, aGYO_bite_time@ha /* 0x806C3EA0@ha */
/* 805A4AAC  38 64 3C 58 */	addi r3, r4, data_806C3C58@l /* 0x806C3C58@l */
/* 805A4AB0  54 00 18 38 */	slwi r0, r0, 3
/* 805A4AB4  7C 63 02 14 */	add r3, r3, r0
/* 805A4AB8  38 85 3E A0 */	addi r4, r5, aGYO_bite_time@l /* 0x806C3EA0@l */
/* 805A4ABC  80 03 00 04 */	lwz r0, 4(r3)
/* 805A4AC0  3C 60 80 65 */	lis r3, lit_731@ha /* 0x8064A3FC@ha */
/* 805A4AC4  7C 84 32 14 */	add r4, r4, r6
/* 805A4AC8  C0 03 A3 FC */	lfs f0, lit_731@l(r3)  /* 0x8064A3FC@l */
/* 805A4ACC  54 00 10 3A */	slwi r0, r0, 2
/* 805A4AD0  7F E3 FB 78 */	mr r3, r31
/* 805A4AD4  7C 24 04 2E */	lfsx f1, r4, r0
/* 805A4AD8  38 00 00 03 */	li r0, 3
/* 805A4ADC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4AE0  FC 00 00 1E */	fctiwz f0, f0
/* 805A4AE4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A4AE8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805A4AEC  90 9F 02 18 */	stw r4, 0x218(r31)
/* 805A4AF0  B0 1F 02 2C */	sth r0, 0x22c(r31)
/* 805A4AF4  4B FF E4 05 */	bl aGTT_speed_reset
/* 805A4AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4AFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A4B00  7C 08 03 A6 */	mtlr r0
/* 805A4B04  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4B08  4E 80 00 20 */	blr 
