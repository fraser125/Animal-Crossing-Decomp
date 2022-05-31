lbl_803E59E4:
/* 803E59E4  54 C8 08 3C */	slwi r8, r6, 1
/* 803E59E8  54 E6 08 3C */	slwi r6, r7, 1
/* 803E59EC  38 E8 FF FF */	addi r7, r8, -1
/* 803E59F0  54 A0 1D 38 */	rlwinm r0, r5, 3, 0x14, 0x1c
/* 803E59F4  38 A6 FF FF */	addi r5, r6, -1
/* 803E59F8  39 03 00 08 */	addi r8, r3, 8
/* 803E59FC  54 E6 72 22 */	rlwinm r6, r7, 0xe, 8, 0x11
/* 803E5A00  50 80 7A 20 */	rlwimi r0, r4, 0xf, 8, 0x10
/* 803E5A04  64 C6 F6 00 */	oris r6, r6, 0xf600
/* 803E5A08  54 A5 15 3A */	rlwinm r5, r5, 2, 0x14, 0x1d
/* 803E5A0C  7C C5 2B 78 */	or r5, r6, r5
/* 803E5A10  90 A3 00 00 */	stw r5, 0(r3)
/* 803E5A14  90 03 00 04 */	stw r0, 4(r3)
/* 803E5A18  7D 03 43 78 */	mr r3, r8
/* 803E5A1C  4E 80 00 20 */	blr 
