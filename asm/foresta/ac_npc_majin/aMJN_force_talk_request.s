lbl_80556B98:
/* 80556B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556B9C  7C 08 02 A6 */	mflr r0
/* 80556BA0  3C A0 80 55 */	lis r5, aMJN_set_force_talk_info@ha /* 0x80556B4C@ha */
/* 80556BA4  7C 64 1B 78 */	mr r4, r3
/* 80556BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556BAC  38 A5 6B 4C */	addi r5, r5, aMJN_set_force_talk_info@l /* 0x80556B4C@l */
/* 80556BB0  38 60 00 08 */	li r3, 8
/* 80556BB4  4B E4 35 A9 */	bl mDemo_Request
/* 80556BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556BBC  7C 08 03 A6 */	mtlr r0
/* 80556BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80556BC4  4E 80 00 20 */	blr 
