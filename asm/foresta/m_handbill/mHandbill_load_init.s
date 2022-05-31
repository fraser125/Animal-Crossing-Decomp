lbl_803B1934:
/* 803B1934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1938  7C 08 02 A6 */	mflr r0
/* 803B193C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1940  4B FF FF CD */	bl mHandbill_clr_force_art
/* 803B1944  4B FF FF DD */	bl mHandbill_clr_capital_flag
/* 803B1948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B194C  7C 08 03 A6 */	mtlr r0
/* 803B1950  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1954  4E 80 00 20 */	blr 
