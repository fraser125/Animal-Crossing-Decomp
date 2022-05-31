lbl_80527EA0:
/* 80527EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527EA4  7C 08 02 A6 */	mflr r0
/* 80527EA8  3C A0 80 52 */	lis r5, aHWN_set_norm_talk_info@ha /* 0x80527E54@ha */
/* 80527EAC  7C 64 1B 78 */	mr r4, r3
/* 80527EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527EB4  38 A5 7E 54 */	addi r5, r5, aHWN_set_norm_talk_info@l /* 0x80527E54@l */
/* 80527EB8  38 60 00 07 */	li r3, 7
/* 80527EBC  4B E7 22 A1 */	bl mDemo_Request
/* 80527EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527EC4  7C 08 03 A6 */	mtlr r0
/* 80527EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80527ECC  4E 80 00 20 */	blr 
