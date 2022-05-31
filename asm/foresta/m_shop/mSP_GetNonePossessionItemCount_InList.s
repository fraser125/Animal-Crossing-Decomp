lbl_803EB178:
/* 803EB178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EB17C  7C 08 02 A6 */	mflr r0
/* 803EB180  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EB184  39 61 00 20 */	addi r11, r1, 0x20
/* 803EB188  4B CA FD 49 */	bl func_8009AED0
/* 803EB18C  28 03 00 00 */	cmplwi r3, 0
/* 803EB190  7C 9C 23 78 */	mr r28, r4
/* 803EB194  7C BD 2B 78 */	mr r29, r5
/* 803EB198  41 82 00 6C */	beq lbl_803EB204
/* 803EB19C  7C 7F 1B 78 */	mr r31, r3
/* 803EB1A0  3B C0 00 00 */	li r30, 0
/* 803EB1A4  48 00 00 4C */	b lbl_803EB1F0
lbl_803EB1A8:
/* 803EB1A8  2C 1C 00 00 */	cmpwi r28, 0
/* 803EB1AC  40 82 00 0C */	bne lbl_803EB1B8
/* 803EB1B0  4B FF C5 E1 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803EB1B4  48 00 00 18 */	b lbl_803EB1CC
lbl_803EB1B8:
/* 803EB1B8  2C 1C 00 03 */	cmpwi r28, 3
/* 803EB1BC  40 82 00 0C */	bne lbl_803EB1C8
/* 803EB1C0  38 63 DA 00 */	addi r3, r3, -9728
/* 803EB1C4  48 00 00 08 */	b lbl_803EB1CC
lbl_803EB1C8:
/* 803EB1C8  38 63 D9 00 */	addi r3, r3, -9984
lbl_803EB1CC:
/* 803EB1CC  7C 64 2E 70 */	srawi r4, r3, 5
/* 803EB1D0  54 60 06 FE */	clrlwi r0, r3, 0x1b
/* 803EB1D4  54 83 10 3A */	slwi r3, r4, 2
/* 803EB1D8  7C 7D 18 2E */	lwzx r3, r29, r3
/* 803EB1DC  7C 60 04 30 */	srw r0, r3, r0
/* 803EB1E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EB1E4  40 82 00 08 */	bne lbl_803EB1EC
/* 803EB1E8  3B DE 00 01 */	addi r30, r30, 1
lbl_803EB1EC:
/* 803EB1EC  3B FF 00 02 */	addi r31, r31, 2
lbl_803EB1F0:
/* 803EB1F0  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803EB1F4  28 03 00 00 */	cmplwi r3, 0
/* 803EB1F8  40 82 FF B0 */	bne lbl_803EB1A8
/* 803EB1FC  7F C3 F3 78 */	mr r3, r30
/* 803EB200  48 00 00 08 */	b lbl_803EB208
lbl_803EB204:
/* 803EB204  38 60 00 00 */	li r3, 0
lbl_803EB208:
/* 803EB208  39 61 00 20 */	addi r11, r1, 0x20
/* 803EB20C  4B CA FD 11 */	bl func_8009AF1C
/* 803EB210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EB214  7C 08 03 A6 */	mtlr r0
/* 803EB218  38 21 00 20 */	addi r1, r1, 0x20
/* 803EB21C  4E 80 00 20 */	blr 
