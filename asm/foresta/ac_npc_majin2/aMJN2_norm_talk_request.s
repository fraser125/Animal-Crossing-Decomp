lbl_80557650:
/* 80557650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557654  7C 08 02 A6 */	mflr r0
/* 80557658  3C A0 80 55 */	lis r5, aMJN2_set_norm_talk_info@ha /* 0x805575DC@ha */
/* 8055765C  7C 64 1B 78 */	mr r4, r3
/* 80557660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557664  38 A5 75 DC */	addi r5, r5, aMJN2_set_norm_talk_info@l /* 0x805575DC@l */
/* 80557668  38 60 00 07 */	li r3, 7
/* 8055766C  4B E4 2A F1 */	bl mDemo_Request
/* 80557670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80557674  7C 08 03 A6 */	mtlr r0
/* 80557678  38 21 00 10 */	addi r1, r1, 0x10
/* 8055767C  4E 80 00 20 */	blr 
