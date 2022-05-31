lbl_80592FB4:
/* 80592FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592FB8  7C 08 02 A6 */	mflr r0
/* 80592FBC  3C A0 80 59 */	lis r5, aEMJ_set_force_talk_info@ha /* 0x80592F14@ha */
/* 80592FC0  7C 64 1B 78 */	mr r4, r3
/* 80592FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592FC8  38 A5 2F 14 */	addi r5, r5, aEMJ_set_force_talk_info@l /* 0x80592F14@l */
/* 80592FCC  38 60 00 0A */	li r3, 0xa
/* 80592FD0  4B E0 71 8D */	bl mDemo_Request
/* 80592FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592FD8  7C 08 03 A6 */	mtlr r0
/* 80592FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80592FE0  4E 80 00 20 */	blr 
