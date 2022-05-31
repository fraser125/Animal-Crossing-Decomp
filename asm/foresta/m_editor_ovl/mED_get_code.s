lbl_805D83F8:
/* 805D83F8  88 03 00 07 */	lbz r0, 7(r3)
/* 805D83FC  3C E0 80 6D */	lis r7, data_table@ha /* 0x806CCAF8@ha */
/* 805D8400  88 C3 00 06 */	lbz r6, 6(r3)
/* 805D8404  38 E7 CA F8 */	addi r7, r7, data_table@l /* 0x806CCAF8@l */
/* 805D8408  54 08 18 38 */	slwi r8, r0, 3
/* 805D840C  88 03 00 05 */	lbz r0, 5(r3)
/* 805D8410  7C E7 42 14 */	add r7, r7, r8
/* 805D8414  54 C3 10 3A */	slwi r3, r6, 2
/* 805D8418  7C C7 18 2E */	lwzx r6, r7, r3
/* 805D841C  54 03 10 3A */	slwi r3, r0, 2
/* 805D8420  1C 05 00 0A */	mulli r0, r5, 0xa
/* 805D8424  7C 66 18 2E */	lwzx r3, r6, r3
/* 805D8428  7C 00 1A 14 */	add r0, r0, r3
/* 805D842C  7C 64 00 AE */	lbzx r3, r4, r0
/* 805D8430  4E 80 00 20 */	blr 
