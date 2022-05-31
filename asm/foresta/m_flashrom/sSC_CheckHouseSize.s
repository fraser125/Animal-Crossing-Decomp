lbl_803ADED8:
/* 803ADED8  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 803ADEDC  54 03 DF 7E */	rlwinm r3, r0, 0x1b, 0x1d, 0x1f
/* 803ADEE0  38 03 FF FB */	addi r0, r3, -5
/* 803ADEE4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803ADEE8  4E 80 00 20 */	blr 
