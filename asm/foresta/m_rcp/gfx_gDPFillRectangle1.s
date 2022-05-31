lbl_803E59B8:
/* 803E59B8  54 C6 7A 20 */	rlwinm r6, r6, 0xf, 8, 0x10
/* 803E59BC  54 A0 1D 38 */	rlwinm r0, r5, 3, 0x14, 0x1c
/* 803E59C0  64 C6 F6 00 */	oris r6, r6, 0xf600
/* 803E59C4  54 E5 1D 38 */	rlwinm r5, r7, 3, 0x14, 0x1c
/* 803E59C8  7C C5 2B 78 */	or r5, r6, r5
/* 803E59CC  50 80 7A 20 */	rlwimi r0, r4, 0xf, 8, 0x10
/* 803E59D0  90 A3 00 00 */	stw r5, 0(r3)
/* 803E59D4  38 83 00 08 */	addi r4, r3, 8
/* 803E59D8  90 03 00 04 */	stw r0, 4(r3)
/* 803E59DC  7C 83 23 78 */	mr r3, r4
/* 803E59E0  4E 80 00 20 */	blr 
