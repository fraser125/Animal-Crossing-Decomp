lbl_805705BC:
/* 805705BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805705C0  7C 08 02 A6 */	mflr r0
/* 805705C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805705C8  4B E7 35 A1 */	bl mQst_GetFirstJobData
/* 805705CC  38 80 24 10 */	li r4, 0x2410
/* 805705D0  4B E7 38 15 */	bl mQst_SetFirstJobChangeCloth
/* 805705D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805705D8  7C 08 03 A6 */	mtlr r0
/* 805705DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805705E0  4E 80 00 20 */	blr 
