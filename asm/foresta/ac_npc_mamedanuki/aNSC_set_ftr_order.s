lbl_8055A7A8:
/* 8055A7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A7AC  7C 08 02 A6 */	mflr r0
/* 8055A7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A7B8  7C 7F 1B 78 */	mr r31, r3
/* 8055A7BC  4B FF FF B5 */	bl aNSC_getP_free_ftr_order
/* 8055A7C0  A0 1F 09 BA */	lhz r0, 0x9ba(r31)
/* 8055A7C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055A7C8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055A7CC  B0 03 00 00 */	sth r0, 0(r3)
/* 8055A7D0  3C 84 00 02 */	addis r4, r4, 2
/* 8055A7D4  88 04 04 66 */	lbz r0, 0x466(r4)
/* 8055A7D8  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8055A7DC  98 03 00 02 */	stb r0, 2(r3)
/* 8055A7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A7E8  7C 08 03 A6 */	mtlr r0
/* 8055A7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A7F0  4E 80 00 20 */	blr 
