lbl_80571288:
/* 80571288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057128C  7C 08 02 A6 */	mflr r0
/* 80571290  38 80 00 04 */	li r4, 4
/* 80571294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571298  38 00 00 06 */	li r0, 6
/* 8057129C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 805712A0  48 00 00 15 */	bl aNRG2_change_talk_proc
/* 805712A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805712A8  7C 08 03 A6 */	mtlr r0
/* 805712AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805712B0  4E 80 00 20 */	blr 
