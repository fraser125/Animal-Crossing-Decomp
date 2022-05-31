lbl_803AC7C8:
/* 803AC7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC7CC  7C 08 02 A6 */	mflr r0
/* 803AC7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC7D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AC7D8  7C BF 2B 78 */	mr r31, r5
/* 803AC7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 803AC7E0  7C 9E 23 78 */	mr r30, r4
/* 803AC7E4  38 80 00 0A */	li r4, 0xa
/* 803AC7E8  4B FF FF AD */	bl mFRm_get_free_errInfo
/* 803AC7EC  28 03 00 00 */	cmplwi r3, 0
/* 803AC7F0  41 82 00 0C */	beq lbl_803AC7FC
/* 803AC7F4  93 E3 00 00 */	stw r31, 0(r3)
/* 803AC7F8  93 C3 00 04 */	stw r30, 4(r3)
lbl_803AC7FC:
/* 803AC7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AC804  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AC808  7C 08 03 A6 */	mtlr r0
/* 803AC80C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC810  4E 80 00 20 */	blr 
