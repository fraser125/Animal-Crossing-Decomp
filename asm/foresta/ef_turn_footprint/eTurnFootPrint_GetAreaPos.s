lbl_80625718:
/* 80625718  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8062571C  3C A0 80 6D */	lis r5, eTurnFootPrint_area_offset_data@ha /* 0x806D3A10@ha */
/* 80625720  C0 24 00 00 */	lfs f1, 0(r4)
/* 80625724  38 A5 3A 10 */	addi r5, r5, eTurnFootPrint_area_offset_data@l /* 0x806D3A10@l */
/* 80625728  7C 05 04 2E */	lfsx f0, r5, r0
/* 8062572C  7C A5 02 14 */	add r5, r5, r0
/* 80625730  EC 01 00 2A */	fadds f0, f1, f0
/* 80625734  D0 03 00 00 */	stfs f0, 0(r3)
/* 80625738  C0 24 00 04 */	lfs f1, 4(r4)
/* 8062573C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80625740  EC 01 00 2A */	fadds f0, f1, f0
/* 80625744  D0 03 00 04 */	stfs f0, 4(r3)
/* 80625748  C0 24 00 08 */	lfs f1, 8(r4)
/* 8062574C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80625750  EC 01 00 2A */	fadds f0, f1, f0
/* 80625754  D0 03 00 08 */	stfs f0, 8(r3)
/* 80625758  4E 80 00 20 */	blr 
