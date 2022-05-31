lbl_80525E90:
/* 80525E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525E94  7C 08 02 A6 */	mflr r0
/* 80525E98  3C A0 80 52 */	lis r5, aESS_set_norm_talk_info@ha /* 0x80525DA8@ha */
/* 80525E9C  7C 64 1B 78 */	mr r4, r3
/* 80525EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525EA4  38 A5 5D A8 */	addi r5, r5, aESS_set_norm_talk_info@l /* 0x80525DA8@l */
/* 80525EA8  38 60 00 07 */	li r3, 7
/* 80525EAC  4B E7 42 B1 */	bl mDemo_Request
/* 80525EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525EB4  7C 08 03 A6 */	mtlr r0
/* 80525EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80525EBC  4E 80 00 20 */	blr 
