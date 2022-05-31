lbl_8056F488:
/* 8056F488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F48C  7C 08 02 A6 */	mflr r0
/* 8056F490  3C A0 80 57 */	lis r5, aNRG_set_force_talk_info@ha /* 0x8056F3F0@ha */
/* 8056F494  7C 64 1B 78 */	mr r4, r3
/* 8056F498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F49C  38 A5 F3 F0 */	addi r5, r5, aNRG_set_force_talk_info@l /* 0x8056F3F0@l */
/* 8056F4A0  38 60 00 08 */	li r3, 8
/* 8056F4A4  4B E2 AC B9 */	bl mDemo_Request
/* 8056F4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F4AC  7C 08 03 A6 */	mtlr r0
/* 8056F4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F4B4  4E 80 00 20 */	blr 
