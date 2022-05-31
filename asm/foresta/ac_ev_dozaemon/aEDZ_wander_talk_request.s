lbl_8051EAD0:
/* 8051EAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EAD4  7C 08 02 A6 */	mflr r0
/* 8051EAD8  3C A0 80 52 */	lis r5, aEDZ_set_wander_talk_info@ha /* 0x8051EA34@ha */
/* 8051EADC  7C 64 1B 78 */	mr r4, r3
/* 8051EAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EAE4  38 A5 EA 34 */	addi r5, r5, aEDZ_set_wander_talk_info@l /* 0x8051EA34@l */
/* 8051EAE8  38 60 00 07 */	li r3, 7
/* 8051EAEC  4B E7 B6 71 */	bl mDemo_Request
/* 8051EAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EAF4  7C 08 03 A6 */	mtlr r0
/* 8051EAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EAFC  4E 80 00 20 */	blr 
