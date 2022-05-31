lbl_8047BBE4:
/* 8047BBE4  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047BBE8  38 E0 00 00 */	li r7, 0
/* 8047BBEC  38 83 DF E8 */	addi r4, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047BBF0  38 60 00 00 */	li r3, 0
/* 8047BBF4  80 A4 00 00 */	lwz r5, 0(r4)
/* 8047BBF8  80 C4 00 04 */	lwz r6, 4(r4)
/* 8047BBFC  48 00 00 20 */	b lbl_8047BC1C
lbl_8047BC00:
/* 8047BC00  88 06 00 00 */	lbz r0, 0(r6)
/* 8047BC04  28 00 00 00 */	cmplwi r0, 0
/* 8047BC08  41 82 00 08 */	beq lbl_8047BC10
/* 8047BC0C  B0 65 00 CC */	sth r3, 0xcc(r5)
lbl_8047BC10:
/* 8047BC10  38 A5 08 58 */	addi r5, r5, 0x858
/* 8047BC14  38 C6 00 01 */	addi r6, r6, 1
/* 8047BC18  38 E7 00 01 */	addi r7, r7, 1
lbl_8047BC1C:
/* 8047BC1C  80 04 00 08 */	lwz r0, 8(r4)
/* 8047BC20  7C 07 00 00 */	cmpw r7, r0
/* 8047BC24  41 80 FF DC */	blt lbl_8047BC00
/* 8047BC28  4E 80 00 20 */	blr 
