lbl_805190F8:
/* 805190F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805190FC  7C 08 02 A6 */	mflr r0
/* 80519100  3C A0 80 52 */	lis r5, aEANG_set_talk_info@ha /* 0x805190AC@ha */
/* 80519104  7C 64 1B 78 */	mr r4, r3
/* 80519108  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051910C  38 A5 90 AC */	addi r5, r5, aEANG_set_talk_info@l /* 0x805190AC@l */
/* 80519110  38 60 00 07 */	li r3, 7
/* 80519114  4B E8 10 49 */	bl mDemo_Request
/* 80519118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051911C  7C 08 03 A6 */	mtlr r0
/* 80519120  38 21 00 10 */	addi r1, r1, 0x10
/* 80519124  4E 80 00 20 */	blr 
