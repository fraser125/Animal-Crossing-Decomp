lbl_8052DEEC:
/* 8052DEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052DEF0  7C 08 02 A6 */	mflr r0
/* 8052DEF4  38 C0 00 00 */	li r6, 0
/* 8052DEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052DEFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052DF00  3B E0 00 01 */	li r31, 1
/* 8052DF04  93 C1 00 08 */	stw r30, 8(r1)
/* 8052DF08  7C 7E 1B 78 */	mr r30, r3
/* 8052DF0C  80 63 08 F0 */	lwz r3, 0x8f0(r3)
/* 8052DF10  28 03 00 00 */	cmplwi r3, 0
/* 8052DF14  41 82 00 34 */	beq lbl_8052DF48
/* 8052DF18  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8052DF1C  2C 00 00 09 */	cmpwi r0, 9
/* 8052DF20  40 80 00 88 */	bge lbl_8052DFA8
/* 8052DF24  2C 00 00 07 */	cmpwi r0, 7
/* 8052DF28  40 80 00 08 */	bge lbl_8052DF30
/* 8052DF2C  48 00 00 7C */	b lbl_8052DFA8
lbl_8052DF30:
/* 8052DF30  88 1E 09 73 */	lbz r0, 0x973(r30)
/* 8052DF34  28 00 00 02 */	cmplwi r0, 2
/* 8052DF38  41 82 00 70 */	beq lbl_8052DFA8
/* 8052DF3C  7C 66 1B 78 */	mr r6, r3
/* 8052DF40  3B E0 00 04 */	li r31, 4
/* 8052DF44  48 00 00 64 */	b lbl_8052DFA8
lbl_8052DF48:
/* 8052DF48  88 1E 07 FD */	lbz r0, 0x7fd(r30)
/* 8052DF4C  2C 00 00 06 */	cmpwi r0, 6
/* 8052DF50  41 82 00 14 */	beq lbl_8052DF64
/* 8052DF54  41 80 00 40 */	blt lbl_8052DF94
/* 8052DF58  2C 00 00 09 */	cmpwi r0, 9
/* 8052DF5C  40 80 00 38 */	bge lbl_8052DF94
/* 8052DF60  48 00 00 18 */	b lbl_8052DF78
lbl_8052DF64:
/* 8052DF64  80 1E 09 2C */	lwz r0, 0x92c(r30)
/* 8052DF68  28 00 00 00 */	cmplwi r0, 0
/* 8052DF6C  41 82 00 28 */	beq lbl_8052DF94
/* 8052DF70  7C 06 03 78 */	mr r6, r0
/* 8052DF74  48 00 00 20 */	b lbl_8052DF94
lbl_8052DF78:
/* 8052DF78  80 7E 09 2C */	lwz r3, 0x92c(r30)
/* 8052DF7C  28 03 00 00 */	cmplwi r3, 0
/* 8052DF80  41 82 00 14 */	beq lbl_8052DF94
/* 8052DF84  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 8052DF88  28 00 00 00 */	cmplwi r0, 0
/* 8052DF8C  40 82 00 08 */	bne lbl_8052DF94
/* 8052DF90  7C 66 1B 78 */	mr r6, r3
lbl_8052DF94:
/* 8052DF94  28 06 00 00 */	cmplwi r6, 0
/* 8052DF98  40 82 00 10 */	bne lbl_8052DFA8
/* 8052DF9C  7F C3 F3 78 */	mr r3, r30
/* 8052DFA0  4B FF FD E5 */	bl aNPC_check_look_player
/* 8052DFA4  7C 66 1B 78 */	mr r6, r3
lbl_8052DFA8:
/* 8052DFA8  28 06 00 00 */	cmplwi r6, 0
/* 8052DFAC  41 82 00 18 */	beq lbl_8052DFC4
/* 8052DFB0  7F C3 F3 78 */	mr r3, r30
/* 8052DFB4  7F E4 FB 78 */	mr r4, r31
/* 8052DFB8  38 A0 00 01 */	li r5, 1
/* 8052DFBC  38 E0 00 00 */	li r7, 0
/* 8052DFC0  48 00 02 65 */	bl aNPC_set_head_request
lbl_8052DFC4:
/* 8052DFC4  7F C3 F3 78 */	mr r3, r30
/* 8052DFC8  4B FF FE 3D */	bl aNPC_check_attention
/* 8052DFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052DFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052DFD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052DFD8  7C 08 03 A6 */	mtlr r0
/* 8052DFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052DFE0  4E 80 00 20 */	blr 
