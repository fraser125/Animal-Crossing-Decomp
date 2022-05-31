lbl_8062DCE4:
/* 8062DCE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DCE8  7C 08 02 A6 */	mflr r0
/* 8062DCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DCF0  4B 9E 34 B1 */	bl Na_BgmStop
/* 8062DCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DCF8  7C 08 03 A6 */	mtlr r0
/* 8062DCFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DD00  4E 80 00 20 */	blr 
