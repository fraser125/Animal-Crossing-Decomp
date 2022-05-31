lbl_8041DF84:
/* 8041DF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041DF88  7C 08 02 A6 */	mflr r0
/* 8041DF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041DF90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041DF94  7C 9F 23 78 */	mr r31, r4
/* 8041DF98  93 C1 00 08 */	stw r30, 8(r1)
/* 8041DF9C  7C 7E 1B 78 */	mr r30, r3
/* 8041DFA0  80 64 00 00 */	lwz r3, 0(r4)
/* 8041DFA4  38 80 00 40 */	li r4, 0x40
/* 8041DFA8  4B F7 FB 59 */	bl mEv_check_status
/* 8041DFAC  2C 03 00 00 */	cmpwi r3, 0
/* 8041DFB0  41 82 00 30 */	beq lbl_8041DFE0
/* 8041DFB4  7F C3 F3 78 */	mr r3, r30
/* 8041DFB8  7F E4 FB 78 */	mr r4, r31
/* 8041DFBC  38 A0 00 51 */	li r5, 0x51
/* 8041DFC0  4B FF EE D9 */	bl walk_actor_at_wade
/* 8041DFC4  28 03 00 00 */	cmplwi r3, 0
/* 8041DFC8  41 82 00 18 */	beq lbl_8041DFE0
/* 8041DFCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041DFD0  38 80 00 40 */	li r4, 0x40
/* 8041DFD4  4B F7 FA AD */	bl mEv_clear_status
/* 8041DFD8  38 60 00 01 */	li r3, 1
/* 8041DFDC  48 00 00 08 */	b lbl_8041DFE4
lbl_8041DFE0:
/* 8041DFE0  38 60 00 00 */	li r3, 0
lbl_8041DFE4:
/* 8041DFE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041DFE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041DFEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041DFF0  7C 08 03 A6 */	mtlr r0
/* 8041DFF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041DFF8  4E 80 00 20 */	blr 
