lbl_8062E0B8:
/* 8062E0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E0BC  7C 08 02 A6 */	mflr r0
/* 8062E0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E0C4  4B 9E 7C 15 */	bl Na_RhythmStart
/* 8062E0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E0CC  7C 08 03 A6 */	mtlr r0
/* 8062E0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E0D4  4E 80 00 20 */	blr 
