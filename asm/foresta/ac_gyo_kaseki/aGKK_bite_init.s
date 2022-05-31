lbl_805A6984:
/* 805A6984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6988  7C 08 02 A6 */	mflr r0
/* 805A698C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6990  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6994  7C 7F 1B 78 */	mr r31, r3
/* 805A6998  4B FF E5 29 */	bl aGKK_get_uki_type
/* 805A699C  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A69A0  3C 80 80 6C */	lis r4, data_806C3FA8@ha /* 0x806C3FA8@ha */
/* 805A69A4  1C C3 00 14 */	mulli r6, r3, 0x14
/* 805A69A8  3C A0 80 6C */	lis r5, aGKK_bite_time@ha /* 0x806C41F0@ha */
/* 805A69AC  38 64 3F A8 */	addi r3, r4, data_806C3FA8@l /* 0x806C3FA8@l */
/* 805A69B0  54 00 18 38 */	slwi r0, r0, 3
/* 805A69B4  7C 63 02 14 */	add r3, r3, r0
/* 805A69B8  38 85 41 F0 */	addi r4, r5, aGKK_bite_time@l /* 0x806C41F0@l */
/* 805A69BC  80 03 00 04 */	lwz r0, 4(r3)
/* 805A69C0  3C 60 80 65 */	lis r3, lit_793@ha /* 0x8064A48C@ha */
/* 805A69C4  7C 84 32 14 */	add r4, r4, r6
/* 805A69C8  C0 03 A4 8C */	lfs f0, lit_793@l(r3)  /* 0x8064A48C@l */
/* 805A69CC  54 00 10 3A */	slwi r0, r0, 2
/* 805A69D0  7F E3 FB 78 */	mr r3, r31
/* 805A69D4  7C 24 04 2E */	lfsx f1, r4, r0
/* 805A69D8  38 00 00 06 */	li r0, 6
/* 805A69DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A69E0  FC 00 00 1E */	fctiwz f0, f0
/* 805A69E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A69E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805A69EC  90 9F 02 18 */	stw r4, 0x218(r31)
/* 805A69F0  B0 1F 02 2C */	sth r0, 0x22c(r31)
/* 805A69F4  4B FF E4 F5 */	bl aGKK_speed_reset
/* 805A69F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A69FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A6A00  7C 08 03 A6 */	mtlr r0
/* 805A6A04  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6A08  4E 80 00 20 */	blr 
