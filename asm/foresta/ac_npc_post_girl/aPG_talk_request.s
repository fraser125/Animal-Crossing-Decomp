lbl_8056D944:
/* 8056D944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D948  7C 08 02 A6 */	mflr r0
/* 8056D94C  3C A0 80 57 */	lis r5, aPG_set_talk_info@ha /* 0x8056D8A0@ha */
/* 8056D950  7C 64 1B 78 */	mr r4, r3
/* 8056D954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D958  38 A5 D8 A0 */	addi r5, r5, aPG_set_talk_info@l /* 0x8056D8A0@l */
/* 8056D95C  38 60 00 07 */	li r3, 7
/* 8056D960  4B E2 C7 FD */	bl mDemo_Request
/* 8056D964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D968  7C 08 03 A6 */	mtlr r0
/* 8056D96C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D970  4E 80 00 20 */	blr 
