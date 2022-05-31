lbl_805270E8:
/* 805270E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805270EC  7C 08 02 A6 */	mflr r0
/* 805270F0  3C A0 80 52 */	lis r5, aGHN_set_talk_info@ha /* 0x80527074@ha */
/* 805270F4  7C 64 1B 78 */	mr r4, r3
/* 805270F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805270FC  38 A5 70 74 */	addi r5, r5, aGHN_set_talk_info@l /* 0x80527074@l */
/* 80527100  38 60 00 07 */	li r3, 7
/* 80527104  4B E7 30 59 */	bl mDemo_Request
/* 80527108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052710C  7C 08 03 A6 */	mtlr r0
/* 80527110  38 21 00 10 */	addi r1, r1, 0x10
/* 80527114  4E 80 00 20 */	blr 
