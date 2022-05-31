lbl_803A44BC:
/* 803A44BC  2C 07 00 00 */	cmpwi r7, 0
/* 803A44C0  40 82 00 18 */	bne lbl_803A44D8
/* 803A44C4  54 C0 06 30 */	rlwinm r0, r6, 0, 0x18, 0x18
/* 803A44C8  28 00 00 80 */	cmplwi r0, 0x80
/* 803A44CC  40 82 00 0C */	bne lbl_803A44D8
/* 803A44D0  38 60 00 00 */	li r3, 0
/* 803A44D4  7C A4 2B 78 */	mr r4, r5
lbl_803A44D8:
/* 803A44D8  1C 03 00 03 */	mulli r0, r3, 3
/* 803A44DC  7C 04 02 14 */	add r0, r4, r0
/* 803A44E0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803A44E4  38 63 58 10 */	addi r3, r3, 0x5810
/* 803A44E8  4E 80 00 20 */	blr 
