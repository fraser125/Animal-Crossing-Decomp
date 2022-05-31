lbl_803AF67C:
/* 803AF67C  3C 80 80 65 */	lis r4, data_80654198@ha /* 0x80654198@ha */
/* 803AF680  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803AF684  38 64 41 98 */	addi r3, r4, data_80654198@l /* 0x80654198@l */
/* 803AF688  7C 63 00 AE */	lbzx r3, r3, r0
/* 803AF68C  4E 80 00 20 */	blr 
