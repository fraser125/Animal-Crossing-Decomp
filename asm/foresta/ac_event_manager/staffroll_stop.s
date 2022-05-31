lbl_8041E7C0:
/* 8041E7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E7C4  7C 08 02 A6 */	mflr r0
/* 8041E7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E7D0  3B E0 00 02 */	li r31, 2
/* 8041E7D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E7D8  7C 9E 23 78 */	mr r30, r4
/* 8041E7DC  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E7E0  4B F7 F4 0D */	bl mEv_check_keep
/* 8041E7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8041E7E8  41 82 00 10 */	beq lbl_8041E7F8
/* 8041E7EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E7F0  4B F7 F3 C9 */	bl mEv_clear_keep
/* 8041E7F4  3B E0 00 01 */	li r31, 1
lbl_8041E7F8:
/* 8041E7F8  3C 60 81 1D */	lis r3, wpppp@ha /* 0x811CB95C@ha */
/* 8041E7FC  38 00 00 00 */	li r0, 0
/* 8041E800  38 83 B9 5C */	addi r4, r3, wpppp@l /* 0x811CB95C@l */
/* 8041E804  7F E3 FB 78 */	mr r3, r31
/* 8041E808  90 04 00 00 */	stw r0, 0(r4)
/* 8041E80C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E810  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041E814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E818  7C 08 03 A6 */	mtlr r0
/* 8041E81C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E820  4E 80 00 20 */	blr 
