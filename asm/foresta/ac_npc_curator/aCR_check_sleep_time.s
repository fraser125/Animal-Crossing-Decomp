lbl_8054B1B4:
/* 8054B1B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054B1B8  38 60 00 00 */	li r3, 0
/* 8054B1BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054B1C0  3C 84 00 02 */	addis r4, r4, 2
/* 8054B1C4  80 A4 61 1C */	lwz r5, 0x611c(r4)
/* 8054B1C8  2C 05 54 60 */	cmpwi r5, 0x5460
/* 8054B1CC  4D 80 00 20 */	bltlr 
/* 8054B1D0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 8054B1D4  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 8054B1D8  7C 05 00 00 */	cmpw r5, r0
/* 8054B1DC  4C 80 00 20 */	bgelr 
/* 8054B1E0  38 60 00 01 */	li r3, 1
/* 8054B1E4  4E 80 00 20 */	blr 
