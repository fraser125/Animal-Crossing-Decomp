lbl_803C1D80:
/* 803C1D80  2C 03 00 7F */	cmpwi r3, 0x7f
/* 803C1D84  41 82 00 0C */	beq lbl_803C1D90
/* 803C1D88  2C 03 00 80 */	cmpwi r3, 0x80
/* 803C1D8C  40 82 00 0C */	bne lbl_803C1D98
lbl_803C1D90:
/* 803C1D90  38 60 FF FF */	li r3, -1
/* 803C1D94  4E 80 00 20 */	blr 
lbl_803C1D98:
/* 803C1D98  3C 80 80 65 */	lis r4, voice_array@ha /* 0x80657124@ha */
/* 803C1D9C  38 84 71 24 */	addi r4, r4, voice_array@l /* 0x80657124@l */
/* 803C1DA0  7C 64 18 AE */	lbzx r3, r4, r3
/* 803C1DA4  4E 80 00 20 */	blr 
