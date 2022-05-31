lbl_804C5D14:
/* 804C5D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C5D18  7C 08 02 A6 */	mflr r0
/* 804C5D1C  3C A0 80 6A */	lis r5, draw_part_table_a@ha /* 0x80698444@ha */
/* 804C5D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C5D24  7C 80 23 78 */	mr r0, r4
/* 804C5D28  38 83 01 74 */	addi r4, r3, 0x174
/* 804C5D2C  38 A5 84 44 */	addi r5, r5, draw_part_table_a@l /* 0x80698444@l */
/* 804C5D30  7C 03 03 78 */	mr r3, r0
/* 804C5D34  4B FF FC FD */	bl bg_item_common_draw
/* 804C5D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C5D3C  7C 08 03 A6 */	mtlr r0
/* 804C5D40  38 21 00 10 */	addi r1, r1, 0x10
/* 804C5D44  4E 80 00 20 */	blr 
