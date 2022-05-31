lbl_8057D738:
/* 8057D738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D73C  7C 08 02 A6 */	mflr r0
/* 8057D740  3C A0 80 58 */	lis r5, aSHM_set_norm_talk_info@ha /* 0x8057D6D0@ha */
/* 8057D744  7C 64 1B 78 */	mr r4, r3
/* 8057D748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D74C  38 A5 D6 D0 */	addi r5, r5, aSHM_set_norm_talk_info@l /* 0x8057D6D0@l */
/* 8057D750  38 60 00 07 */	li r3, 7
/* 8057D754  4B E1 CA 09 */	bl mDemo_Request
/* 8057D758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D75C  7C 08 03 A6 */	mtlr r0
/* 8057D760  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D764  4E 80 00 20 */	blr 
