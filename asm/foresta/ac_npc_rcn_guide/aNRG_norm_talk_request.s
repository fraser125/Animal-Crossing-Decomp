lbl_8056F540:
/* 8056F540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F544  7C 08 02 A6 */	mflr r0
/* 8056F548  3C A0 80 57 */	lis r5, aNRG_set_norm_talk_info@ha /* 0x8056F4B8@ha */
/* 8056F54C  7C 64 1B 78 */	mr r4, r3
/* 8056F550  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F554  38 A5 F4 B8 */	addi r5, r5, aNRG_set_norm_talk_info@l /* 0x8056F4B8@l */
/* 8056F558  38 60 00 07 */	li r3, 7
/* 8056F55C  4B E2 AC 01 */	bl mDemo_Request
/* 8056F560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F564  7C 08 03 A6 */	mtlr r0
/* 8056F568  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F56C  4E 80 00 20 */	blr 
