lbl_804DFAA0:
/* 804DFAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFAA4  7C 08 02 A6 */	mflr r0
/* 804DFAA8  38 60 04 0E */	li r3, 0x40e
/* 804DFAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFAB0  48 14 E2 55 */	bl sAdo_SysTrgStart
/* 804DFAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFAB8  7C 08 03 A6 */	mtlr r0
/* 804DFABC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFAC0  4E 80 00 20 */	blr 
