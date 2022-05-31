lbl_80519B3C:
/* 80519B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519B40  7C 08 02 A6 */	mflr r0
/* 80519B44  3C A0 80 52 */	lis r5, aEART_set_talk_info_talk_request@ha /* 0x80519B08@ha */
/* 80519B48  7C 64 1B 78 */	mr r4, r3
/* 80519B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519B50  38 A5 9B 08 */	addi r5, r5, aEART_set_talk_info_talk_request@l /* 0x80519B08@l */
/* 80519B54  38 60 00 07 */	li r3, 7
/* 80519B58  4B E8 06 05 */	bl mDemo_Request
/* 80519B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519B60  7C 08 03 A6 */	mtlr r0
/* 80519B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80519B68  4E 80 00 20 */	blr 
