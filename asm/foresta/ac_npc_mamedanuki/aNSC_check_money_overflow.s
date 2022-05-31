lbl_8055B0B0:
/* 8055B0B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055B0B4  7C 08 02 A6 */	mflr r0
/* 8055B0B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055B0BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B0C0  4B B3 FE 15 */	bl func_8009AED4
/* 8055B0C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055B0C8  7C 9E 23 78 */	mr r30, r4
/* 8055B0CC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8055B0D0  7C 7D 1B 78 */	mr r29, r3
/* 8055B0D4  3C 64 00 02 */	addis r3, r4, 2
/* 8055B0D8  3B E0 00 00 */	li r31, 0
/* 8055B0DC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055B0E0  38 80 00 00 */	li r4, 0
/* 8055B0E4  4B E8 58 AD */	bl mPr_GetPossessionItemSum
/* 8055B0E8  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001869F@ha */
/* 8055B0EC  38 9D 75 30 */	addi r4, r29, 0x7530
/* 8055B0F0  38 A5 86 9F */	addi r5, r5, 0x869F /* 0x0001869F@l */
/* 8055B0F4  38 00 75 30 */	li r0, 0x7530
/* 8055B0F8  7C 85 20 50 */	subf r4, r5, r4
/* 8055B0FC  38 C0 00 00 */	li r6, 0
/* 8055B100  7C 84 03 96 */	divwu r4, r4, r0
/* 8055B104  7C 89 03 A6 */	mtctr r4
/* 8055B108  7C 1D 28 40 */	cmplw r29, r5
/* 8055B10C  41 80 00 0C */	blt lbl_8055B118
lbl_8055B110:
/* 8055B110  38 C6 00 01 */	addi r6, r6, 1
/* 8055B114  42 00 FF FC */	bdnz lbl_8055B110
lbl_8055B118:
/* 8055B118  7C 03 F2 14 */	add r0, r3, r30
/* 8055B11C  7C 06 00 40 */	cmplw r6, r0
/* 8055B120  41 81 00 08 */	bgt lbl_8055B128
/* 8055B124  3B E0 00 01 */	li r31, 1
lbl_8055B128:
/* 8055B128  7F E3 FB 78 */	mr r3, r31
/* 8055B12C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B130  4B B3 FD F1 */	bl func_8009AF20
/* 8055B134  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B138  7C 08 03 A6 */	mtlr r0
/* 8055B13C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055B140  4E 80 00 20 */	blr 
