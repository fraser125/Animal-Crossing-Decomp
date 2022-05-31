lbl_8052AE68:
/* 8052AE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AE6C  7C 08 02 A6 */	mflr r0
/* 8052AE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AE74  88 03 09 A7 */	lbz r0, 0x9a7(r3)
/* 8052AE78  28 00 00 00 */	cmplwi r0, 0
/* 8052AE7C  40 82 00 1C */	bne lbl_8052AE98
/* 8052AE80  3C A0 80 53 */	lis r5, aHN0_set_force_talk_info@ha /* 0x8052AE24@ha */
/* 8052AE84  7C 64 1B 78 */	mr r4, r3
/* 8052AE88  38 A5 AE 24 */	addi r5, r5, aHN0_set_force_talk_info@l /* 0x8052AE24@l */
/* 8052AE8C  38 60 00 08 */	li r3, 8
/* 8052AE90  4B E6 F2 CD */	bl mDemo_Request
/* 8052AE94  48 00 00 0C */	b lbl_8052AEA0
lbl_8052AE98:
/* 8052AE98  38 00 00 00 */	li r0, 0
/* 8052AE9C  98 03 09 A7 */	stb r0, 0x9a7(r3)
lbl_8052AEA0:
/* 8052AEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AEA4  7C 08 03 A6 */	mtlr r0
/* 8052AEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AEAC  4E 80 00 20 */	blr 
