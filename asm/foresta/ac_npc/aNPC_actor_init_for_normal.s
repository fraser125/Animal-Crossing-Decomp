lbl_805388A4:
/* 805388A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805388A8  7C 08 02 A6 */	mflr r0
/* 805388AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805388B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805388B4  7C 7F 1B 78 */	mr r31, r3
/* 805388B8  3C 60 81 1D */	lis r3, data_811D3978@ha /* 0x811D3978@ha */
/* 805388BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805388C0  7C 9E 23 78 */	mr r30, r4
/* 805388C4  38 83 39 78 */	addi r4, r3, data_811D3978@l /* 0x811D3978@l */
/* 805388C8  7F E5 FB 78 */	mr r5, r31
/* 805388CC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 805388D0  80 C4 00 00 */	lwz r6, 0(r4)
/* 805388D4  A0 83 08 E4 */	lhz r4, 0x8e4(r3)
/* 805388D8  38 66 01 74 */	addi r3, r6, 0x174
/* 805388DC  4B FF 3A B1 */	bl aNPC_dma_cloth_data_check
/* 805388E0  98 7F 07 4C */	stb r3, 0x74c(r31)
/* 805388E4  7F E3 FB 78 */	mr r3, r31
/* 805388E8  7F C4 F3 78 */	mr r4, r30
/* 805388EC  4B FF FF 45 */	bl func_80538830
/* 805388F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805388F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805388F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805388FC  7C 08 03 A6 */	mtlr r0
/* 80538900  38 21 00 10 */	addi r1, r1, 0x10
/* 80538904  4E 80 00 20 */	blr 
