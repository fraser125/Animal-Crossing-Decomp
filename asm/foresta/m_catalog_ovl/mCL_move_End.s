lbl_805C9FEC:
/* 805C9FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C9FF0  7C 08 02 A6 */	mflr r0
/* 805C9FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C9FF8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C9FFC  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805CA000  7D 89 03 A6 */	mtctr r12
/* 805CA004  4E 80 04 21 */	bctrl 
/* 805CA008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA00C  7C 08 03 A6 */	mtlr r0
/* 805CA010  38 21 00 10 */	addi r1, r1, 0x10
/* 805CA014  4E 80 00 20 */	blr 
