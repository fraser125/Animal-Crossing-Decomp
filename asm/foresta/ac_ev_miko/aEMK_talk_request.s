lbl_80522428:
/* 80522428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052242C  7C 08 02 A6 */	mflr r0
/* 80522430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522434  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80522438  28 00 00 00 */	cmplwi r0, 0
/* 8052243C  40 82 00 18 */	bne lbl_80522454
/* 80522440  3C A0 80 52 */	lis r5, aEMK_set_talk_info@ha /* 0x805223F4@ha */
/* 80522444  7C 64 1B 78 */	mr r4, r3
/* 80522448  38 A5 23 F4 */	addi r5, r5, aEMK_set_talk_info@l /* 0x805223F4@l */
/* 8052244C  38 60 00 07 */	li r3, 7
/* 80522450  4B E7 7D 0D */	bl mDemo_Request
lbl_80522454:
/* 80522454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522458  7C 08 03 A6 */	mtlr r0
/* 8052245C  38 21 00 10 */	addi r1, r1, 0x10
/* 80522460  4E 80 00 20 */	blr 
