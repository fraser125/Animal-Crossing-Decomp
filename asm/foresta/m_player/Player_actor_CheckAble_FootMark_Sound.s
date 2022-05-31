lbl_804DB2C4:
/* 804DB2C4  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804DB2C8  2C 00 00 00 */	cmpwi r0, 0
/* 804DB2CC  41 80 00 1C */	blt lbl_804DB2E8
/* 804DB2D0  2C 00 00 9D */	cmpwi r0, 0x9d
/* 804DB2D4  40 80 00 14 */	bge lbl_804DB2E8
/* 804DB2D8  3C 60 80 64 */	lis r3, data_3547@ha /* 0x806479A4@ha */
/* 804DB2DC  38 63 79 A4 */	addi r3, r3, data_3547@l /* 0x806479A4@l */
/* 804DB2E0  7C 63 00 AE */	lbzx r3, r3, r0
/* 804DB2E4  4E 80 00 20 */	blr 
lbl_804DB2E8:
/* 804DB2E8  38 60 00 00 */	li r3, 0
/* 804DB2EC  4E 80 00 20 */	blr 
