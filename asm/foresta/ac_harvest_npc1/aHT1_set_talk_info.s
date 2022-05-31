lbl_8059209C:
/* 8059209C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805920A0  7C 08 02 A6 */	mflr r0
/* 805920A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805920A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805920AC  4B E3 FE 55 */	bl mNpc_GetNpcLooks
/* 805920B0  7C 7F 1B 78 */	mr r31, r3
/* 805920B4  4B AC AC 41 */	bl fqrand
/* 805920B8  3C 80 80 65 */	lis r4, lit_572@ha /* 0x80649CA0@ha */
/* 805920BC  3C 60 80 6C */	lis r3, msg_base@ha /* 0x806C29C4@ha */
/* 805920C0  C0 04 9C A0 */	lfs f0, lit_572@l(r4)  /* 0x80649CA0@l */
/* 805920C4  57 E0 10 3A */	slwi r0, r31, 2
/* 805920C8  38 63 29 C4 */	addi r3, r3, msg_base@l /* 0x806C29C4@l */
/* 805920CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805920D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805920D4  FC 00 00 1E */	fctiwz f0, f0
/* 805920D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805920DC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805920E0  7C 60 1A 14 */	add r3, r0, r3
/* 805920E4  4B E0 64 31 */	bl mDemo_Set_msg_num
/* 805920E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805920EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805920F0  7C 08 03 A6 */	mtlr r0
/* 805920F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805920F8  4E 80 00 20 */	blr 
