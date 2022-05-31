lbl_805FF01C:
/* 805FF01C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FF020  7C 08 02 A6 */	mflr r0
/* 805FF024  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FF028  39 61 00 20 */	addi r11, r1, 0x20
/* 805FF02C  4B A9 BE A1 */	bl func_8009AECC
/* 805FF030  3C C0 80 65 */	lis r6, lit_630@ha /* 0x8064B838@ha */
/* 805FF034  7C 7B 1B 78 */	mr r27, r3
/* 805FF038  7C 9C 23 78 */	mr r28, r4
/* 805FF03C  3B A5 03 78 */	addi r29, r5, 0x378
/* 805FF040  3B E6 B8 38 */	addi r31, r6, lit_630@l /* 0x8064B838@l */
/* 805FF044  3B C0 00 00 */	li r30, 0
lbl_805FF048:
/* 805FF048  A0 BD 00 00 */	lhz r5, 0(r29)
/* 805FF04C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805FF050  28 05 00 00 */	cmplwi r5, 0
/* 805FF054  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805FF058  41 82 00 18 */	beq lbl_805FF070
/* 805FF05C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805FF060  7F 63 DB 78 */	mr r3, r27
/* 805FF064  7F 84 E3 78 */	mr r4, r28
/* 805FF068  38 C0 00 00 */	li r6, 0
/* 805FF06C  4B FE FA AD */	bl mSM_draw_original
lbl_805FF070:
/* 805FF070  3B DE 00 01 */	addi r30, r30, 1
/* 805FF074  3B BD 00 0C */	addi r29, r29, 0xc
/* 805FF078  2C 1E 00 02 */	cmpwi r30, 2
/* 805FF07C  41 80 FF CC */	blt lbl_805FF048
/* 805FF080  39 61 00 20 */	addi r11, r1, 0x20
/* 805FF084  4B A9 BE 95 */	bl func_8009AF18
/* 805FF088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FF08C  7C 08 03 A6 */	mtlr r0
/* 805FF090  38 21 00 20 */	addi r1, r1, 0x20
/* 805FF094  4E 80 00 20 */	blr 
