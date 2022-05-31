lbl_803BF1C0:
/* 803BF1C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BF1C4  7C 08 02 A6 */	mflr r0
/* 803BF1C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BF1CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF1D0  4B CD BD 01 */	bl func_8009AED0
/* 803BF1D4  3B E0 00 00 */	li r31, 0
/* 803BF1D8  7C 7C 1B 78 */	mr r28, r3
/* 803BF1DC  93 E3 00 04 */	stw r31, 4(r3)
/* 803BF1E0  7C 9D 23 78 */	mr r29, r4
/* 803BF1E4  3B C0 00 00 */	li r30, 0
/* 803BF1E8  93 E3 00 00 */	stw r31, 0(r3)
lbl_803BF1EC:
/* 803BF1EC  88 1D 00 00 */	lbz r0, 0(r29)
/* 803BF1F0  54 04 07 3E */	clrlwi r4, r0, 0x1c
/* 803BF1F4  7C 83 FE 70 */	srawi r3, r4, 0x1f
/* 803BF1F8  20 BF 00 3C */	subfic r5, r31, 0x3c
/* 803BF1FC  4B CD C1 49 */	bl __shl2i
/* 803BF200  80 1C 00 04 */	lwz r0, 4(r28)
/* 803BF204  3B DE 00 01 */	addi r30, r30, 1
/* 803BF208  80 BC 00 00 */	lwz r5, 0(r28)
/* 803BF20C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803BF210  7C 00 23 78 */	or r0, r0, r4
/* 803BF214  3B BD 00 01 */	addi r29, r29, 1
/* 803BF218  90 1C 00 04 */	stw r0, 4(r28)
/* 803BF21C  7C A0 1B 78 */	or r0, r5, r3
/* 803BF220  3B FF 00 04 */	addi r31, r31, 4
/* 803BF224  90 1C 00 00 */	stw r0, 0(r28)
/* 803BF228  41 80 FF C4 */	blt lbl_803BF1EC
/* 803BF22C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF230  4B CD BC ED */	bl func_8009AF1C
/* 803BF234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BF238  7C 08 03 A6 */	mtlr r0
/* 803BF23C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BF240  4E 80 00 20 */	blr 
