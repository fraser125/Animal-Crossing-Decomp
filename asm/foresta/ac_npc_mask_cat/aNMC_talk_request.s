lbl_8055F0B4:
/* 8055F0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055F0B8  7C 08 02 A6 */	mflr r0
/* 8055F0BC  3C A0 80 56 */	lis r5, aNMC_set_talk_info@ha /* 0x8055F01C@ha */
/* 8055F0C0  7C 64 1B 78 */	mr r4, r3
/* 8055F0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055F0C8  38 A5 F0 1C */	addi r5, r5, aNMC_set_talk_info@l /* 0x8055F01C@l */
/* 8055F0CC  38 60 00 07 */	li r3, 7
/* 8055F0D0  4B E3 B0 8D */	bl mDemo_Request
/* 8055F0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055F0D8  7C 08 03 A6 */	mtlr r0
/* 8055F0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055F0E0  4E 80 00 20 */	blr 
