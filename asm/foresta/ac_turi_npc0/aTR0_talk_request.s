lbl_805907C0:
/* 805907C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805907C4  7C 08 02 A6 */	mflr r0
/* 805907C8  3C A0 80 59 */	lis r5, aTR0_set_talk_info@ha /* 0x805906E4@ha */
/* 805907CC  7C 64 1B 78 */	mr r4, r3
/* 805907D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805907D4  38 A5 06 E4 */	addi r5, r5, aTR0_set_talk_info@l /* 0x805906E4@l */
/* 805907D8  38 60 00 07 */	li r3, 7
/* 805907DC  4B E0 99 81 */	bl mDemo_Request
/* 805907E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805907E4  7C 08 03 A6 */	mtlr r0
/* 805907E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805907EC  4E 80 00 20 */	blr 
