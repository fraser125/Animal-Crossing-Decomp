lbl_80545E94:
/* 80545E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545E98  7C 08 02 A6 */	mflr r0
/* 80545E9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545EA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80545EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545EA8  3C 63 00 02 */	addis r3, r3, 2
/* 80545EAC  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80545EB0  4B E6 D7 09 */	bl mHS_get_arrange_idx
/* 80545EB4  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 80545EB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545EBC  38 80 00 01 */	li r4, 1
/* 80545EC0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80545EC4  7C 60 2A 14 */	add r3, r0, r5
/* 80545EC8  3C 63 00 01 */	addis r3, r3, 1
/* 80545ECC  88 03 9D 13 */	lbz r0, -0x62ed(r3)
/* 80545ED0  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80545ED4  98 03 9D 13 */	stb r0, -0x62ed(r3)
/* 80545ED8  38 63 9C E8 */	addi r3, r3, -25368
/* 80545EDC  4B FF FF 91 */	bl aNSC_set_rehouse_order_date
/* 80545EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545EE4  7C 08 03 A6 */	mtlr r0
/* 80545EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80545EEC  4E 80 00 20 */	blr 
