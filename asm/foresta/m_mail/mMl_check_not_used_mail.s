lbl_803BC7A0:
/* 803BC7A0  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 803BC7A4  38 60 00 00 */	li r3, 0
/* 803BC7A8  28 00 00 FF */	cmplwi r0, 0xff
/* 803BC7AC  4C 82 00 20 */	bnelr 
/* 803BC7B0  38 60 00 01 */	li r3, 1
/* 803BC7B4  4E 80 00 20 */	blr 
