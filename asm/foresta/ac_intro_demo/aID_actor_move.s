lbl_8042B54C:
/* 8042B54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B550  7C 08 02 A6 */	mflr r0
/* 8042B554  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B558  81 83 01 7C */	lwz r12, 0x17c(r3)
/* 8042B55C  7D 89 03 A6 */	mtctr r12
/* 8042B560  4E 80 04 21 */	bctrl 
/* 8042B564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B568  7C 08 03 A6 */	mtlr r0
/* 8042B56C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B570  4E 80 00 20 */	blr 
