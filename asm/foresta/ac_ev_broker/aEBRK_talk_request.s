lbl_8051A698:
/* 8051A698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A69C  7C 08 02 A6 */	mflr r0
/* 8051A6A0  3C A0 80 52 */	lis r5, aEBRK_set_talk_info_talk_request@ha /* 0x8051A5BC@ha */
/* 8051A6A4  7C 64 1B 78 */	mr r4, r3
/* 8051A6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A6AC  38 A5 A5 BC */	addi r5, r5, aEBRK_set_talk_info_talk_request@l /* 0x8051A5BC@l */
/* 8051A6B0  38 60 00 07 */	li r3, 7
/* 8051A6B4  4B E7 FA A9 */	bl mDemo_Request
/* 8051A6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A6BC  7C 08 03 A6 */	mtlr r0
/* 8051A6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A6C4  4E 80 00 20 */	blr 
