lbl_803C73D8:
/* 803C73D8  2C 03 00 00 */	cmpwi r3, 0
/* 803C73DC  38 00 00 00 */	li r0, 0
/* 803C73E0  41 80 00 10 */	blt lbl_803C73F0
/* 803C73E4  2C 03 00 19 */	cmpwi r3, 0x19
/* 803C73E8  40 80 00 08 */	bge lbl_803C73F0
/* 803C73EC  38 00 00 01 */	li r0, 1
lbl_803C73F0:
/* 803C73F0  2C 00 00 00 */	cmpwi r0, 0
/* 803C73F4  41 82 00 2C */	beq lbl_803C7420
/* 803C73F8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803C73FC  7C 64 0E 70 */	srawi r4, r3, 1
/* 803C7400  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803C7404  54 60 17 7A */	rlwinm r0, r3, 2, 0x1d, 0x1d
/* 803C7408  3C 65 00 02 */	addis r3, r5, 2
/* 803C740C  7C 63 22 14 */	add r3, r3, r4
/* 803C7410  88 63 13 A8 */	lbz r3, 0x13a8(r3)
/* 803C7414  7C 60 06 30 */	sraw r0, r3, r0
/* 803C7418  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 803C741C  4E 80 00 20 */	blr 
lbl_803C7420:
/* 803C7420  38 60 00 00 */	li r3, 0
/* 803C7424  4E 80 00 20 */	blr 
