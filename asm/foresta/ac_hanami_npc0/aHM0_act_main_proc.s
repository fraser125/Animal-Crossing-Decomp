lbl_80529CA8:
/* 80529CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529CAC  7C 08 02 A6 */	mflr r0
/* 80529CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529CB4  81 83 09 98 */	lwz r12, 0x998(r3)
/* 80529CB8  7D 89 03 A6 */	mtctr r12
/* 80529CBC  4E 80 04 21 */	bctrl 
/* 80529CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529CC4  7C 08 03 A6 */	mtlr r0
/* 80529CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80529CCC  4E 80 00 20 */	blr 
