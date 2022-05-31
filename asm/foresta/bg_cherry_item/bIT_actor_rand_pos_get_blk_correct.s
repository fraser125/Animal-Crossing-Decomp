lbl_804B0E9C:
/* 804B0E9C  3D 00 80 69 */	lis r8, rnd_data_x@ha /* 0x806926EC@ha */
/* 804B0EA0  54 A9 26 B6 */	rlwinm r9, r5, 4, 0x1a, 0x1b
/* 804B0EA4  38 A8 26 EC */	addi r5, r8, rnd_data_x@l /* 0x806926EC@l */
/* 804B0EA8  3C E0 80 69 */	lis r7, rnd_data_z@ha /* 0x8069272C@ha */
/* 804B0EAC  54 C6 17 3A */	rlwinm r6, r6, 2, 0x1c, 0x1d
/* 804B0EB0  7C A5 4A 14 */	add r5, r5, r9
/* 804B0EB4  38 07 27 2C */	addi r0, r7, rnd_data_z@l /* 0x8069272C@l */
/* 804B0EB8  7C 05 34 2E */	lfsx f0, r5, r6
/* 804B0EBC  7C A0 4A 14 */	add r5, r0, r9
/* 804B0EC0  D0 03 00 00 */	stfs f0, 0(r3)
/* 804B0EC4  7C 05 34 2E */	lfsx f0, r5, r6
/* 804B0EC8  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B0ECC  4E 80 00 20 */	blr 
