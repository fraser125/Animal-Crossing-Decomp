lbl_8047CFC8:
/* 8047CFC8  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047CFCC  38 A3 DF E8 */	addi r5, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047CFD0  80 C5 00 00 */	lwz r6, 0(r5)
/* 8047CFD4  28 06 00 00 */	cmplwi r6, 0
/* 8047CFD8  4D 82 00 20 */	beqlr 
/* 8047CFDC  80 05 00 04 */	lwz r0, 4(r5)
/* 8047CFE0  28 00 00 00 */	cmplwi r0, 0
/* 8047CFE4  4D 82 00 20 */	beqlr 
/* 8047CFE8  38 60 00 00 */	li r3, 0
/* 8047CFEC  38 E0 00 00 */	li r7, 0
/* 8047CFF0  7C 64 1B 78 */	mr r4, r3
/* 8047CFF4  48 00 00 14 */	b lbl_8047D008
lbl_8047CFF8:
/* 8047CFF8  38 03 01 2D */	addi r0, r3, 0x12d
/* 8047CFFC  38 63 08 58 */	addi r3, r3, 0x858
/* 8047D000  7C 86 01 AE */	stbx r4, r6, r0
/* 8047D004  38 E7 00 01 */	addi r7, r7, 1
lbl_8047D008:
/* 8047D008  80 05 00 08 */	lwz r0, 8(r5)
/* 8047D00C  7C 07 00 00 */	cmpw r7, r0
/* 8047D010  41 80 FF E8 */	blt lbl_8047CFF8
/* 8047D014  4E 80 00 20 */	blr 
