lbl_804C7130:
/* 804C7130  3D 00 80 6A */	lis r8, rnd_data_x@ha /* 0x8069B81C@ha */
/* 804C7134  54 A9 26 B6 */	rlwinm r9, r5, 4, 0x1a, 0x1b
/* 804C7138  38 A8 B8 1C */	addi r5, r8, rnd_data_x@l /* 0x8069B81C@l */
/* 804C713C  3C E0 80 6A */	lis r7, rnd_data_z@ha /* 0x8069B85C@ha */
/* 804C7140  54 C6 17 3A */	rlwinm r6, r6, 2, 0x1c, 0x1d
/* 804C7144  7C A5 4A 14 */	add r5, r5, r9
/* 804C7148  38 07 B8 5C */	addi r0, r7, rnd_data_z@l /* 0x8069B85C@l */
/* 804C714C  7C 05 34 2E */	lfsx f0, r5, r6
/* 804C7150  7C A0 4A 14 */	add r5, r0, r9
/* 804C7154  D0 03 00 00 */	stfs f0, 0(r3)
/* 804C7158  7C 05 34 2E */	lfsx f0, r5, r6
/* 804C715C  D0 04 00 00 */	stfs f0, 0(r4)
/* 804C7160  4E 80 00 20 */	blr 
