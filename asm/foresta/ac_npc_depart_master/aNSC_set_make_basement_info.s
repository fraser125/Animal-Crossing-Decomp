lbl_8054D7AC:
/* 8054D7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D7B0  7C 08 02 A6 */	mflr r0
/* 8054D7B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054D7B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054D7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D7C0  3C 63 00 02 */	addis r3, r3, 2
/* 8054D7C4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054D7C8  4B E6 5D F1 */	bl mHS_get_arrange_idx
/* 8054D7CC  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 8054D7D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054D7D4  38 80 00 01 */	li r4, 1
/* 8054D7D8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054D7DC  7C 60 2A 14 */	add r3, r0, r5
/* 8054D7E0  3C 63 00 01 */	addis r3, r3, 1
/* 8054D7E4  88 03 9D 13 */	lbz r0, -0x62ed(r3)
/* 8054D7E8  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8054D7EC  98 03 9D 13 */	stb r0, -0x62ed(r3)
/* 8054D7F0  38 63 9C E8 */	addi r3, r3, -25368
/* 8054D7F4  4B FF FF 91 */	bl aNSC_set_rehouse_order_date
/* 8054D7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D7FC  7C 08 03 A6 */	mtlr r0
/* 8054D800  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D804  4E 80 00 20 */	blr 
