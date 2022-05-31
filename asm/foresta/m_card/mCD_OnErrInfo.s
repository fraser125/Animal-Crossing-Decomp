lbl_803F7640:
/* 803F7640  2C 03 00 00 */	cmpwi r3, 0
/* 803F7644  4D 80 00 20 */	bltlr 
/* 803F7648  2C 03 00 07 */	cmpwi r3, 7
/* 803F764C  4C 80 00 20 */	bgelr 
/* 803F7650  3C 80 80 66 */	lis r4, l_mcd_err_debug@ha /* 0x8065E390@ha */
/* 803F7654  54 60 10 3A */	slwi r0, r3, 2
/* 803F7658  38 64 E3 90 */	addi r3, r4, l_mcd_err_debug@l /* 0x8065E390@l */
/* 803F765C  38 80 00 01 */	li r4, 1
/* 803F7660  7C 83 01 2E */	stwx r4, r3, r0
/* 803F7664  4E 80 00 20 */	blr 
