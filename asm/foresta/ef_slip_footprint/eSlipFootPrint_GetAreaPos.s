lbl_8061E340:
/* 8061E340  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8061E344  3C A0 80 6D */	lis r5, eSlipFootPrint_area_offset_data@ha /* 0x806D3598@ha */
/* 8061E348  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061E34C  38 A5 35 98 */	addi r5, r5, eSlipFootPrint_area_offset_data@l /* 0x806D3598@l */
/* 8061E350  7C 05 04 2E */	lfsx f0, r5, r0
/* 8061E354  7C A5 02 14 */	add r5, r5, r0
/* 8061E358  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E35C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8061E360  C0 24 00 04 */	lfs f1, 4(r4)
/* 8061E364  C0 05 00 04 */	lfs f0, 4(r5)
/* 8061E368  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E36C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8061E370  C0 24 00 08 */	lfs f1, 8(r4)
/* 8061E374  C0 05 00 08 */	lfs f0, 8(r5)
/* 8061E378  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E37C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8061E380  4E 80 00 20 */	blr 
