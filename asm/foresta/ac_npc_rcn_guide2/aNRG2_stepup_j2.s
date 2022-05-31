lbl_805705E4:
/* 805705E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805705E8  7C 08 02 A6 */	mflr r0
/* 805705EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805705F0  4B E7 35 79 */	bl mQst_GetFirstJobData
/* 805705F4  4B E7 38 59 */	bl mQst_SetFirstJobSeed
/* 805705F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805705FC  7C 08 03 A6 */	mtlr r0
/* 80570600  38 21 00 10 */	addi r1, r1, 0x10
/* 80570604  4E 80 00 20 */	blr 
