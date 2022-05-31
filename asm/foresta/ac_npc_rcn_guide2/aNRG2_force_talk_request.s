lbl_80571588:
/* 80571588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057158C  7C 08 02 A6 */	mflr r0
/* 80571590  3C 80 80 57 */	lis r4, aNRG2_set_force_talk_info@ha /* 0x805714D8@ha */
/* 80571594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571598  38 A4 14 D8 */	addi r5, r4, aNRG2_set_force_talk_info@l /* 0x805714D8@l */
/* 8057159C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805715A0  7C 7F 1B 78 */	mr r31, r3
/* 805715A4  38 60 00 08 */	li r3, 8
/* 805715A8  7F E4 FB 78 */	mr r4, r31
/* 805715AC  4B E2 8B B1 */	bl mDemo_Request
/* 805715B0  38 00 00 00 */	li r0, 0
/* 805715B4  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 805715B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805715BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805715C0  7C 08 03 A6 */	mtlr r0
/* 805715C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805715C8  4E 80 00 20 */	blr 
