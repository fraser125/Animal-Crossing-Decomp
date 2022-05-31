lbl_8053D3CC:
/* 8053D3CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053D3D0  7C 08 02 A6 */	mflr r0
/* 8053D3D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053D3D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053D3DC  7C 7F 1B 78 */	mr r31, r3
/* 8053D3E0  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8053D3E4  4B E9 89 19 */	bl mNpc_CheckIslandAnimal
/* 8053D3E8  2C 03 00 01 */	cmpwi r3, 1
/* 8053D3EC  40 82 00 38 */	bne lbl_8053D424
/* 8053D3F0  4B B1 F9 05 */	bl fqrand
/* 8053D3F4  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053D3F8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8053D3FC  C0 04 93 94 */	lfs f0, lit_940@l(r4)  /* 0x80649394@l */
/* 8053D400  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8053D404  EC 00 00 72 */	fmuls f0, f0, f1
/* 8053D408  1C 00 00 03 */	mulli r0, r0, 3
/* 8053D40C  FC 00 00 1E */	fctiwz f0, f0
/* 8053D410  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053D414  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8053D418  7C 60 1A 14 */	add r3, r0, r3
/* 8053D41C  38 63 34 AC */	addi r3, r3, 0x34ac
/* 8053D420  48 00 00 34 */	b lbl_8053D454
lbl_8053D424:
/* 8053D424  4B B1 F8 D1 */	bl fqrand
/* 8053D428  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053D42C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8053D430  C0 04 93 94 */	lfs f0, lit_940@l(r4)  /* 0x80649394@l */
/* 8053D434  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8053D438  EC 00 00 72 */	fmuls f0, f0, f1
/* 8053D43C  1C 00 00 03 */	mulli r0, r0, 3
/* 8053D440  FC 00 00 1E */	fctiwz f0, f0
/* 8053D444  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8053D448  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8053D44C  7C 60 1A 14 */	add r3, r0, r3
/* 8053D450  38 63 07 5F */	addi r3, r3, 0x75f
lbl_8053D454:
/* 8053D454  4B E5 B0 C1 */	bl mDemo_Set_msg_num
/* 8053D458  38 00 00 02 */	li r0, 2
/* 8053D45C  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8053D460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053D464  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053D468  7C 08 03 A6 */	mtlr r0
/* 8053D46C  38 21 00 20 */	addi r1, r1, 0x20
/* 8053D470  4E 80 00 20 */	blr 
