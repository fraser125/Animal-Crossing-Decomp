lbl_805894CC:
/* 805894CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805894D0  7C 08 02 A6 */	mflr r0
/* 805894D4  3C A0 80 59 */	lis r5, aTS0_set_talk_info@ha /* 0x80589390@ha */
/* 805894D8  7C 64 1B 78 */	mr r4, r3
/* 805894DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805894E0  38 A5 93 90 */	addi r5, r5, aTS0_set_talk_info@l /* 0x80589390@l */
/* 805894E4  38 60 00 07 */	li r3, 7
/* 805894E8  4B E1 0C 75 */	bl mDemo_Request
/* 805894EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805894F0  7C 08 03 A6 */	mtlr r0
/* 805894F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805894F8  4E 80 00 20 */	blr 
