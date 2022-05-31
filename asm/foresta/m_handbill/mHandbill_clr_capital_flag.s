lbl_803B1920:
/* 803B1920  3C 60 81 16 */	lis r3, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B1924  38 00 00 05 */	li r0, 5
/* 803B1928  38 63 7D D8 */	addi r3, r3, mHandbill_data@l /* 0x81167DD8@l */
/* 803B192C  90 03 01 90 */	stw r0, 0x190(r3)
/* 803B1930  4E 80 00 20 */	blr 
