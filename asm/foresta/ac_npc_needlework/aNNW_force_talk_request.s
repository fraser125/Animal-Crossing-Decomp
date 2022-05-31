lbl_805646D0:
/* 805646D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805646D4  7C 08 02 A6 */	mflr r0
/* 805646D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805646DC  88 03 09 B3 */	lbz r0, 0x9b3(r3)
/* 805646E0  28 00 00 00 */	cmplwi r0, 0
/* 805646E4  40 82 00 1C */	bne lbl_80564700
/* 805646E8  3C A0 80 56 */	lis r5, aNNW_set_force_talk_info@ha /* 0x805644CC@ha */
/* 805646EC  7C 64 1B 78 */	mr r4, r3
/* 805646F0  38 A5 44 CC */	addi r5, r5, aNNW_set_force_talk_info@l /* 0x805644CC@l */
/* 805646F4  38 60 00 08 */	li r3, 8
/* 805646F8  4B E3 5A 65 */	bl mDemo_Request
/* 805646FC  48 00 00 0C */	b lbl_80564708
lbl_80564700:
/* 80564700  38 00 00 00 */	li r0, 0
/* 80564704  98 03 09 B3 */	stb r0, 0x9b3(r3)
lbl_80564708:
/* 80564708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056470C  7C 08 03 A6 */	mtlr r0
/* 80564710  38 21 00 10 */	addi r1, r1, 0x10
/* 80564714  4E 80 00 20 */	blr 
