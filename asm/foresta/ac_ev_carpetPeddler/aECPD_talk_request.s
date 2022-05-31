lbl_8051C8D8:
/* 8051C8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C8DC  7C 08 02 A6 */	mflr r0
/* 8051C8E0  3C A0 80 52 */	lis r5, aECPD_set_talk_info@ha /* 0x8051C8B4@ha */
/* 8051C8E4  7C 64 1B 78 */	mr r4, r3
/* 8051C8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C8EC  38 A5 C8 B4 */	addi r5, r5, aECPD_set_talk_info@l /* 0x8051C8B4@l */
/* 8051C8F0  38 60 00 07 */	li r3, 7
/* 8051C8F4  4B E7 D8 69 */	bl mDemo_Request
/* 8051C8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C8FC  7C 08 03 A6 */	mtlr r0
/* 8051C900  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C904  4E 80 00 20 */	blr 
