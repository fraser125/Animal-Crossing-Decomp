lbl_8057F528:
/* 8057F528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F52C  7C 08 02 A6 */	mflr r0
/* 8057F530  3C A0 80 58 */	lis r5, aSTM_set_norm_talk_info@ha /* 0x8057F3D8@ha */
/* 8057F534  7C 64 1B 78 */	mr r4, r3
/* 8057F538  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F53C  38 A5 F3 D8 */	addi r5, r5, aSTM_set_norm_talk_info@l /* 0x8057F3D8@l */
/* 8057F540  38 60 00 07 */	li r3, 7
/* 8057F544  4B E1 AC 19 */	bl mDemo_Request
/* 8057F548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F54C  7C 08 03 A6 */	mtlr r0
/* 8057F550  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F554  4E 80 00 20 */	blr 
