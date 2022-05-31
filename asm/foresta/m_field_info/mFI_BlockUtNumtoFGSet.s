lbl_803A75C0:
/* 803A75C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A75C4  7C 08 02 A6 */	mflr r0
/* 803A75C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A75CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A75D0  4B CF 38 FD */	bl func_8009AECC
/* 803A75D4  7C 7B 1B 78 */	mr r27, r3
/* 803A75D8  7C 83 23 78 */	mr r3, r4
/* 803A75DC  7C DC 33 78 */	mr r28, r6
/* 803A75E0  7C FD 3B 78 */	mr r29, r7
/* 803A75E4  7C A4 2B 78 */	mr r4, r5
/* 803A75E8  3B C0 00 00 */	li r30, 0
/* 803A75EC  4B FF FB 69 */	bl mFI_BkNumtoUtFGTop
/* 803A75F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803A75F4  41 82 00 3C */	beq lbl_803A7630
/* 803A75F8  2C 1C 00 00 */	cmpwi r28, 0
/* 803A75FC  41 80 00 34 */	blt lbl_803A7630
/* 803A7600  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803A7604  40 80 00 2C */	bge lbl_803A7630
/* 803A7608  2C 1D 00 00 */	cmpwi r29, 0
/* 803A760C  41 80 00 24 */	blt lbl_803A7630
/* 803A7610  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803A7614  40 80 00 1C */	bge lbl_803A7630
/* 803A7618  7F 83 E3 78 */	mr r3, r28
/* 803A761C  7F A4 EB 78 */	mr r4, r29
/* 803A7620  4B FF DB DD */	bl mFI_GetUtNum
/* 803A7624  54 60 08 3C */	slwi r0, r3, 1
/* 803A7628  3B C0 00 01 */	li r30, 1
/* 803A762C  7F 7F 03 2E */	sthx r27, r31, r0
lbl_803A7630:
/* 803A7630  7F C3 F3 78 */	mr r3, r30
/* 803A7634  39 61 00 20 */	addi r11, r1, 0x20
/* 803A7638  4B CF 38 E1 */	bl func_8009AF18
/* 803A763C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A7640  7C 08 03 A6 */	mtlr r0
/* 803A7644  38 21 00 20 */	addi r1, r1, 0x20
/* 803A7648  4E 80 00 20 */	blr 
