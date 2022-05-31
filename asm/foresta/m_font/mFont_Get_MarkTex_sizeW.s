lbl_803B12C4:
/* 803B12C4  2C 03 00 00 */	cmpwi r3, 0
/* 803B12C8  41 80 00 24 */	blt lbl_803B12EC
/* 803B12CC  2C 03 00 05 */	cmpwi r3, 5
/* 803B12D0  40 80 00 1C */	bge lbl_803B12EC
/* 803B12D4  3C 80 80 65 */	lis r4, size_array_995@ha /* 0x8065432C@ha */
/* 803B12D8  54 60 10 3A */	slwi r0, r3, 2
/* 803B12DC  38 64 43 2C */	addi r3, r4, size_array_995@l /* 0x8065432C@l */
/* 803B12E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 803B12E4  2C 03 00 00 */	cmpwi r3, 0
/* 803B12E8  4C 82 00 20 */	bnelr 
lbl_803B12EC:
/* 803B12EC  38 60 00 00 */	li r3, 0
/* 803B12F0  4E 80 00 20 */	blr 
