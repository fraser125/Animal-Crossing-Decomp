lbl_8052E83C:
/* 8052E83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E840  7C 08 02 A6 */	mflr r0
/* 8052E844  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E848  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052E84C  7C 7F 1B 78 */	mr r31, r3
/* 8052E850  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8052E854  4B EA 74 A9 */	bl mNpc_CheckIslandAnimal
/* 8052E858  2C 03 00 01 */	cmpwi r3, 1
/* 8052E85C  40 82 00 38 */	bne lbl_8052E894
/* 8052E860  4B B2 E4 95 */	bl fqrand
/* 8052E864  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052E868  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8052E86C  C0 04 92 94 */	lfs f0, lit_950@l(r4)  /* 0x80649294@l */
/* 8052E870  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8052E874  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052E878  1C 00 00 03 */	mulli r0, r0, 3
/* 8052E87C  FC 00 00 1E */	fctiwz f0, f0
/* 8052E880  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052E884  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052E888  7C 60 1A 14 */	add r3, r0, r3
/* 8052E88C  38 63 34 AC */	addi r3, r3, 0x34ac
/* 8052E890  48 00 00 34 */	b lbl_8052E8C4
lbl_8052E894:
/* 8052E894  4B B2 E4 61 */	bl fqrand
/* 8052E898  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052E89C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8052E8A0  C0 04 92 94 */	lfs f0, lit_950@l(r4)  /* 0x80649294@l */
/* 8052E8A4  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8052E8A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052E8AC  1C 00 00 03 */	mulli r0, r0, 3
/* 8052E8B0  FC 00 00 1E */	fctiwz f0, f0
/* 8052E8B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8052E8B8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8052E8BC  7C 60 1A 14 */	add r3, r0, r3
/* 8052E8C0  38 63 07 5F */	addi r3, r3, 0x75f
lbl_8052E8C4:
/* 8052E8C4  4B E6 9C 51 */	bl mDemo_Set_msg_num
/* 8052E8C8  38 00 00 02 */	li r0, 2
/* 8052E8CC  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8052E8D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052E8D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052E8D8  7C 08 03 A6 */	mtlr r0
/* 8052E8DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052E8E0  4E 80 00 20 */	blr 
