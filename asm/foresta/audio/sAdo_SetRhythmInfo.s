lbl_8062E1F8:
/* 8062E1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E1FC  7C 08 02 A6 */	mflr r0
/* 8062E200  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E204  4B 9E 80 4D */	bl Na_SetRhythmInfo
/* 8062E208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E20C  7C 08 03 A6 */	mtlr r0
/* 8062E210  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E214  4E 80 00 20 */	blr 
