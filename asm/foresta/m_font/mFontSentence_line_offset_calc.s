lbl_803B0BD4:
/* 803B0BD4  3C 80 80 65 */	lis r4, offset_value@ha /* 0x80654304@ha */
/* 803B0BD8  54 60 10 3A */	slwi r0, r3, 2
/* 803B0BDC  38 64 43 04 */	addi r3, r4, offset_value@l /* 0x80654304@l */
/* 803B0BE0  7C 23 04 2E */	lfsx f1, r3, r0
/* 803B0BE4  4E 80 00 20 */	blr 
