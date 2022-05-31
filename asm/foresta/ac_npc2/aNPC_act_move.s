lbl_8053ED84:
/* 8053ED84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053ED88  7C 08 02 A6 */	mflr r0
/* 8053ED8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053ED90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053ED94  3B E0 00 01 */	li r31, 1
/* 8053ED98  93 C1 00 08 */	stw r30, 8(r1)
/* 8053ED9C  7C 7E 1B 78 */	mr r30, r3
/* 8053EDA0  4B FF ED 19 */	bl aNPC_set_mv_angl
/* 8053EDA4  7F C3 F3 78 */	mr r3, r30
/* 8053EDA8  4B FF FD 69 */	bl aNPC_trace_route
/* 8053EDAC  2C 03 00 00 */	cmpwi r3, 0
/* 8053EDB0  40 82 00 08 */	bne lbl_8053EDB8
/* 8053EDB4  3B E0 00 00 */	li r31, 0
lbl_8053EDB8:
/* 8053EDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053EDBC  7F E3 FB 78 */	mr r3, r31
/* 8053EDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053EDC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053EDC8  7C 08 03 A6 */	mtlr r0
/* 8053EDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053EDD0  4E 80 00 20 */	blr 
