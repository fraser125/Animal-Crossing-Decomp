lbl_803D9D7C:
/* 803D9D7C  2C 03 00 37 */	cmpwi r3, 0x37
/* 803D9D80  38 00 00 00 */	li r0, 0
/* 803D9D84  41 80 00 10 */	blt lbl_803D9D94
/* 803D9D88  2C 03 00 3F */	cmpwi r3, 0x3f
/* 803D9D8C  40 80 00 08 */	bge lbl_803D9D94
/* 803D9D90  38 00 00 01 */	li r0, 1
lbl_803D9D94:
/* 803D9D94  20 80 00 00 */	subfic r4, r0, 0
/* 803D9D98  38 03 FF C9 */	addi r0, r3, -55
/* 803D9D9C  7C 64 21 10 */	subfe r3, r4, r4
/* 803D9DA0  7C 03 18 38 */	and r3, r0, r3
/* 803D9DA4  4E 80 00 20 */	blr 
