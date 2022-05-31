lbl_8043C94C:
/* 8043C94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043C950  7C 08 02 A6 */	mflr r0
/* 8043C954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043C958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043C95C  7C 9F 23 78 */	mr r31, r4
/* 8043C960  93 C1 00 08 */	stw r30, 8(r1)
/* 8043C964  7C 7E 1B 78 */	mr r30, r3
/* 8043C968  4B FF 7B A1 */	bl mfish_onefish_ct
/* 8043C96C  7F C3 F3 78 */	mr r3, r30
/* 8043C970  7F E4 FB 78 */	mr r4, r31
/* 8043C974  4B FF 76 0D */	bl mfish_base_ct
/* 8043C978  3C 80 80 44 */	lis r4, mfish_koi_normal_process@ha /* 0x8043D154@ha */
/* 8043C97C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043C980  38 84 D1 54 */	addi r4, r4, mfish_koi_normal_process@l /* 0x8043D154@l */
/* 8043C984  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043C988  90 9E 00 34 */	stw r4, 0x34(r30)
/* 8043C98C  38 00 00 09 */	li r0, 9
/* 8043C990  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8043C994  D0 3E 05 E8 */	stfs f1, 0x5e8(r30)
/* 8043C998  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 8043C99C  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8043C9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043C9A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043C9AC  7C 08 03 A6 */	mtlr r0
/* 8043C9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8043C9B4  4E 80 00 20 */	blr 
