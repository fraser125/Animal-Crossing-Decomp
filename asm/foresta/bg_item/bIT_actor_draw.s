lbl_804BE21C:
/* 804BE21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BE220  7C 08 02 A6 */	mflr r0
/* 804BE224  3C A0 80 69 */	lis r5, draw_part_table_a@ha /* 0x80695274@ha */
/* 804BE228  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BE22C  7C 80 23 78 */	mr r0, r4
/* 804BE230  38 83 01 74 */	addi r4, r3, 0x174
/* 804BE234  38 A5 52 74 */	addi r5, r5, draw_part_table_a@l /* 0x80695274@l */
/* 804BE238  7C 03 03 78 */	mr r3, r0
/* 804BE23C  4B FF FC FD */	bl bg_item_common_draw
/* 804BE240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BE244  7C 08 03 A6 */	mtlr r0
/* 804BE248  38 21 00 10 */	addi r1, r1, 0x10
/* 804BE24C  4E 80 00 20 */	blr 
