lbl_80600AD0:
/* 80600AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80600AD4  7C 08 02 A6 */	mflr r0
/* 80600AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80600ADC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80600AE0  81 85 09 48 */	lwz r12, 0x948(r5)
/* 80600AE4  7D 89 03 A6 */	mtctr r12
/* 80600AE8  4E 80 04 21 */	bctrl 
/* 80600AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80600AF0  7C 08 03 A6 */	mtlr r0
/* 80600AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80600AF8  4E 80 00 20 */	blr 