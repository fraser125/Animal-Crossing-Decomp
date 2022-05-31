lbl_8047DED0:
/* 8047DED0  2C 04 00 00 */	cmpwi r4, 0
/* 8047DED4  41 80 00 64 */	blt lbl_8047DF38
/* 8047DED8  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047DEDC  38 A5 DF E8 */	addi r5, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047DEE0  80 05 00 08 */	lwz r0, 8(r5)
/* 8047DEE4  7C 04 00 00 */	cmpw r4, r0
/* 8047DEE8  40 80 00 50 */	bge lbl_8047DF38
/* 8047DEEC  80 C5 00 00 */	lwz r6, 0(r5)
/* 8047DEF0  28 06 00 00 */	cmplwi r6, 0
/* 8047DEF4  41 82 00 44 */	beq lbl_8047DF38
/* 8047DEF8  80 A5 00 04 */	lwz r5, 4(r5)
/* 8047DEFC  28 05 00 00 */	cmplwi r5, 0
/* 8047DF00  41 82 00 38 */	beq lbl_8047DF38
/* 8047DF04  7C 05 20 AE */	lbzx r0, r5, r4
/* 8047DF08  1C 84 08 58 */	mulli r4, r4, 0x858
/* 8047DF0C  28 00 00 00 */	cmplwi r0, 0
/* 8047DF10  7C A6 22 14 */	add r5, r6, r4
/* 8047DF14  41 82 00 24 */	beq lbl_8047DF38
/* 8047DF18  80 85 00 08 */	lwz r4, 8(r5)
/* 8047DF1C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8047DF20  90 83 00 00 */	stw r4, 0(r3)
/* 8047DF24  90 03 00 04 */	stw r0, 4(r3)
/* 8047DF28  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8047DF2C  90 03 00 08 */	stw r0, 8(r3)
/* 8047DF30  38 60 00 01 */	li r3, 1
/* 8047DF34  4E 80 00 20 */	blr 
lbl_8047DF38:
/* 8047DF38  38 60 00 00 */	li r3, 0
/* 8047DF3C  4E 80 00 20 */	blr 
