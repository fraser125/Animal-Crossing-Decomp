lbl_805CFEA0:
/* 805CFEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CFEA4  7C 08 02 A6 */	mflr r0
/* 805CFEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CFEAC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CFEB0  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805CFEB4  7D 89 03 A6 */	mtctr r12
/* 805CFEB8  4E 80 04 21 */	bctrl 
/* 805CFEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CFEC0  7C 08 03 A6 */	mtlr r0
/* 805CFEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 805CFEC8  4E 80 00 20 */	blr 
