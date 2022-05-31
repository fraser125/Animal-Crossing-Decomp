lbl_8062DEE4:
/* 8062DEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DEE8  7C 08 02 A6 */	mflr r0
/* 8062DEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DEF0  4B 9E 4F 35 */	bl Na_MessageSpeedGet
/* 8062DEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DEF8  7C 08 03 A6 */	mtlr r0
/* 8062DEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DF00  4E 80 00 20 */	blr 
