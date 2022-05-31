lbl_80529F74:
/* 80529F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80529F78  7C 08 02 A6 */	mflr r0
/* 80529F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80529F80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80529F84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80529F88  7C 7E 1B 78 */	mr r30, r3
/* 80529F8C  4B EA 7F 75 */	bl mNpc_GetNpcLooks
/* 80529F90  7C 7F 1B 78 */	mr r31, r3
/* 80529F94  4B B3 2D 61 */	bl fqrand
/* 80529F98  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80649234@ha */
/* 80529F9C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80529FA0  38 83 92 34 */	addi r4, r3, lit_593@l /* 0x80649234@l */
/* 80529FA4  3C 60 80 6A */	lis r3, msg_base@ha /* 0x806A120C@ha */
/* 80529FA8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80529FAC  1C 00 00 03 */	mulli r0, r0, 3
/* 80529FB0  57 E4 10 3A */	slwi r4, r31, 2
/* 80529FB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80529FB8  38 63 12 0C */	addi r3, r3, msg_base@l /* 0x806A120C@l */
/* 80529FBC  7C 63 20 2E */	lwzx r3, r3, r4
/* 80529FC0  FC 00 00 1E */	fctiwz f0, f0
/* 80529FC4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80529FC8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80529FCC  7C 04 02 14 */	add r0, r4, r0
/* 80529FD0  7C 63 02 14 */	add r3, r3, r0
/* 80529FD4  4B E6 E5 41 */	bl mDemo_Set_msg_num
/* 80529FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529FDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80529FE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80529FE4  7C 08 03 A6 */	mtlr r0
/* 80529FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80529FEC  4E 80 00 20 */	blr 
