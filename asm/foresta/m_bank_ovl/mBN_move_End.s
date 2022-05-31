lbl_805C3D34:
/* 805C3D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C3D38  7C 08 02 A6 */	mflr r0
/* 805C3D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C3D40  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C3D44  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805C3D48  7D 89 03 A6 */	mtctr r12
/* 805C3D4C  4E 80 04 21 */	bctrl 
/* 805C3D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C3D54  7C 08 03 A6 */	mtlr r0
/* 805C3D58  38 21 00 10 */	addi r1, r1, 0x10
/* 805C3D5C  4E 80 00 20 */	blr 
