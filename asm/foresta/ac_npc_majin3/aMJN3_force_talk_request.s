lbl_80558448:
/* 80558448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055844C  7C 08 02 A6 */	mflr r0
/* 80558450  3C A0 80 56 */	lis r5, aMJN3_set_force_talk_info@ha /* 0x805583DC@ha */
/* 80558454  7C 64 1B 78 */	mr r4, r3
/* 80558458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055845C  38 A5 83 DC */	addi r5, r5, aMJN3_set_force_talk_info@l /* 0x805583DC@l */
/* 80558460  38 60 00 08 */	li r3, 8
/* 80558464  4B E4 1C F9 */	bl mDemo_Request
/* 80558468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055846C  7C 08 03 A6 */	mtlr r0
/* 80558470  38 21 00 10 */	addi r1, r1, 0x10
/* 80558474  4E 80 00 20 */	blr 
