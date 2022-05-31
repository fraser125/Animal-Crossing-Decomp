lbl_805919B0:
/* 805919B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805919B4  7C 08 02 A6 */	mflr r0
/* 805919B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805919BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805919C0  7C 7F 1B 78 */	mr r31, r3
/* 805919C4  4B E4 05 3D */	bl mNpc_GetNpcLooks
/* 805919C8  80 1F 09 A4 */	lwz r0, 0x9a4(r31)
/* 805919CC  3C 80 80 6C */	lis r4, msg_base@ha /* 0x806C2940@ha */
/* 805919D0  54 65 10 3A */	slwi r5, r3, 2
/* 805919D4  38 64 29 40 */	addi r3, r4, msg_base@l /* 0x806C2940@l */
/* 805919D8  1C 00 00 03 */	mulli r0, r0, 3
/* 805919DC  7C 63 28 2E */	lwzx r3, r3, r5
/* 805919E0  7F E3 02 14 */	add r31, r3, r0
/* 805919E4  4B AC B3 11 */	bl fqrand
/* 805919E8  3C 60 80 65 */	lis r3, lit_614@ha /* 0x80649C94@ha */
/* 805919EC  C0 03 9C 94 */	lfs f0, lit_614@l(r3)  /* 0x80649C94@l */
/* 805919F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805919F4  FC 00 00 1E */	fctiwz f0, f0
/* 805919F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805919FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80591A00  7C 7F 02 14 */	add r3, r31, r0
/* 80591A04  4B E0 6B 11 */	bl mDemo_Set_msg_num
/* 80591A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591A0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80591A10  7C 08 03 A6 */	mtlr r0
/* 80591A14  38 21 00 20 */	addi r1, r1, 0x20
/* 80591A18  4E 80 00 20 */	blr 
