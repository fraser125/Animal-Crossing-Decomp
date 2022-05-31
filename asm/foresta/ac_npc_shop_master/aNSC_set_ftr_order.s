lbl_805774C0:
/* 805774C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805774C4  7C 08 02 A6 */	mflr r0
/* 805774C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805774CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805774D0  7C 7F 1B 78 */	mr r31, r3
/* 805774D4  4B FF FF B5 */	bl aNSC_getP_free_ftr_order
/* 805774D8  A0 1F 09 BA */	lhz r0, 0x9ba(r31)
/* 805774DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805774E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805774E4  B0 03 00 00 */	sth r0, 0(r3)
/* 805774E8  3C 84 00 02 */	addis r4, r4, 2
/* 805774EC  88 04 04 66 */	lbz r0, 0x466(r4)
/* 805774F0  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 805774F4  98 03 00 02 */	stb r0, 2(r3)
/* 805774F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805774FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577500  7C 08 03 A6 */	mtlr r0
/* 80577504  38 21 00 10 */	addi r1, r1, 0x10
/* 80577508  4E 80 00 20 */	blr 
