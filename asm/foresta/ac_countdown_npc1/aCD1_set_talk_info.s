lbl_80517F78:
/* 80517F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80517F7C  7C 08 02 A6 */	mflr r0
/* 80517F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80517F84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80517F88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80517F8C  7C 7E 1B 78 */	mr r30, r3
/* 80517F90  4B EB 9F 71 */	bl mNpc_GetNpcLooks
/* 80517F94  7C 7F 1B 78 */	mr r31, r3
/* 80517F98  4B B4 4D 5D */	bl fqrand
/* 80517F9C  3C 60 80 65 */	lis r3, lit_597@ha /* 0x80649038@ha */
/* 80517FA0  80 BE 09 A0 */	lwz r5, 0x9a0(r30)
/* 80517FA4  38 83 90 38 */	addi r4, r3, lit_597@l /* 0x80649038@l */
/* 80517FA8  3C 60 80 6A */	lis r3, msg_base@ha /* 0x8069FED4@ha */
/* 80517FAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80517FB0  57 E0 10 3A */	slwi r0, r31, 2
/* 80517FB4  38 63 FE D4 */	addi r3, r3, msg_base@l /* 0x8069FED4@l */
/* 80517FB8  2C 05 00 05 */	cmpwi r5, 5
/* 80517FBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80517FC0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80517FC4  54 A0 10 3A */	slwi r0, r5, 2
/* 80517FC8  FC 00 00 1E */	fctiwz f0, f0
/* 80517FCC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80517FD0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80517FD4  7C 83 22 14 */	add r4, r3, r4
/* 80517FD8  7C 64 02 14 */	add r3, r4, r0
/* 80517FDC  40 82 00 08 */	bne lbl_80517FE4
/* 80517FE0  38 64 00 11 */	addi r3, r4, 0x11
lbl_80517FE4:
/* 80517FE4  4B E8 05 31 */	bl mDemo_Set_msg_num
/* 80517FE8  4B FF FF 45 */	bl aCD1_set_free_str
/* 80517FEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80517FF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80517FF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80517FF8  7C 08 03 A6 */	mtlr r0
/* 80517FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80518000  4E 80 00 20 */	blr 
