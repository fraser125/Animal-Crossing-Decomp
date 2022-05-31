lbl_8053DF84:
/* 8053DF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DF88  7C 08 02 A6 */	mflr r0
/* 8053DF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DF90  88 03 08 30 */	lbz r0, 0x830(r3)
/* 8053DF94  88 A3 08 31 */	lbz r5, 0x831(r3)
/* 8053DF98  7C 00 28 40 */	cmplw r0, r5
/* 8053DF9C  41 82 00 10 */	beq lbl_8053DFAC
/* 8053DFA0  98 A3 08 30 */	stb r5, 0x830(r3)
/* 8053DFA4  68 A0 00 01 */	xori r0, r5, 1
/* 8053DFA8  98 03 01 08 */	stb r0, 0x108(r3)
lbl_8053DFAC:
/* 8053DFAC  88 03 08 30 */	lbz r0, 0x830(r3)
/* 8053DFB0  28 00 00 01 */	cmplwi r0, 1
/* 8053DFB4  40 82 00 0C */	bne lbl_8053DFC0
/* 8053DFB8  4B FF FE 31 */	bl aNPC_actor_move_hide
/* 8053DFBC  48 00 00 08 */	b lbl_8053DFC4
lbl_8053DFC0:
/* 8053DFC0  4B FF FF 41 */	bl aNPC_actor_move_show
lbl_8053DFC4:
/* 8053DFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DFC8  7C 08 03 A6 */	mtlr r0
/* 8053DFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DFD0  4E 80 00 20 */	blr 
