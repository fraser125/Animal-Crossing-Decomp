lbl_803A18FC:
/* 803A18FC  38 00 00 05 */	li r0, 5
/* 803A1900  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 803A1904  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803A1908  7C 00 20 10 */	subfc r0, r0, r4
/* 803A190C  7C 65 19 14 */	adde r3, r5, r3
/* 803A1910  4E 80 00 20 */	blr 
