lbl_8051D640:
/* 8051D640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D644  7C 08 02 A6 */	mflr r0
/* 8051D648  3C A0 80 52 */	lis r5, aEDSN_set_force_talk_info@ha /* 0x8051D5B0@ha */
/* 8051D64C  7C 64 1B 78 */	mr r4, r3
/* 8051D650  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D654  38 A5 D5 B0 */	addi r5, r5, aEDSN_set_force_talk_info@l /* 0x8051D5B0@l */
/* 8051D658  38 60 00 08 */	li r3, 8
/* 8051D65C  4B E7 CB 01 */	bl mDemo_Request
/* 8051D660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D664  7C 08 03 A6 */	mtlr r0
/* 8051D668  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D66C  4E 80 00 20 */	blr 
