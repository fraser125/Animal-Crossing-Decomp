lbl_803A63B8:
/* 803A63B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A63BC  7C 08 02 A6 */	mflr r0
/* 803A63C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A63C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A63C8  3B E0 00 00 */	li r31, 0
/* 803A63CC  93 C1 00 08 */	stw r30, 8(r1)
/* 803A63D0  7C BE 2B 78 */	mr r30, r5
/* 803A63D4  4B FF FF 15 */	bl mFI_BkNum2BlockKind
/* 803A63D8  7C 60 F0 39 */	and. r0, r3, r30
/* 803A63DC  41 82 00 08 */	beq lbl_803A63E4
/* 803A63E0  3B E0 00 01 */	li r31, 1
lbl_803A63E4:
/* 803A63E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A63E8  7F E3 FB 78 */	mr r3, r31
/* 803A63EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A63F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A63F4  7C 08 03 A6 */	mtlr r0
/* 803A63F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803A63FC  4E 80 00 20 */	blr 
