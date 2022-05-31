lbl_80580FCC:
/* 80580FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580FD0  7C 08 02 A6 */	mflr r0
/* 80580FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80580FDC  7C 7F 1B 78 */	mr r31, r3
/* 80580FE0  4B FF FF B5 */	bl aNSC_getP_free_ftr_order
/* 80580FE4  A0 1F 09 BA */	lhz r0, 0x9ba(r31)
/* 80580FE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80580FEC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80580FF0  B0 03 00 00 */	sth r0, 0(r3)
/* 80580FF4  3C 84 00 02 */	addis r4, r4, 2
/* 80580FF8  88 04 04 66 */	lbz r0, 0x466(r4)
/* 80580FFC  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 80581000  98 03 00 02 */	stb r0, 2(r3)
/* 80581004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80581008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058100C  7C 08 03 A6 */	mtlr r0
/* 80581010  38 21 00 10 */	addi r1, r1, 0x10
/* 80581014  4E 80 00 20 */	blr 
