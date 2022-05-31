lbl_804B8220:
/* 804B8220  3D 00 80 69 */	lis r8, rnd_data_x@ha /* 0x8069564C@ha */
/* 804B8224  54 A9 26 B6 */	rlwinm r9, r5, 4, 0x1a, 0x1b
/* 804B8228  38 A8 56 4C */	addi r5, r8, rnd_data_x@l /* 0x8069564C@l */
/* 804B822C  3C E0 80 69 */	lis r7, rnd_data_z@ha /* 0x8069568C@ha */
/* 804B8230  54 C6 17 3A */	rlwinm r6, r6, 2, 0x1c, 0x1d
/* 804B8234  7C A5 4A 14 */	add r5, r5, r9
/* 804B8238  38 07 56 8C */	addi r0, r7, rnd_data_z@l /* 0x8069568C@l */
/* 804B823C  7C 05 34 2E */	lfsx f0, r5, r6
/* 804B8240  7C A0 4A 14 */	add r5, r0, r9
/* 804B8244  D0 03 00 00 */	stfs f0, 0(r3)
/* 804B8248  7C 05 34 2E */	lfsx f0, r5, r6
/* 804B824C  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B8250  4E 80 00 20 */	blr 
