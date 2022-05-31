lbl_80591A1C:
/* 80591A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591A20  7C 08 02 A6 */	mflr r0
/* 80591A24  3C A0 80 59 */	lis r5, aHT0_set_talk_info@ha /* 0x805919B0@ha */
/* 80591A28  7C 64 1B 78 */	mr r4, r3
/* 80591A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591A30  38 A5 19 B0 */	addi r5, r5, aHT0_set_talk_info@l /* 0x805919B0@l */
/* 80591A34  38 60 00 07 */	li r3, 7
/* 80591A38  4B E0 87 25 */	bl mDemo_Request
/* 80591A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591A40  7C 08 03 A6 */	mtlr r0
/* 80591A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80591A48  4E 80 00 20 */	blr 
