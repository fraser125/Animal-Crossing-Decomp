lbl_803A9620:
/* 803A9620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A9624  7C 08 02 A6 */	mflr r0
/* 803A9628  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A962C  4B FF DB 29 */	bl mFI_BkNumtoUtFGTop
/* 803A9630  4B FF FF A9 */	bl mFI_ClearHoleBlock_sub
/* 803A9634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A9638  7C 08 03 A6 */	mtlr r0
/* 803A963C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A9640  4E 80 00 20 */	blr 
