lbl_805777E4:
/* 805777E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805777E8  7C 08 02 A6 */	mflr r0
/* 805777EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805777F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805777F4  3B E0 00 00 */	li r31, 0
/* 805777F8  93 C1 00 08 */	stw r30, 8(r1)
/* 805777FC  7C 7E 1B 78 */	mr r30, r3
/* 80577800  88 03 00 05 */	lbz r0, 5(r3)
/* 80577804  28 00 00 01 */	cmplwi r0, 1
/* 80577808  40 82 00 2C */	bne lbl_80577834
/* 8057780C  4B E4 72 F9 */	bl mMpswd_check_npc_code
/* 80577810  2C 03 00 01 */	cmpwi r3, 1
/* 80577814  40 82 00 20 */	bne lbl_80577834
/* 80577818  7F C3 F3 78 */	mr r3, r30
/* 8057781C  4B E4 73 25 */	bl mMpswd_check_name
/* 80577820  2C 03 00 01 */	cmpwi r3, 1
/* 80577824  40 82 00 0C */	bne lbl_80577830
/* 80577828  3B E0 00 02 */	li r31, 2
/* 8057782C  48 00 00 08 */	b lbl_80577834
lbl_80577830:
/* 80577830  3B E0 00 08 */	li r31, 8
lbl_80577834:
/* 80577834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577838  7F E3 FB 78 */	mr r3, r31
/* 8057783C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80577840  83 C1 00 08 */	lwz r30, 8(r1)
/* 80577844  7C 08 03 A6 */	mtlr r0
/* 80577848  38 21 00 10 */	addi r1, r1, 0x10
/* 8057784C  4E 80 00 20 */	blr 