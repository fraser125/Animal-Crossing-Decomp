lbl_8039A5CC:
/* 8039A5CC  98 83 00 00 */	stb r4, 0(r3)
/* 8039A5D0  54 86 C6 3E */	rlwinm r6, r4, 0x18, 0x18, 0x1f
/* 8039A5D4  54 85 86 3E */	rlwinm r5, r4, 0x10, 0x18, 0x1f
/* 8039A5D8  54 80 46 3E */	srwi r0, r4, 0x18
/* 8039A5DC  98 C3 00 01 */	stb r6, 1(r3)
/* 8039A5E0  98 A3 00 02 */	stb r5, 2(r3)
/* 8039A5E4  98 03 00 03 */	stb r0, 3(r3)
/* 8039A5E8  4E 80 00 20 */	blr 