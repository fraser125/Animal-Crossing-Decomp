lbl_80473FCC:
/* 80473FCC  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80473FD0  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80473FD4  38 C4 DF E8 */	addi r6, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80473FD8  39 20 00 00 */	li r9, 0
/* 80473FDC  80 E6 00 00 */	lwz r7, 0(r6)
/* 80473FE0  38 80 00 00 */	li r4, 0
/* 80473FE4  81 06 00 04 */	lwz r8, 4(r6)
/* 80473FE8  38 60 00 01 */	li r3, 1
/* 80473FEC  48 00 00 30 */	b lbl_8047401C
lbl_80473FF0:
/* 80473FF0  88 08 00 00 */	lbz r0, 0(r8)
/* 80473FF4  28 00 00 00 */	cmplwi r0, 0
/* 80473FF8  41 82 00 18 */	beq lbl_80474010
/* 80473FFC  A0 07 00 00 */	lhz r0, 0(r7)
/* 80474000  7C 00 28 40 */	cmplw r0, r5
/* 80474004  40 82 00 0C */	bne lbl_80474010
/* 80474008  98 87 01 2C */	stb r4, 0x12c(r7)
/* 8047400C  98 67 01 2D */	stb r3, 0x12d(r7)
lbl_80474010:
/* 80474010  38 E7 08 58 */	addi r7, r7, 0x858
/* 80474014  39 08 00 01 */	addi r8, r8, 1
/* 80474018  39 29 00 01 */	addi r9, r9, 1
lbl_8047401C:
/* 8047401C  80 06 00 08 */	lwz r0, 8(r6)
/* 80474020  7C 09 00 00 */	cmpw r9, r0
/* 80474024  41 80 FF CC */	blt lbl_80473FF0
/* 80474028  4E 80 00 20 */	blr 
