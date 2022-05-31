lbl_803C8464:
/* 803C8464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C8468  7C 08 02 A6 */	mflr r0
/* 803C846C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C8470  39 61 00 20 */	addi r11, r1, 0x20
/* 803C8474  4B CD 2A 5D */	bl func_8009AED0
/* 803C8478  7C 7C 1B 78 */	mr r28, r3
/* 803C847C  7C 9D 23 78 */	mr r29, r4
/* 803C8480  7C BE 2B 78 */	mr r30, r5
/* 803C8484  3B E0 00 00 */	li r31, 0
lbl_803C8488:
/* 803C8488  88 1E 00 00 */	lbz r0, 0(r30)
/* 803C848C  28 00 00 00 */	cmplwi r0, 0
/* 803C8490  41 82 00 10 */	beq lbl_803C84A0
/* 803C8494  7F 83 E3 78 */	mr r3, r28
/* 803C8498  7F A4 EB 78 */	mr r4, r29
/* 803C849C  4B FF FF 4D */	bl mMsr_ClearBlockCandidateMushroom
lbl_803C84A0:
/* 803C84A0  3B FF 00 01 */	addi r31, r31, 1
/* 803C84A4  3B BD 00 20 */	addi r29, r29, 0x20
/* 803C84A8  2C 1F 00 1E */	cmpwi r31, 0x1e
/* 803C84AC  3B DE 00 01 */	addi r30, r30, 1
/* 803C84B0  3B 9C 02 00 */	addi r28, r28, 0x200
/* 803C84B4  41 80 FF D4 */	blt lbl_803C8488
/* 803C84B8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C84BC  4B CD 2A 61 */	bl func_8009AF1C
/* 803C84C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C84C4  7C 08 03 A6 */	mtlr r0
/* 803C84C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803C84CC  4E 80 00 20 */	blr 
