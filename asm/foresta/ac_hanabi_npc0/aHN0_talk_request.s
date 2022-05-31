lbl_80528EB4:
/* 80528EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528EB8  7C 08 02 A6 */	mflr r0
/* 80528EBC  3C A0 80 53 */	lis r5, aHN0_set_talk_info@ha /* 0x80528E54@ha */
/* 80528EC0  7C 64 1B 78 */	mr r4, r3
/* 80528EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528EC8  38 A5 8E 54 */	addi r5, r5, aHN0_set_talk_info@l /* 0x80528E54@l */
/* 80528ECC  38 60 00 07 */	li r3, 7
/* 80528ED0  4B E7 12 8D */	bl mDemo_Request
/* 80528ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528ED8  7C 08 03 A6 */	mtlr r0
/* 80528EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80528EE0  4E 80 00 20 */	blr 
