lbl_806386BC:
/* 806386BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806386C0  7C 08 02 A6 */	mflr r0
/* 806386C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806386C8  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 806386CC  28 00 00 00 */	cmplwi r0, 0
/* 806386D0  41 82 00 08 */	beq lbl_806386D8
/* 806386D4  4B FF FF A5 */	bl func_80638678
lbl_806386D8:
/* 806386D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806386DC  7C 08 03 A6 */	mtlr r0
/* 806386E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806386E4  4E 80 00 20 */	blr 
