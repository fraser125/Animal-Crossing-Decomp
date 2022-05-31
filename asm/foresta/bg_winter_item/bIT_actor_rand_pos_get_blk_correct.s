lbl_804BFD18:
/* 804BFD18  3D 00 80 6A */	lis r8, rnd_data_x@ha /* 0x8069881C@ha */
/* 804BFD1C  54 A9 26 B6 */	rlwinm r9, r5, 4, 0x1a, 0x1b
/* 804BFD20  38 A8 88 1C */	addi r5, r8, rnd_data_x@l /* 0x8069881C@l */
/* 804BFD24  3C E0 80 6A */	lis r7, rnd_data_z@ha /* 0x8069885C@ha */
/* 804BFD28  54 C6 17 3A */	rlwinm r6, r6, 2, 0x1c, 0x1d
/* 804BFD2C  7C A5 4A 14 */	add r5, r5, r9
/* 804BFD30  38 07 88 5C */	addi r0, r7, rnd_data_z@l /* 0x8069885C@l */
/* 804BFD34  7C 05 34 2E */	lfsx f0, r5, r6
/* 804BFD38  7C A0 4A 14 */	add r5, r0, r9
/* 804BFD3C  D0 03 00 00 */	stfs f0, 0(r3)
/* 804BFD40  7C 05 34 2E */	lfsx f0, r5, r6
/* 804BFD44  D0 04 00 00 */	stfs f0, 0(r4)
/* 804BFD48  4E 80 00 20 */	blr 
