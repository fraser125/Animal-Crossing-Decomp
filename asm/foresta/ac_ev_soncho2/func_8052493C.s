lbl_8052493C:
/* 8052493C  88 03 09 AE */	lbz r0, 0x9ae(r3)
/* 80524940  28 00 00 1B */	cmplwi r0, 0x1b
/* 80524944  40 82 00 0C */	bne lbl_80524950
/* 80524948  38 64 33 91 */	addi r3, r4, 0x3391
/* 8052494C  4E 80 00 20 */	blr 
lbl_80524950:
/* 80524950  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80524954  7C 60 22 14 */	add r3, r0, r4
/* 80524958  38 63 32 80 */	addi r3, r3, 0x3280
/* 8052495C  4E 80 00 20 */	blr 
