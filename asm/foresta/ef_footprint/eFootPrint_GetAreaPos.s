lbl_8060BC54:
/* 8060BC54  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8060BC58  3C A0 80 6D */	lis r5, eFootPrint_area_offset_data@ha /* 0x806D2348@ha */
/* 8060BC5C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8060BC60  38 A5 23 48 */	addi r5, r5, eFootPrint_area_offset_data@l /* 0x806D2348@l */
/* 8060BC64  7C 05 04 2E */	lfsx f0, r5, r0
/* 8060BC68  7C A5 02 14 */	add r5, r5, r0
/* 8060BC6C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060BC70  D0 03 00 00 */	stfs f0, 0(r3)
/* 8060BC74  C0 24 00 04 */	lfs f1, 4(r4)
/* 8060BC78  C0 05 00 04 */	lfs f0, 4(r5)
/* 8060BC7C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060BC80  D0 03 00 04 */	stfs f0, 4(r3)
/* 8060BC84  C0 24 00 08 */	lfs f1, 8(r4)
/* 8060BC88  C0 05 00 08 */	lfs f0, 8(r5)
/* 8060BC8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060BC90  D0 03 00 08 */	stfs f0, 8(r3)
/* 8060BC94  4E 80 00 20 */	blr 
