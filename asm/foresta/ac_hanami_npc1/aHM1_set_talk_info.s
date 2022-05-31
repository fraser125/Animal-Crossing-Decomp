lbl_8052A974:
/* 8052A974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052A978  7C 08 02 A6 */	mflr r0
/* 8052A97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052A980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052A984  4B EA 75 7D */	bl mNpc_GetNpcLooks
/* 8052A988  7C 7F 1B 78 */	mr r31, r3
/* 8052A98C  4B B3 23 69 */	bl fqrand
/* 8052A990  3C 80 80 65 */	lis r4, lit_625@ha /* 0x80649258@ha */
/* 8052A994  3C 60 80 6A */	lis r3, msg_base@ha /* 0x806A12AC@ha */
/* 8052A998  C0 04 92 58 */	lfs f0, lit_625@l(r4)  /* 0x80649258@l */
/* 8052A99C  57 E0 10 3A */	slwi r0, r31, 2
/* 8052A9A0  38 63 12 AC */	addi r3, r3, msg_base@l /* 0x806A12AC@l */
/* 8052A9A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052A9A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8052A9AC  FC 00 00 1E */	fctiwz f0, f0
/* 8052A9B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052A9B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052A9B8  7C 60 1A 14 */	add r3, r0, r3
/* 8052A9BC  4B E6 DB 59 */	bl mDemo_Set_msg_num
/* 8052A9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052A9C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052A9C8  7C 08 03 A6 */	mtlr r0
/* 8052A9CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052A9D0  4E 80 00 20 */	blr 
