lbl_804CD17C:
/* 804CD17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD180  7C 08 02 A6 */	mflr r0
/* 804CD184  3C A0 80 6A */	lis r5, draw_part_table_a@ha /* 0x8069B434@ha */
/* 804CD188  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD18C  7C 80 23 78 */	mr r0, r4
/* 804CD190  38 83 15 6C */	addi r4, r3, 0x156c
/* 804CD194  38 A5 B4 34 */	addi r5, r5, draw_part_table_a@l /* 0x8069B434@l */
/* 804CD198  7C 03 03 78 */	mr r3, r0
/* 804CD19C  4B FF FC AD */	bl bg_item_common_draw
/* 804CD1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD1A4  7C 08 03 A6 */	mtlr r0
/* 804CD1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD1AC  4E 80 00 20 */	blr 
