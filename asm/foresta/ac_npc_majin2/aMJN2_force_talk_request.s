lbl_805575AC:
/* 805575AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805575B0  7C 08 02 A6 */	mflr r0
/* 805575B4  3C A0 80 55 */	lis r5, aMJN2_set_force_talk_info@ha /* 0x8055751C@ha */
/* 805575B8  7C 64 1B 78 */	mr r4, r3
/* 805575BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805575C0  38 A5 75 1C */	addi r5, r5, aMJN2_set_force_talk_info@l /* 0x8055751C@l */
/* 805575C4  38 60 00 08 */	li r3, 8
/* 805575C8  4B E4 2B 95 */	bl mDemo_Request
/* 805575CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805575D0  7C 08 03 A6 */	mtlr r0
/* 805575D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805575D8  4E 80 00 20 */	blr 
