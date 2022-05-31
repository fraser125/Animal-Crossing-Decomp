lbl_803D5DB4:
/* 803D5DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5DB8  7C 08 02 A6 */	mflr r0
/* 803D5DBC  1C 84 00 1C */	mulli r4, r4, 0x1c
/* 803D5DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5DC4  4B C8 72 A5 */	bl bzero
/* 803D5DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5DCC  7C 08 03 A6 */	mtlr r0
/* 803D5DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5DD4  4E 80 00 20 */	blr 
