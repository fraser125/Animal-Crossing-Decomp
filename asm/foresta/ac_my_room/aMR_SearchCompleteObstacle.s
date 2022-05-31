lbl_8047FB70:
/* 8047FB70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047FB74  7C 08 02 A6 */	mflr r0
/* 8047FB78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047FB7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047FB80  4B C1 B3 4D */	bl func_8009AECC
/* 8047FB84  8B C3 00 3E */	lbz r30, 0x3e(r3)
/* 8047FB88  7C 9B 23 78 */	mr r27, r4
/* 8047FB8C  7C BC 2B 78 */	mr r28, r5
/* 8047FB90  7C DD 33 78 */	mr r29, r6
/* 8047FB94  38 60 00 00 */	li r3, 0
/* 8047FB98  38 80 00 00 */	li r4, 0
/* 8047FB9C  4B F2 75 B9 */	bl mFI_BkNumtoUtFGTop
/* 8047FBA0  7C 7F 1B 78 */	mr r31, r3
/* 8047FBA4  7F 63 DB 78 */	mr r3, r27
/* 8047FBA8  7F C4 F3 78 */	mr r4, r30
/* 8047FBAC  4B FF FF 89 */	bl aMR_GetRotateForbidData
/* 8047FBB0  3C 80 80 69 */	lis r4, l_place_table@ha /* 0x8068877C@ha */
/* 8047FBB4  38 00 00 02 */	li r0, 2
/* 8047FBB8  38 A4 87 7C */	addi r5, r4, l_place_table@l /* 0x8068877C@l */
/* 8047FBBC  38 80 00 00 */	li r4, 0
/* 8047FBC0  7C 09 03 A6 */	mtctr r0
lbl_8047FBC4:
/* 8047FBC4  7C C3 22 14 */	add r6, r3, r4
/* 8047FBC8  A8 06 00 04 */	lha r0, 4(r6)
/* 8047FBCC  A8 C6 00 00 */	lha r6, 0(r6)
/* 8047FBD0  54 00 20 36 */	slwi r0, r0, 4
/* 8047FBD4  7C C0 32 14 */	add r6, r0, r6
/* 8047FBD8  7C DD 32 14 */	add r6, r29, r6
/* 8047FBDC  7C 05 30 AE */	lbzx r0, r5, r6
/* 8047FBE0  28 00 00 C8 */	cmplwi r0, 0xc8
/* 8047FBE4  41 82 00 0C */	beq lbl_8047FBF0
/* 8047FBE8  38 60 00 00 */	li r3, 0
/* 8047FBEC  48 00 00 38 */	b lbl_8047FC24
lbl_8047FBF0:
/* 8047FBF0  54 C0 08 3C */	slwi r0, r6, 1
/* 8047FBF4  7C 1F 02 2E */	lhzx r0, r31, r0
/* 8047FBF8  28 00 00 00 */	cmplwi r0, 0
/* 8047FBFC  41 82 00 0C */	beq lbl_8047FC08
/* 8047FC00  38 60 00 00 */	li r3, 0
/* 8047FC04  48 00 00 20 */	b lbl_8047FC24
lbl_8047FC08:
/* 8047FC08  7C 06 E0 00 */	cmpw r6, r28
/* 8047FC0C  40 82 00 0C */	bne lbl_8047FC18
/* 8047FC10  38 60 00 00 */	li r3, 0
/* 8047FC14  48 00 00 10 */	b lbl_8047FC24
lbl_8047FC18:
/* 8047FC18  38 84 00 06 */	addi r4, r4, 6
/* 8047FC1C  42 00 FF A8 */	bdnz lbl_8047FBC4
/* 8047FC20  38 60 00 01 */	li r3, 1
lbl_8047FC24:
/* 8047FC24  39 61 00 20 */	addi r11, r1, 0x20
/* 8047FC28  4B C1 B2 F1 */	bl func_8009AF18
/* 8047FC2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047FC30  7C 08 03 A6 */	mtlr r0
/* 8047FC34  38 21 00 20 */	addi r1, r1, 0x20
/* 8047FC38  4E 80 00 20 */	blr 
