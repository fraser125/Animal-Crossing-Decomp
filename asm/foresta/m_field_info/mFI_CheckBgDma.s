lbl_803A6024:
/* 803A6024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6028  7C 08 02 A6 */	mflr r0
/* 803A602C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6030  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6034  4B CF 4E A1 */	bl func_8009AED4
/* 803A6038  7C 7D 1B 78 */	mr r29, r3
/* 803A603C  7C 9E 23 78 */	mr r30, r4
/* 803A6040  3B E0 00 00 */	li r31, 0
/* 803A6044  4B FF EC 4D */	bl mFI_CheckFieldData
/* 803A6048  2C 03 00 01 */	cmpwi r3, 1
/* 803A604C  40 82 00 44 */	bne lbl_803A6090
/* 803A6050  4B FF FC F1 */	bl mFI_BGDisplayListTop
/* 803A6054  38 00 00 04 */	li r0, 4
/* 803A6058  7C 09 03 A6 */	mtctr r0
lbl_803A605C:
/* 803A605C  80 03 00 00 */	lwz r0, 0(r3)
/* 803A6060  7C 00 E8 00 */	cmpw r0, r29
/* 803A6064  40 82 00 24 */	bne lbl_803A6088
/* 803A6068  80 03 00 04 */	lwz r0, 4(r3)
/* 803A606C  7C 00 F0 00 */	cmpw r0, r30
/* 803A6070  40 82 00 18 */	bne lbl_803A6088
/* 803A6074  80 03 00 08 */	lwz r0, 8(r3)
/* 803A6078  28 00 00 00 */	cmplwi r0, 0
/* 803A607C  41 82 00 0C */	beq lbl_803A6088
/* 803A6080  3B E0 00 01 */	li r31, 1
/* 803A6084  48 00 00 0C */	b lbl_803A6090
lbl_803A6088:
/* 803A6088  38 63 00 0C */	addi r3, r3, 0xc
/* 803A608C  42 00 FF D0 */	bdnz lbl_803A605C
lbl_803A6090:
/* 803A6090  7F E3 FB 78 */	mr r3, r31
/* 803A6094  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6098  4B CF 4E 89 */	bl func_8009AF20
/* 803A609C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A60A0  7C 08 03 A6 */	mtlr r0
/* 803A60A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803A60A8  4E 80 00 20 */	blr 
