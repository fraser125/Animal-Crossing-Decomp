lbl_80483F88:
/* 80483F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483F8C  7C 08 02 A6 */	mflr r0
/* 80483F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483F94  81 83 01 78 */	lwz r12, 0x178(r3)
/* 80483F98  7D 89 03 A6 */	mtctr r12
/* 80483F9C  4E 80 04 21 */	bctrl 
/* 80483FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483FA4  7C 08 03 A6 */	mtlr r0
/* 80483FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80483FAC  4E 80 00 20 */	blr 