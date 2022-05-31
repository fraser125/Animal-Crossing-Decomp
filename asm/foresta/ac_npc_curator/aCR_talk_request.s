lbl_8054CD14:
/* 8054CD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CD18  7C 08 02 A6 */	mflr r0
/* 8054CD1C  3C A0 80 55 */	lis r5, aCR_set_talk_info@ha /* 0x8054CBC8@ha */
/* 8054CD20  7C 64 1B 78 */	mr r4, r3
/* 8054CD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CD28  38 A5 CB C8 */	addi r5, r5, aCR_set_talk_info@l /* 0x8054CBC8@l */
/* 8054CD2C  38 60 00 07 */	li r3, 7
/* 8054CD30  4B E4 D4 2D */	bl mDemo_Request
/* 8054CD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CD38  7C 08 03 A6 */	mtlr r0
/* 8054CD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CD40  4E 80 00 20 */	blr 
