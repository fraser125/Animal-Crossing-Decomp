lbl_803A636C:
/* 803A636C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A6370  7C 08 02 A6 */	mflr r0
/* 803A6374  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A6378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A637C  3B E0 00 00 */	li r31, 0
/* 803A6380  93 C1 00 08 */	stw r30, 8(r1)
/* 803A6384  7C BE 2B 78 */	mr r30, r5
/* 803A6388  4B FF FF 61 */	bl mFI_BkNum2BlockKind
/* 803A638C  7C 60 F0 38 */	and r0, r3, r30
/* 803A6390  7C 1E 00 40 */	cmplw r30, r0
/* 803A6394  40 82 00 08 */	bne lbl_803A639C
/* 803A6398  3B E0 00 01 */	li r31, 1
lbl_803A639C:
/* 803A639C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A63A0  7F E3 FB 78 */	mr r3, r31
/* 803A63A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A63A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A63AC  7C 08 03 A6 */	mtlr r0
/* 803A63B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A63B4  4E 80 00 20 */	blr 
