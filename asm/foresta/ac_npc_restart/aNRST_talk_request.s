lbl_80572E70:
/* 80572E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80572E74  7C 08 02 A6 */	mflr r0
/* 80572E78  3C A0 80 57 */	lis r5, aNRST_set_talk_info_talk_request@ha /* 0x80572E3C@ha */
/* 80572E7C  7C 64 1B 78 */	mr r4, r3
/* 80572E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80572E84  38 A5 2E 3C */	addi r5, r5, aNRST_set_talk_info_talk_request@l /* 0x80572E3C@l */
/* 80572E88  38 60 00 08 */	li r3, 8
/* 80572E8C  4B E2 72 D1 */	bl mDemo_Request
/* 80572E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80572E94  7C 08 03 A6 */	mtlr r0
/* 80572E98  38 21 00 10 */	addi r1, r1, 0x10
/* 80572E9C  4E 80 00 20 */	blr 
