lbl_803FA7EC:
/* 803FA7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FA7F0  7C 08 02 A6 */	mflr r0
/* 803FA7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FA7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA7FC  4B CA 06 D9 */	bl func_8009AED4
/* 803FA800  7C 7D 1B 78 */	mr r29, r3
/* 803FA804  7C 9E 23 78 */	mr r30, r4
/* 803FA808  3B E0 00 00 */	li r31, 0
/* 803FA80C  4B FF FF 0D */	bl mCD_CheckProtectCode
/* 803FA810  2C 03 00 01 */	cmpwi r3, 1
/* 803FA814  40 82 00 3C */	bne lbl_803FA850
/* 803FA818  38 00 00 04 */	li r0, 4
/* 803FA81C  38 80 00 00 */	li r4, 0
/* 803FA820  7C 09 03 A6 */	mtctr r0
lbl_803FA824:
/* 803FA824  A0 7D 00 00 */	lhz r3, 0(r29)
/* 803FA828  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803FA82C  7C 03 00 40 */	cmplw r3, r0
/* 803FA830  40 82 00 14 */	bne lbl_803FA844
/* 803FA834  3B BD 00 02 */	addi r29, r29, 2
/* 803FA838  3B DE 00 02 */	addi r30, r30, 2
/* 803FA83C  38 84 00 01 */	addi r4, r4, 1
/* 803FA840  42 00 FF E4 */	bdnz lbl_803FA824
lbl_803FA844:
/* 803FA844  2C 04 00 04 */	cmpwi r4, 4
/* 803FA848  40 82 00 08 */	bne lbl_803FA850
/* 803FA84C  3B E0 00 01 */	li r31, 1
lbl_803FA850:
/* 803FA850  7F E3 FB 78 */	mr r3, r31
/* 803FA854  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA858  4B CA 06 C9 */	bl func_8009AF20
/* 803FA85C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FA860  7C 08 03 A6 */	mtlr r0
/* 803FA864  38 21 00 20 */	addi r1, r1, 0x20
/* 803FA868  4E 80 00 20 */	blr 
