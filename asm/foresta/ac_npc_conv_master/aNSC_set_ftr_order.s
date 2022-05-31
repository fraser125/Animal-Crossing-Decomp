lbl_80545F28:
/* 80545F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545F2C  7C 08 02 A6 */	mflr r0
/* 80545F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80545F38  7C 7F 1B 78 */	mr r31, r3
/* 80545F3C  4B FF FF B5 */	bl aNSC_getP_free_ftr_order
/* 80545F40  A0 1F 09 BA */	lhz r0, 0x9ba(r31)
/* 80545F44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80545F48  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80545F4C  B0 03 00 00 */	sth r0, 0(r3)
/* 80545F50  3C 84 00 02 */	addis r4, r4, 2
/* 80545F54  88 04 04 66 */	lbz r0, 0x466(r4)
/* 80545F58  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 80545F5C  98 03 00 02 */	stb r0, 2(r3)
/* 80545F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80545F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545F68  7C 08 03 A6 */	mtlr r0
/* 80545F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80545F70  4E 80 00 20 */	blr 
