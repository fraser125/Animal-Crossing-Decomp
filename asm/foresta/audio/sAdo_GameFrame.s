lbl_8062DCA4:
/* 8062DCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DCA8  7C 08 02 A6 */	mflr r0
/* 8062DCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DCB0  4B 9E 30 6D */	bl Na_GameFrame
/* 8062DCB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DCB8  7C 08 03 A6 */	mtlr r0
/* 8062DCBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DCC0  4E 80 00 20 */	blr 
