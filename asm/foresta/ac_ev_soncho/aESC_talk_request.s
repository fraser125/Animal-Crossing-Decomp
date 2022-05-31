lbl_80524578:
/* 80524578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052457C  7C 08 02 A6 */	mflr r0
/* 80524580  3C A0 80 52 */	lis r5, aESC_set_talk_info_talk_request@ha /* 0x805244B0@ha */
/* 80524584  7C 64 1B 78 */	mr r4, r3
/* 80524588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052458C  38 A5 44 B0 */	addi r5, r5, aESC_set_talk_info_talk_request@l /* 0x805244B0@l */
/* 80524590  38 60 00 07 */	li r3, 7
/* 80524594  4B E7 5B C9 */	bl mDemo_Request
/* 80524598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052459C  7C 08 03 A6 */	mtlr r0
/* 805245A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805245A4  4E 80 00 20 */	blr 
