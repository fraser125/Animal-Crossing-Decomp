lbl_803AF8D0:
/* 803AF8D0  54 A0 82 1E */	rlwinm r0, r5, 0x10, 8, 0xf
/* 803AF8D4  3C A0 FA 00 */	lis r5, 0xfa00
/* 803AF8D8  90 A3 00 00 */	stw r5, 0(r3)
/* 803AF8DC  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 803AF8E0  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 803AF8E4  38 83 00 08 */	addi r4, r3, 8
/* 803AF8E8  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 803AF8EC  90 03 00 04 */	stw r0, 4(r3)
/* 803AF8F0  7C 83 23 78 */	mr r3, r4
/* 803AF8F4  4E 80 00 20 */	blr 
