lbl_803BEADC:
/* 803BEADC  2C 03 00 00 */	cmpwi r3, 0
/* 803BEAE0  41 80 00 0C */	blt lbl_803BEAEC
/* 803BEAE4  2C 03 00 20 */	cmpwi r3, 0x20
/* 803BEAE8  41 80 00 08 */	blt lbl_803BEAF0
lbl_803BEAEC:
/* 803BEAEC  38 60 00 00 */	li r3, 0
lbl_803BEAF0:
/* 803BEAF0  3C 80 80 65 */	lis r4, sp_npc_code_table@ha /* 0x80657094@ha */
/* 803BEAF4  54 60 08 3C */	slwi r0, r3, 1
/* 803BEAF8  38 64 70 94 */	addi r3, r4, sp_npc_code_table@l /* 0x80657094@l */
/* 803BEAFC  7C 63 02 2E */	lhzx r3, r3, r0
/* 803BEB00  4E 80 00 20 */	blr 
