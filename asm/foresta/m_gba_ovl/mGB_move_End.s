lbl_805DC858:
/* 805DC858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC85C  7C 08 02 A6 */	mflr r0
/* 805DC860  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC864  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC868  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805DC86C  7D 89 03 A6 */	mtctr r12
/* 805DC870  4E 80 04 21 */	bctrl 
/* 805DC874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC878  7C 08 03 A6 */	mtlr r0
/* 805DC87C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC880  4E 80 00 20 */	blr 