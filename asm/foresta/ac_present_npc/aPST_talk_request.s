lbl_80587EEC:
/* 80587EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587EF0  7C 08 02 A6 */	mflr r0
/* 80587EF4  3C A0 80 58 */	lis r5, aPST_set_talk_info@ha /* 0x80587D2C@ha */
/* 80587EF8  7C 64 1B 78 */	mr r4, r3
/* 80587EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587F00  38 A5 7D 2C */	addi r5, r5, aPST_set_talk_info@l /* 0x80587D2C@l */
/* 80587F04  38 60 00 08 */	li r3, 8
/* 80587F08  4B E1 22 55 */	bl mDemo_Request
/* 80587F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587F10  7C 08 03 A6 */	mtlr r0
/* 80587F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80587F18  4E 80 00 20 */	blr 
