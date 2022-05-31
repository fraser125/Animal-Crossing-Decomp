lbl_804BE6C8:
/* 804BE6C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BE6CC  7C 08 02 A6 */	mflr r0
/* 804BE6D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BE6D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE6D8  4B BD C7 F1 */	bl func_8009AEC8
/* 804BE6DC  3C 60 81 1D */	lis r3, draw_work@ha /* 0x811CFF00@ha */
/* 804BE6E0  38 63 FF 00 */	addi r3, r3, draw_work@l /* 0x811CFF00@l */
/* 804BE6E4  80 83 00 08 */	lwz r4, 8(r3)
/* 804BE6E8  80 63 00 04 */	lwz r3, 4(r3)
/* 804BE6EC  3B 64 00 04 */	addi r27, r4, 4
/* 804BE6F0  4B F2 6A 19 */	bl _texture_z_light_fog_prim
/* 804BE6F4  3C A0 81 1D */	lis r5, draw_work@ha /* 0x811CFF00@ha */
/* 804BE6F8  3C 80 80 69 */	lis r4, mode_DL_table@ha /* 0x80695A5C@ha */
/* 804BE6FC  3C 60 80 69 */	lis r3, vtx_DL_table@ha /* 0x80695B30@ha */
/* 804BE700  3B 40 00 01 */	li r26, 1
/* 804BE704  3B 85 FF 00 */	addi r28, r5, draw_work@l /* 0x811CFF00@l */
/* 804BE708  3B A4 5A 5C */	addi r29, r4, mode_DL_table@l /* 0x80695A5C@l */
/* 804BE70C  3B C3 5B 30 */	addi r30, r3, vtx_DL_table@l /* 0x80695B30@l */
/* 804BE710  3B E0 00 04 */	li r31, 4
lbl_804BE714:
/* 804BE714  A0 9B 00 00 */	lhz r4, 0(r27)
/* 804BE718  28 04 00 00 */	cmplwi r4, 0
/* 804BE71C  41 82 00 1C */	beq lbl_804BE738
/* 804BE720  7C 7D F8 2E */	lwzx r3, r29, r31
/* 804BE724  7C 1E F8 2E */	lwzx r0, r30, r31
/* 804BE728  90 9C 00 0C */	stw r4, 0xc(r28)
/* 804BE72C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 804BE730  90 1C 00 14 */	stw r0, 0x14(r28)
/* 804BE734  4B FF FE D1 */	bl func_804BE604
lbl_804BE738:
/* 804BE738  3B 5A 00 01 */	addi r26, r26, 1
/* 804BE73C  3B 7B 00 02 */	addi r27, r27, 2
/* 804BE740  2C 1A 00 35 */	cmpwi r26, 0x35
/* 804BE744  3B FF 00 04 */	addi r31, r31, 4
/* 804BE748  41 80 FF CC */	blt lbl_804BE714
/* 804BE74C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE750  4B BD C7 C5 */	bl func_8009AF14
/* 804BE754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BE758  7C 08 03 A6 */	mtlr r0
/* 804BE75C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BE760  4E 80 00 20 */	blr 
