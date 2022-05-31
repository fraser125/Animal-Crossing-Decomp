lbl_803CF020:
/* 803CF020  7C 60 1E 70 */	srawi r0, r3, 3
/* 803CF024  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CF028  7C 00 01 94 */	addze r0, r0
/* 803CF02C  38 A0 00 01 */	li r5, 1
/* 803CF030  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CF034  3C 84 00 02 */	addis r4, r4, 2
/* 803CF038  2C 00 00 20 */	cmpwi r0, 0x20
/* 803CF03C  38 84 13 4E */	addi r4, r4, 0x134e
/* 803CF040  40 80 00 14 */	bge lbl_803CF054
/* 803CF044  7C 84 00 AE */	lbzx r4, r4, r0
/* 803CF048  54 60 07 7E */	clrlwi r0, r3, 0x1d
/* 803CF04C  7C 80 06 30 */	sraw r0, r4, r0
/* 803CF050  54 05 07 FE */	clrlwi r5, r0, 0x1f
lbl_803CF054:
/* 803CF054  7C A3 2B 78 */	mr r3, r5
/* 803CF058  4E 80 00 20 */	blr 
