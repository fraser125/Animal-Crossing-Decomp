lbl_803B3524:
/* 803B3524  28 03 00 00 */	cmplwi r3, 0
/* 803B3528  4D 82 00 20 */	beqlr 
/* 803B352C  38 A0 00 0D */	li r5, 0xd
/* 803B3530  38 80 18 14 */	li r4, 0x1814
/* 803B3534  98 A3 08 A8 */	stb r5, 0x8a8(r3)
/* 803B3538  38 00 18 18 */	li r0, 0x1818
/* 803B353C  98 A3 08 A9 */	stb r5, 0x8a9(r3)
/* 803B3540  B0 83 00 6E */	sth r4, 0x6e(r3)
/* 803B3544  B0 03 00 74 */	sth r0, 0x74(r3)
/* 803B3548  B0 83 00 CE */	sth r4, 0xce(r3)
/* 803B354C  B0 03 00 D4 */	sth r0, 0xd4(r3)
/* 803B3550  4E 80 00 20 */	blr 
