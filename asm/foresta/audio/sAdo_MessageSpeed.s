lbl_8062DEC4:
/* 8062DEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DEC8  7C 08 02 A6 */	mflr r0
/* 8062DECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DED0  4B 9E 4F 4D */	bl Na_MessageSpeed
/* 8062DED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DED8  7C 08 03 A6 */	mtlr r0
/* 8062DEDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DEE0  4E 80 00 20 */	blr 
