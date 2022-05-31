lbl_803CD164:
/* 803CD164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CD168  7C 08 02 A6 */	mflr r0
/* 803CD16C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CD170  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD174  4B CC DD 5D */	bl func_8009AED0
/* 803CD178  7C 7F 1B 79 */	or. r31, r3, r3
/* 803CD17C  7C 9C 23 78 */	mr r28, r4
/* 803CD180  7C BD 2B 78 */	mr r29, r5
/* 803CD184  3B C0 00 00 */	li r30, 0
/* 803CD188  41 82 00 D0 */	beq lbl_803CD258
/* 803CD18C  28 1C 00 00 */	cmplwi r28, 0
/* 803CD190  41 82 00 C8 */	beq lbl_803CD258
/* 803CD194  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 803CD198  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 803CD19C  2C 00 00 02 */	cmpwi r0, 2
/* 803CD1A0  40 82 00 B8 */	bne lbl_803CD258
/* 803CD1A4  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803CD1A8  2C 00 00 04 */	cmpwi r0, 4
/* 803CD1AC  40 82 00 AC */	bne lbl_803CD258
/* 803CD1B0  4B FF E2 2D */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CD1B4  2C 03 00 00 */	cmpwi r3, 0
/* 803CD1B8  40 82 00 A0 */	bne lbl_803CD258
/* 803CD1BC  7F 83 E3 78 */	mr r3, r28
/* 803CD1C0  48 01 2E 85 */	bl mPr_NullCheckPersonalID
/* 803CD1C4  2C 03 00 00 */	cmpwi r3, 0
/* 803CD1C8  40 82 00 90 */	bne lbl_803CD258
/* 803CD1CC  7F 83 E3 78 */	mr r3, r28
/* 803CD1D0  38 9F 00 10 */	addi r4, r31, 0x10
/* 803CD1D4  38 A0 00 07 */	li r5, 7
/* 803CD1D8  4B FF EB A1 */	bl mNpc_GetAnimalMemoryIdx
/* 803CD1DC  2C 03 FF FF */	cmpwi r3, -1
/* 803CD1E0  41 82 00 78 */	beq lbl_803CD258
/* 803CD1E4  1C 83 01 38 */	mulli r4, r3, 0x138
/* 803CD1E8  38 04 00 40 */	addi r0, r4, 0x40
/* 803CD1EC  7C 1F 00 AE */	lbzx r0, r31, r0
/* 803CD1F0  7C 00 07 74 */	extsb r0, r0
/* 803CD1F4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 803CD1F8  40 81 00 60 */	ble lbl_803CD258
/* 803CD1FC  38 00 00 07 */	li r0, 7
/* 803CD200  38 DF 00 10 */	addi r6, r31, 0x10
/* 803CD204  38 E0 00 00 */	li r7, 0
/* 803CD208  38 A0 00 01 */	li r5, 1
/* 803CD20C  38 80 00 00 */	li r4, 0
/* 803CD210  7C 09 03 A6 */	mtctr r0
lbl_803CD214:
/* 803CD214  7C 07 18 00 */	cmpw r7, r3
/* 803CD218  40 82 00 14 */	bne lbl_803CD22C
/* 803CD21C  88 06 00 31 */	lbz r0, 0x31(r6)
/* 803CD220  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 803CD224  98 06 00 31 */	stb r0, 0x31(r6)
/* 803CD228  48 00 00 10 */	b lbl_803CD238
lbl_803CD22C:
/* 803CD22C  88 06 00 31 */	lbz r0, 0x31(r6)
/* 803CD230  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 803CD234  98 06 00 31 */	stb r0, 0x31(r6)
lbl_803CD238:
/* 803CD238  88 06 00 31 */	lbz r0, 0x31(r6)
/* 803CD23C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 803CD240  38 E7 00 01 */	addi r7, r7, 1
/* 803CD244  98 06 00 31 */	stb r0, 0x31(r6)
/* 803CD248  38 C6 01 38 */	addi r6, r6, 0x138
/* 803CD24C  42 00 FF C8 */	bdnz lbl_803CD214
/* 803CD250  B3 BF 08 EE */	sth r29, 0x8ee(r31)
/* 803CD254  3B C0 00 01 */	li r30, 1
lbl_803CD258:
/* 803CD258  7F C3 F3 78 */	mr r3, r30
/* 803CD25C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD260  4B CC DC BD */	bl func_8009AF1C
/* 803CD264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CD268  7C 08 03 A6 */	mtlr r0
/* 803CD26C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CD270  4E 80 00 20 */	blr 
