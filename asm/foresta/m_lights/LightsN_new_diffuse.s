lbl_803BBAD4:
/* 803BBAD4  7C 64 1B 78 */	mr r4, r3
/* 803BBAD8  88 63 00 00 */	lbz r3, 0(r3)
/* 803BBADC  28 03 00 07 */	cmplwi r3, 7
/* 803BBAE0  41 80 00 0C */	blt lbl_803BBAEC
/* 803BBAE4  38 60 00 00 */	li r3, 0
/* 803BBAE8  4E 80 00 20 */	blr 
lbl_803BBAEC:
/* 803BBAEC  38 03 00 01 */	addi r0, r3, 1
/* 803BBAF0  54 63 25 36 */	rlwinm r3, r3, 4, 0x14, 0x1b
/* 803BBAF4  38 63 00 10 */	addi r3, r3, 0x10
/* 803BBAF8  98 04 00 00 */	stb r0, 0(r4)
/* 803BBAFC  7C 64 1A 14 */	add r3, r4, r3
/* 803BBB00  4E 80 00 20 */	blr 
