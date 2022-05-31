lbl_80521AF8:
/* 80521AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521AFC  7C 08 02 A6 */	mflr r0
/* 80521B00  3C A0 80 52 */	lis r5, aEKPD_set_talk_info@ha /* 0x80521AC4@ha */
/* 80521B04  7C 64 1B 78 */	mr r4, r3
/* 80521B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521B0C  38 A5 1A C4 */	addi r5, r5, aEKPD_set_talk_info@l /* 0x80521AC4@l */
/* 80521B10  38 60 00 07 */	li r3, 7
/* 80521B14  4B E7 86 49 */	bl mDemo_Request
/* 80521B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521B1C  7C 08 03 A6 */	mtlr r0
/* 80521B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80521B24  4E 80 00 20 */	blr 
