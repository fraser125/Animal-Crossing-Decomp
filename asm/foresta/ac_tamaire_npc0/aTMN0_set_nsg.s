lbl_805898B4:
/* 805898B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805898B8  7C 08 02 A6 */	mflr r0
/* 805898BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805898C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805898C4  4B E4 86 3D */	bl mNpc_GetNpcLooks
/* 805898C8  3C 80 80 6C */	lis r4, base_msg_table@ha /* 0x806C203C@ha */
/* 805898CC  54 60 10 3A */	slwi r0, r3, 2
/* 805898D0  38 64 20 3C */	addi r3, r4, base_msg_table@l /* 0x806C203C@l */
/* 805898D4  7F E3 00 2E */	lwzx r31, r3, r0
/* 805898D8  4B AD 34 1D */	bl fqrand
/* 805898DC  3C 60 80 65 */	lis r3, lit_514@ha /* 0x80649B48@ha */
/* 805898E0  C0 03 9B 48 */	lfs f0, lit_514@l(r3)  /* 0x80649B48@l */
/* 805898E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805898E8  FC 00 00 1E */	fctiwz f0, f0
/* 805898EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805898F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805898F4  7C 60 FA 14 */	add r3, r0, r31
/* 805898F8  4B E0 EC 1D */	bl mDemo_Set_msg_num
/* 805898FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80589900  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80589904  7C 08 03 A6 */	mtlr r0
/* 80589908  38 21 00 20 */	addi r1, r1, 0x20
/* 8058990C  4E 80 00 20 */	blr 
