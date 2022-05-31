lbl_803C74C8:
/* 803C74C8  2C 03 00 00 */	cmpwi r3, 0
/* 803C74CC  38 00 00 00 */	li r0, 0
/* 803C74D0  41 80 00 10 */	blt lbl_803C74E0
/* 803C74D4  2C 03 00 28 */	cmpwi r3, 0x28
/* 803C74D8  40 80 00 08 */	bge lbl_803C74E0
/* 803C74DC  38 00 00 01 */	li r0, 1
lbl_803C74E0:
/* 803C74E0  2C 00 00 00 */	cmpwi r0, 0
/* 803C74E4  41 82 00 2C */	beq lbl_803C7510
/* 803C74E8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803C74EC  7C 64 0E 70 */	srawi r4, r3, 1
/* 803C74F0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803C74F4  54 60 17 7A */	rlwinm r0, r3, 2, 0x1d, 0x1d
/* 803C74F8  3C 65 00 02 */	addis r3, r5, 2
/* 803C74FC  7C 63 22 14 */	add r3, r3, r4
/* 803C7500  88 63 13 BD */	lbz r3, 0x13bd(r3)
/* 803C7504  7C 60 06 30 */	sraw r0, r3, r0
/* 803C7508  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 803C750C  4E 80 00 20 */	blr 
lbl_803C7510:
/* 803C7510  38 60 00 00 */	li r3, 0
/* 803C7514  4E 80 00 20 */	blr 
