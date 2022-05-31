lbl_804B6E98:
/* 804B6E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B6E9C  7C 08 02 A6 */	mflr r0
/* 804B6EA0  3C A0 80 69 */	lis r5, draw_part_table_a@ha /* 0x80692314@ha */
/* 804B6EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B6EA8  7C 80 23 78 */	mr r0, r4
/* 804B6EAC  38 83 01 74 */	addi r4, r3, 0x174
/* 804B6EB0  38 A5 23 14 */	addi r5, r5, draw_part_table_a@l /* 0x80692314@l */
/* 804B6EB4  7C 03 03 78 */	mr r3, r0
/* 804B6EB8  4B FF FC FD */	bl bg_item_common_draw
/* 804B6EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B6EC0  7C 08 03 A6 */	mtlr r0
/* 804B6EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804B6EC8  4E 80 00 20 */	blr 
