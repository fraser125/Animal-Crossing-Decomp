lbl_804817E4:
/* 804817E4  1C 04 00 0C */	mulli r0, r4, 0xc
/* 804817E8  3C 80 80 69 */	lis r4, offset_data@ha /* 0x8068A16C@ha */
/* 804817EC  C0 23 00 00 */	lfs f1, 0(r3)
/* 804817F0  38 84 A1 6C */	addi r4, r4, offset_data@l /* 0x8068A16C@l */
/* 804817F4  7C 04 04 2E */	lfsx f0, r4, r0
/* 804817F8  7C 84 02 14 */	add r4, r4, r0
/* 804817FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80481800  D0 03 00 00 */	stfs f0, 0(r3)
/* 80481804  C0 23 00 04 */	lfs f1, 4(r3)
/* 80481808  C0 04 00 04 */	lfs f0, 4(r4)
/* 8048180C  EC 01 00 2A */	fadds f0, f1, f0
/* 80481810  D0 03 00 04 */	stfs f0, 4(r3)
/* 80481814  C0 23 00 08 */	lfs f1, 8(r3)
/* 80481818  C0 04 00 08 */	lfs f0, 8(r4)
/* 8048181C  EC 01 00 2A */	fadds f0, f1, f0
/* 80481820  D0 03 00 08 */	stfs f0, 8(r3)
/* 80481824  4E 80 00 20 */	blr 