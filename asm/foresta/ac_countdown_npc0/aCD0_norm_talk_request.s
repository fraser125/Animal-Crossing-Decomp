lbl_80516E08:
/* 80516E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516E0C  7C 08 02 A6 */	mflr r0
/* 80516E10  3C A0 80 51 */	lis r5, aCD0_set_norm_talk_info@ha /* 0x80516D6C@ha */
/* 80516E14  7C 64 1B 78 */	mr r4, r3
/* 80516E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516E1C  38 A5 6D 6C */	addi r5, r5, aCD0_set_norm_talk_info@l /* 0x80516D6C@l */
/* 80516E20  38 60 00 07 */	li r3, 7
/* 80516E24  4B E8 33 39 */	bl mDemo_Request
/* 80516E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516E2C  7C 08 03 A6 */	mtlr r0
/* 80516E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80516E34  4E 80 00 20 */	blr 
