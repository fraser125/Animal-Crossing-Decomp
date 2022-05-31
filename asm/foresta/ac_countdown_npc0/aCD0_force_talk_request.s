lbl_80516D3C:
/* 80516D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516D40  7C 08 02 A6 */	mflr r0
/* 80516D44  3C A0 80 51 */	lis r5, aCD0_set_force_talk_info@ha /* 0x80516CC4@ha */
/* 80516D48  7C 64 1B 78 */	mr r4, r3
/* 80516D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516D50  38 A5 6C C4 */	addi r5, r5, aCD0_set_force_talk_info@l /* 0x80516CC4@l */
/* 80516D54  38 60 00 08 */	li r3, 8
/* 80516D58  4B E8 34 05 */	bl mDemo_Request
/* 80516D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516D60  7C 08 03 A6 */	mtlr r0
/* 80516D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80516D68  4E 80 00 20 */	blr 
