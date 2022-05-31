lbl_803B9A74:
/* 803B9A74  2C 03 00 00 */	cmpwi r3, 0
/* 803B9A78  4D 80 00 20 */	bltlr 
/* 803B9A7C  2C 03 00 04 */	cmpwi r3, 4
/* 803B9A80  4C 80 00 20 */	bgelr 
/* 803B9A84  1C A3 00 0E */	mulli r5, r3, 0xe
/* 803B9A88  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9A8C  38 03 9B A0 */	addi r0, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9A90  7C 60 2A 14 */	add r3, r0, r5
/* 803B9A94  B0 83 00 60 */	sth r4, 0x60(r3)
/* 803B9A98  4E 80 00 20 */	blr 
