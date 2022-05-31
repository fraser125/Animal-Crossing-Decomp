lbl_805331F4:
/* 805331F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805331F8  7C 08 02 A6 */	mflr r0
/* 805331FC  3C A0 80 6A */	lis r5, act_idx_2822@ha /* 0x806A25CC@ha */
/* 80533200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533204  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80533208  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 8053320C  38 85 25 CC */	addi r4, r5, act_idx_2822@l /* 0x806A25CC@l */
/* 80533210  7C 84 00 AE */	lbzx r4, r4, r0
/* 80533214  4B FF CB 19 */	bl aNPC_setupAction
/* 80533218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053321C  7C 08 03 A6 */	mtlr r0
/* 80533220  38 21 00 10 */	addi r1, r1, 0x10
/* 80533224  4E 80 00 20 */	blr 
