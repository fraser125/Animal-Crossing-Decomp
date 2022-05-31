lbl_803B1294:
/* 803B1294  2C 03 00 00 */	cmpwi r3, 0
/* 803B1298  41 80 00 24 */	blt lbl_803B12BC
/* 803B129C  2C 03 00 05 */	cmpwi r3, 5
/* 803B12A0  40 80 00 1C */	bge lbl_803B12BC
/* 803B12A4  3C 80 80 65 */	lis r4, tex_p_array@ha /* 0x80654318@ha */
/* 803B12A8  54 60 10 3A */	slwi r0, r3, 2
/* 803B12AC  38 64 43 18 */	addi r3, r4, tex_p_array@l /* 0x80654318@l */
/* 803B12B0  7C 63 00 2E */	lwzx r3, r3, r0
/* 803B12B4  28 03 00 00 */	cmplwi r3, 0
/* 803B12B8  4C 82 00 20 */	bnelr 
lbl_803B12BC:
/* 803B12BC  38 60 00 00 */	li r3, 0
/* 803B12C0  4E 80 00 20 */	blr 
