lbl_805B8DB4:
/* 805B8DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8DB8  7C 08 02 A6 */	mflr r0
/* 805B8DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8DC0  81 83 02 A0 */	lwz r12, 0x2a0(r3)
/* 805B8DC4  7D 89 03 A6 */	mtctr r12
/* 805B8DC8  4E 80 04 21 */	bctrl 
/* 805B8DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B8DD0  7C 08 03 A6 */	mtlr r0
/* 805B8DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8DD8  4E 80 00 20 */	blr 
