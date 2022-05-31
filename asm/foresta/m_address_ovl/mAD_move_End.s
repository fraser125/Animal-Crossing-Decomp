lbl_805C2C0C:
/* 805C2C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2C10  7C 08 02 A6 */	mflr r0
/* 805C2C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C2C18  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C2C1C  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805C2C20  7D 89 03 A6 */	mtctr r12
/* 805C2C24  4E 80 04 21 */	bctrl 
/* 805C2C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C2C2C  7C 08 03 A6 */	mtlr r0
/* 805C2C30  38 21 00 10 */	addi r1, r1, 0x10
/* 805C2C34  4E 80 00 20 */	blr 
