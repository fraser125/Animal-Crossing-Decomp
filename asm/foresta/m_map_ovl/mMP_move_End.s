lbl_805E692C:
/* 805E692C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E6930  7C 08 02 A6 */	mflr r0
/* 805E6934  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E6938  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E693C  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805E6940  7D 89 03 A6 */	mtctr r12
/* 805E6944  4E 80 04 21 */	bctrl 
/* 805E6948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E694C  7C 08 03 A6 */	mtlr r0
/* 805E6950  38 21 00 10 */	addi r1, r1, 0x10
/* 805E6954  4E 80 00 20 */	blr 
