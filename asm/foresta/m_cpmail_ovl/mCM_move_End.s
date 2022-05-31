lbl_805CC5D4:
/* 805CC5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC5D8  7C 08 02 A6 */	mflr r0
/* 805CC5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC5E0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CC5E4  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805CC5E8  7D 89 03 A6 */	mtctr r12
/* 805CC5EC  4E 80 04 21 */	bctrl 
/* 805CC5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC5F4  7C 08 03 A6 */	mtlr r0
/* 805CC5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC5FC  4E 80 00 20 */	blr 
