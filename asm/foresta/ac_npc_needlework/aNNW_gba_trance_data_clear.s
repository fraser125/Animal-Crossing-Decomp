lbl_805611F8:
/* 805611F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805611FC  7C 08 02 A6 */	mflr r0
/* 80561200  3C 60 81 1F */	lis r3, data_811EC218@ha /* 0x811EC218@ha */
/* 80561204  38 80 11 00 */	li r4, 0x1100
/* 80561208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056120C  38 63 C2 18 */	addi r3, r3, data_811EC218@l /* 0x811EC218@l */
/* 80561210  38 A0 00 00 */	li r5, 0
/* 80561214  4B E5 98 35 */	bl mem_clear
/* 80561218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056121C  7C 08 03 A6 */	mtlr r0
/* 80561220  38 21 00 10 */	addi r1, r1, 0x10
/* 80561224  4E 80 00 20 */	blr 
