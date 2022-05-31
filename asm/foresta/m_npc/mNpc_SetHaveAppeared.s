lbl_803CEFD0:
/* 803CEFD0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803CEFD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEFD8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CEFDC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803CEFE0  3C A4 00 02 */	addis r5, r4, 2
/* 803CEFE4  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CEFE8  38 A5 13 4E */	addi r5, r5, 0x134e
/* 803CEFEC  4C 82 00 20 */	bnelr 
/* 803CEFF0  54 63 05 3E */	clrlwi r3, r3, 0x14
/* 803CEFF4  7C 60 1E 70 */	srawi r0, r3, 3
/* 803CEFF8  7C C0 01 94 */	addze r6, r0
/* 803CEFFC  2C 06 00 20 */	cmpwi r6, 0x20
/* 803CF000  4C 80 00 20 */	bgelr 
/* 803CF004  54 64 07 7E */	clrlwi r4, r3, 0x1d
/* 803CF008  38 00 00 01 */	li r0, 1
/* 803CF00C  7C 65 30 AE */	lbzx r3, r5, r6
/* 803CF010  7C 00 20 30 */	slw r0, r0, r4
/* 803CF014  7C 60 03 78 */	or r0, r3, r0
/* 803CF018  7C 05 31 AE */	stbx r0, r5, r6
/* 803CF01C  4E 80 00 20 */	blr 
