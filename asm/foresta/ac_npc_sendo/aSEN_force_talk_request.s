lbl_80576028:
/* 80576028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057602C  7C 08 02 A6 */	mflr r0
/* 80576030  3C A0 80 57 */	lis r5, aSEN_set_force_talk_info@ha /* 0x80575F8C@ha */
/* 80576034  7C 64 1B 78 */	mr r4, r3
/* 80576038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057603C  38 A5 5F 8C */	addi r5, r5, aSEN_set_force_talk_info@l /* 0x80575F8C@l */
/* 80576040  38 60 00 08 */	li r3, 8
/* 80576044  4B E2 41 19 */	bl mDemo_Request
/* 80576048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057604C  7C 08 03 A6 */	mtlr r0
/* 80576050  38 21 00 10 */	addi r1, r1, 0x10
/* 80576054  4E 80 00 20 */	blr 
