lbl_803FEEEC:
/* 803FEEEC  38 03 FF FC */	addi r0, r3, -4
/* 803FEEF0  28 00 00 14 */	cmplwi r0, 0x14
/* 803FEEF4  4D 81 00 20 */	bgtlr 
/* 803FEEF8  3C 80 80 66 */	lis r4, lit_3437@ha /* 0x8065E988@ha */
/* 803FEEFC  54 00 10 3A */	slwi r0, r0, 2
/* 803FEF00  38 84 E9 88 */	addi r4, r4, lit_3437@l /* 0x8065E988@l */
/* 803FEF04  7C 04 00 2E */	lwzx r0, r4, r0
/* 803FEF08  7C 09 03 A6 */	mtctr r0
/* 803FEF0C  4E 80 04 20 */	bctr 
lbl_803FEF10:
/* 803FEF10  38 60 00 02 */	li r3, 2
/* 803FEF14  4E 80 00 20 */	blr 
lbl_803FEF18:
/* 803FEF18  38 60 00 16 */	li r3, 0x16
lbl_803FEF1C:
/* 803FEF1C  4E 80 00 20 */	blr 
