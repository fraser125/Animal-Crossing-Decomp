lbl_8057D6A0:
/* 8057D6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D6A4  7C 08 02 A6 */	mflr r0
/* 8057D6A8  3C A0 80 58 */	lis r5, aSHM_set_force_talk_info@ha /* 0x8057D60C@ha */
/* 8057D6AC  7C 64 1B 78 */	mr r4, r3
/* 8057D6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D6B4  38 A5 D6 0C */	addi r5, r5, aSHM_set_force_talk_info@l /* 0x8057D60C@l */
/* 8057D6B8  38 60 00 08 */	li r3, 8
/* 8057D6BC  4B E1 CA A1 */	bl mDemo_Request
/* 8057D6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D6C4  7C 08 03 A6 */	mtlr r0
/* 8057D6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D6CC  4E 80 00 20 */	blr 
