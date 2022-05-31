lbl_805232C0:
/* 805232C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805232C4  7C 08 02 A6 */	mflr r0
/* 805232C8  3C A0 80 52 */	lis r5, aEPK_set_talk_info@ha /* 0x805231F8@ha */
/* 805232CC  7C 64 1B 78 */	mr r4, r3
/* 805232D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805232D4  38 A5 31 F8 */	addi r5, r5, aEPK_set_talk_info@l /* 0x805231F8@l */
/* 805232D8  38 60 00 07 */	li r3, 7
/* 805232DC  4B E7 6E 81 */	bl mDemo_Request
/* 805232E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805232E4  7C 08 03 A6 */	mtlr r0
/* 805232E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805232EC  4E 80 00 20 */	blr 
