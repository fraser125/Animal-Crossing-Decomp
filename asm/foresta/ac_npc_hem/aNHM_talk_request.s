lbl_80592804:
/* 80592804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592808  7C 08 02 A6 */	mflr r0
/* 8059280C  3C A0 80 59 */	lis r5, aNHM_set_force_talk_info_talk_request@ha /* 0x805927B0@ha */
/* 80592810  7C 64 1B 78 */	mr r4, r3
/* 80592814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592818  38 A5 27 B0 */	addi r5, r5, aNHM_set_force_talk_info_talk_request@l /* 0x805927B0@l */
/* 8059281C  38 60 00 08 */	li r3, 8
/* 80592820  4B E0 79 3D */	bl mDemo_Request
/* 80592824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592828  7C 08 03 A6 */	mtlr r0
/* 8059282C  38 21 00 10 */	addi r1, r1, 0x10
/* 80592830  4E 80 00 20 */	blr 
