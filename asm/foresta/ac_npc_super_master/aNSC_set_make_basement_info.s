lbl_80580F38:
/* 80580F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580F3C  7C 08 02 A6 */	mflr r0
/* 80580F40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80580F44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80580F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580F4C  3C 63 00 02 */	addis r3, r3, 2
/* 80580F50  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80580F54  4B E3 26 65 */	bl mHS_get_arrange_idx
/* 80580F58  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 80580F5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80580F60  38 80 00 01 */	li r4, 1
/* 80580F64  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80580F68  7C 60 2A 14 */	add r3, r0, r5
/* 80580F6C  3C 63 00 01 */	addis r3, r3, 1
/* 80580F70  88 03 9D 13 */	lbz r0, -0x62ed(r3)
/* 80580F74  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80580F78  98 03 9D 13 */	stb r0, -0x62ed(r3)
/* 80580F7C  38 63 9C E8 */	addi r3, r3, -25368
/* 80580F80  4B FF FF 91 */	bl aNSC_set_rehouse_order_date
/* 80580F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580F88  7C 08 03 A6 */	mtlr r0
/* 80580F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80580F90  4E 80 00 20 */	blr 
