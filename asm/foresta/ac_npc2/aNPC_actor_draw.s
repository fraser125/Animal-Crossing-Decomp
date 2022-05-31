lbl_8053E7B0:
/* 8053E7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E7B4  7C 08 02 A6 */	mflr r0
/* 8053E7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E7C0  7C 7F 1B 78 */	mr r31, r3
/* 8053E7C4  88 03 08 30 */	lbz r0, 0x830(r3)
/* 8053E7C8  28 00 00 00 */	cmplwi r0, 0
/* 8053E7CC  40 82 00 10 */	bne lbl_8053E7DC
/* 8053E7D0  4B FF FC D5 */	bl aNPC_actor_draw_sub
/* 8053E7D4  7F E3 FB 78 */	mr r3, r31
/* 8053E7D8  4B FF F8 55 */	bl aNPC_set_shadow_pos
lbl_8053E7DC:
/* 8053E7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E7E4  7C 08 03 A6 */	mtlr r0
/* 8053E7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E7EC  4E 80 00 20 */	blr 
