lbl_8057F3A8:
/* 8057F3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F3AC  7C 08 02 A6 */	mflr r0
/* 8057F3B0  3C A0 80 58 */	lis r5, aSTM_set_force_talk_info@ha /* 0x8057F2E8@ha */
/* 8057F3B4  7C 64 1B 78 */	mr r4, r3
/* 8057F3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F3BC  38 A5 F2 E8 */	addi r5, r5, aSTM_set_force_talk_info@l /* 0x8057F2E8@l */
/* 8057F3C0  38 60 00 08 */	li r3, 8
/* 8057F3C4  4B E1 AD 99 */	bl mDemo_Request
/* 8057F3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F3CC  7C 08 03 A6 */	mtlr r0
/* 8057F3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F3D4  4E 80 00 20 */	blr 
