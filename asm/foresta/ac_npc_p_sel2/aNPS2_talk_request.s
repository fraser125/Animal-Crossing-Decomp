lbl_80569E30:
/* 80569E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569E34  7C 08 02 A6 */	mflr r0
/* 80569E38  3C A0 80 57 */	lis r5, aNPS2_set_talk_info_talk_request@ha /* 0x80569E00@ha */
/* 80569E3C  7C 64 1B 78 */	mr r4, r3
/* 80569E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569E44  38 A5 9E 00 */	addi r5, r5, aNPS2_set_talk_info_talk_request@l /* 0x80569E00@l */
/* 80569E48  38 60 00 08 */	li r3, 8
/* 80569E4C  4B E3 03 11 */	bl mDemo_Request
/* 80569E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569E54  7C 08 03 A6 */	mtlr r0
/* 80569E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80569E5C  4E 80 00 20 */	blr 
