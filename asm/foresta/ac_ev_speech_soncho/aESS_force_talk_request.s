lbl_80525EEC:
/* 80525EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525EF0  7C 08 02 A6 */	mflr r0
/* 80525EF4  3C A0 80 52 */	lis r5, aESS_set_force_talk_info@ha /* 0x80525EC0@ha */
/* 80525EF8  7C 64 1B 78 */	mr r4, r3
/* 80525EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525F00  38 A5 5E C0 */	addi r5, r5, aESS_set_force_talk_info@l /* 0x80525EC0@l */
/* 80525F04  38 60 00 0A */	li r3, 0xa
/* 80525F08  4B E7 42 55 */	bl mDemo_Request
/* 80525F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525F10  7C 08 03 A6 */	mtlr r0
/* 80525F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80525F18  4E 80 00 20 */	blr 
