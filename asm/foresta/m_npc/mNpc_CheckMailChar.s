lbl_803CCD74:
/* 803CCD74  38 03 FF DF */	addi r0, r3, -33
/* 803CCD78  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803CCD7C  28 00 00 01 */	cmplwi r0, 1
/* 803CCD80  40 81 00 44 */	ble lbl_803CCDC4
/* 803CCD84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803CCD88  28 00 00 5F */	cmplwi r0, 0x5f
/* 803CCD8C  41 82 00 38 */	beq lbl_803CCDC4
/* 803CCD90  28 00 00 90 */	cmplwi r0, 0x90
/* 803CCD94  41 82 00 30 */	beq lbl_803CCDC4
/* 803CCD98  28 00 00 5C */	cmplwi r0, 0x5c
/* 803CCD9C  41 82 00 28 */	beq lbl_803CCDC4
/* 803CCDA0  28 00 00 25 */	cmplwi r0, 0x25
/* 803CCDA4  41 80 00 0C */	blt lbl_803CCDB0
/* 803CCDA8  28 00 00 40 */	cmplwi r0, 0x40
/* 803CCDAC  40 81 00 18 */	ble lbl_803CCDC4
lbl_803CCDB0:
/* 803CCDB0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803CCDB4  28 00 00 7F */	cmplwi r0, 0x7f
/* 803CCDB8  41 80 00 14 */	blt lbl_803CCDCC
/* 803CCDBC  28 00 00 85 */	cmplwi r0, 0x85
/* 803CCDC0  41 81 00 0C */	bgt lbl_803CCDCC
lbl_803CCDC4:
/* 803CCDC4  38 60 00 01 */	li r3, 1
/* 803CCDC8  4E 80 00 20 */	blr 
lbl_803CCDCC:
/* 803CCDCC  38 60 00 00 */	li r3, 0
/* 803CCDD0  4E 80 00 20 */	blr 
