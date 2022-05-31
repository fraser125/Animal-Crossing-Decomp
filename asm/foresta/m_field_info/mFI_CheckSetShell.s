lbl_803AA468:
/* 803AA468  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AA46C  38 80 00 0A */	li r4, 0xa
/* 803AA470  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803AA474  38 60 00 00 */	li r3, 0
/* 803AA478  3C A5 00 02 */	addis r5, r5, 2
/* 803AA47C  88 A5 61 21 */	lbz r5, 0x6121(r5)
/* 803AA480  7C 05 23 D6 */	divw r0, r5, r4
/* 803AA484  7C 00 21 D6 */	mullw r0, r0, r4
/* 803AA488  7C 00 28 51 */	subf. r0, r0, r5
/* 803AA48C  4C 82 00 20 */	bnelr 
/* 803AA490  38 60 00 01 */	li r3, 1
/* 803AA494  4E 80 00 20 */	blr 
