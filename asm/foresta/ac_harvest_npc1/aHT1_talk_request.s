lbl_805920FC:
/* 805920FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592100  7C 08 02 A6 */	mflr r0
/* 80592104  3C A0 80 59 */	lis r5, aHT1_set_talk_info@ha /* 0x8059209C@ha */
/* 80592108  7C 64 1B 78 */	mr r4, r3
/* 8059210C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592110  38 A5 20 9C */	addi r5, r5, aHT1_set_talk_info@l /* 0x8059209C@l */
/* 80592114  38 60 00 07 */	li r3, 7
/* 80592118  4B E0 80 45 */	bl mDemo_Request
/* 8059211C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592120  7C 08 03 A6 */	mtlr r0
/* 80592124  38 21 00 10 */	addi r1, r1, 0x10
/* 80592128  4E 80 00 20 */	blr 
