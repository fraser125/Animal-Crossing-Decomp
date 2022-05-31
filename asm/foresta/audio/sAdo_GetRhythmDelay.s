lbl_8062E1B8:
/* 8062E1B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E1BC  7C 08 02 A6 */	mflr r0
/* 8062E1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E1C4  4B 9E 7E 41 */	bl Na_GetRhythmDelay
/* 8062E1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E1CC  7C 08 03 A6 */	mtlr r0
/* 8062E1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E1D4  4E 80 00 20 */	blr 
