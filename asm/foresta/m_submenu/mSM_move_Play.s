lbl_803EFC68:
/* 803EFC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EFC6C  7C 08 02 A6 */	mflr r0
/* 803EFC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EFC74  81 83 00 30 */	lwz r12, 0x30(r3)
/* 803EFC78  7D 89 03 A6 */	mtctr r12
/* 803EFC7C  4E 80 04 21 */	bctrl 
/* 803EFC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EFC84  7C 08 03 A6 */	mtlr r0
/* 803EFC88  38 21 00 10 */	addi r1, r1, 0x10
/* 803EFC8C  4E 80 00 20 */	blr 
