lbl_8062DE84:
/* 8062DE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DE88  7C 08 02 A6 */	mflr r0
/* 8062DE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DE90  4B 9E 77 AD */	bl Na_Inst
/* 8062DE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DE98  7C 08 03 A6 */	mtlr r0
/* 8062DE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DEA0  4E 80 00 20 */	blr 
