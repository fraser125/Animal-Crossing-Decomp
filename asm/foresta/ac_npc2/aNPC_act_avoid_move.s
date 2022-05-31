lbl_8053EE94:
/* 8053EE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053EE98  7C 08 02 A6 */	mflr r0
/* 8053EE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053EEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053EEA4  3B E0 00 01 */	li r31, 1
/* 8053EEA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8053EEAC  7C 7E 1B 78 */	mr r30, r3
/* 8053EEB0  80 63 09 2C */	lwz r3, 0x92c(r3)
/* 8053EEB4  4B FF FE 61 */	bl aNPC_check_live_target
/* 8053EEB8  2C 03 00 00 */	cmpwi r3, 0
/* 8053EEBC  40 82 00 0C */	bne lbl_8053EEC8
/* 8053EEC0  3B E0 00 00 */	li r31, 0
/* 8053EEC4  48 00 00 20 */	b lbl_8053EEE4
lbl_8053EEC8:
/* 8053EEC8  7F C3 F3 78 */	mr r3, r30
/* 8053EECC  4B FF EB ED */	bl aNPC_set_mv_angl
/* 8053EED0  7F C3 F3 78 */	mr r3, r30
/* 8053EED4  4B FF FC 3D */	bl aNPC_trace_route
/* 8053EED8  2C 03 00 00 */	cmpwi r3, 0
/* 8053EEDC  40 82 00 08 */	bne lbl_8053EEE4
/* 8053EEE0  3B E0 00 00 */	li r31, 0
lbl_8053EEE4:
/* 8053EEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053EEE8  7F E3 FB 78 */	mr r3, r31
/* 8053EEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053EEF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053EEF4  7C 08 03 A6 */	mtlr r0
/* 8053EEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053EEFC  4E 80 00 20 */	blr 
