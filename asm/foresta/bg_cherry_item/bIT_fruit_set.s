lbl_804B21FC:
/* 804B21FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B2200  7C 08 02 A6 */	mflr r0
/* 804B2204  39 20 00 00 */	li r9, 0
/* 804B2208  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B220C  39 01 00 08 */	addi r8, r1, 8
/* 804B2210  4B FF F9 E1 */	bl fruit_set
/* 804B2214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B2218  7C 08 03 A6 */	mtlr r0
/* 804B221C  38 21 00 20 */	addi r1, r1, 0x20
/* 804B2220  4E 80 00 20 */	blr 
