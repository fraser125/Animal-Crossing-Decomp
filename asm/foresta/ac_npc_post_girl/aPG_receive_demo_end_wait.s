lbl_8056CA70:
/* 8056CA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CA74  7C 08 02 A6 */	mflr r0
/* 8056CA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CA7C  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8056CA80  28 00 00 05 */	cmplwi r0, 5
/* 8056CA84  40 82 00 20 */	bne lbl_8056CAA4
/* 8056CA88  80 C3 09 AC */	lwz r6, 0x9ac(r3)
/* 8056CA8C  38 00 00 01 */	li r0, 1
/* 8056CA90  38 A0 00 02 */	li r5, 2
/* 8056CA94  98 06 01 75 */	stb r0, 0x175(r6)
/* 8056CA98  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 8056CA9C  7D 89 03 A6 */	mtctr r12
/* 8056CAA0  4E 80 04 21 */	bctrl 
lbl_8056CAA4:
/* 8056CAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CAA8  7C 08 03 A6 */	mtlr r0
/* 8056CAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CAB0  4E 80 00 20 */	blr 
