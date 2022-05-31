lbl_803B3AB0:
/* 803B3AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3AB4  7C 08 02 A6 */	mflr r0
/* 803B3AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3ABC  4B CA 92 39 */	bl fqrand
/* 803B3AC0  3C 60 80 64 */	lis r3, data_8064238C@ha /* 0x8064238C@ha */
/* 803B3AC4  C0 03 23 8C */	lfs f0, data_8064238C@l(r3)  /* 0x8064238C@l */
/* 803B3AC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803B3ACC  FC 00 00 1E */	fctiwz f0, f0
/* 803B3AD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B3AD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B3AD8  60 00 30 00 */	ori r0, r0, 0x3000
/* 803B3ADC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803B3AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3AE4  7C 08 03 A6 */	mtlr r0
/* 803B3AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3AEC  4E 80 00 20 */	blr 
