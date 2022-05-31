lbl_80473DB8:
/* 80473DB8  28 04 00 00 */	cmplwi r4, 0
/* 80473DBC  41 82 00 5C */	beq lbl_80473E18
/* 80473DC0  80 C4 05 00 */	lwz r6, 0x500(r4)
/* 80473DC4  2C 06 FF FF */	cmpwi r6, -1
/* 80473DC8  41 82 00 50 */	beq lbl_80473E18
/* 80473DCC  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80473DD0  80 04 05 18 */	lwz r0, 0x518(r4)
/* 80473DD4  80 E3 00 04 */	lwz r7, 4(r3)
/* 80473DD8  38 A5 DF E8 */	addi r5, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80473DDC  1C 66 08 58 */	mulli r3, r6, 0x858
/* 80473DE0  80 A5 00 00 */	lwz r5, 0(r5)
/* 80473DE4  7C 00 38 00 */	cmpw r0, r7
/* 80473DE8  7C 65 1A 14 */	add r3, r5, r3
/* 80473DEC  4D 82 00 20 */	beqlr 
/* 80473DF0  80 04 05 3C */	lwz r0, 0x53c(r4)
/* 80473DF4  7C 00 38 00 */	cmpw r0, r7
/* 80473DF8  4D 82 00 20 */	beqlr 
/* 80473DFC  80 04 05 60 */	lwz r0, 0x560(r4)
/* 80473E00  7C 00 38 00 */	cmpw r0, r7
/* 80473E04  4D 82 00 20 */	beqlr 
/* 80473E08  80 04 05 84 */	lwz r0, 0x584(r4)
/* 80473E0C  7C 00 38 00 */	cmpw r0, r7
/* 80473E10  40 82 00 08 */	bne lbl_80473E18
/* 80473E14  4E 80 00 20 */	blr 
lbl_80473E18:
/* 80473E18  38 60 00 00 */	li r3, 0
/* 80473E1C  4E 80 00 20 */	blr 
