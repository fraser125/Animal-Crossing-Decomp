lbl_8052A9D4:
/* 8052A9D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A9D8  7C 08 02 A6 */	mflr r0
/* 8052A9DC  3C A0 80 53 */	lis r5, aHM1_set_talk_info@ha /* 0x8052A974@ha */
/* 8052A9E0  7C 64 1B 78 */	mr r4, r3
/* 8052A9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A9E8  38 A5 A9 74 */	addi r5, r5, aHM1_set_talk_info@l /* 0x8052A974@l */
/* 8052A9EC  38 60 00 07 */	li r3, 7
/* 8052A9F0  4B E6 F7 6D */	bl mDemo_Request
/* 8052A9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A9F8  7C 08 03 A6 */	mtlr r0
/* 8052A9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AA00  4E 80 00 20 */	blr 
