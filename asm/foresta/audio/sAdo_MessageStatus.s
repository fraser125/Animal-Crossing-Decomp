lbl_8062DEA4:
/* 8062DEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DEA8  7C 08 02 A6 */	mflr r0
/* 8062DEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DEB0  4B 9E 4F 55 */	bl Na_MessageStatus
/* 8062DEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DEB8  7C 08 03 A6 */	mtlr r0
/* 8062DEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DEC0  4E 80 00 20 */	blr 
