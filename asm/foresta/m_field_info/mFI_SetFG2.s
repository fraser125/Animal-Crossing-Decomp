lbl_803A78B0:
/* 803A78B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A78B4  7C 08 02 A6 */	mflr r0
/* 803A78B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A78BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803A78C0  3B E0 00 00 */	li r31, 0
/* 803A78C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803A78C8  7C 7E 1B 78 */	mr r30, r3
/* 803A78CC  38 61 00 0C */	addi r3, r1, 0xc
/* 803A78D0  80 A4 00 00 */	lwz r5, 0(r4)
/* 803A78D4  80 C4 00 04 */	lwz r6, 4(r4)
/* 803A78D8  80 04 00 08 */	lwz r0, 8(r4)
/* 803A78DC  38 81 00 08 */	addi r4, r1, 8
/* 803A78E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803A78E4  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A78E8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A78EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A78F0  4B FF DA 79 */	bl mFI_Wpos2UtNum
/* 803A78F4  2C 03 00 01 */	cmpwi r3, 1
/* 803A78F8  40 82 00 1C */	bne lbl_803A7914
/* 803A78FC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A7900  7F C3 F3 78 */	mr r3, r30
/* 803A7904  80 A1 00 08 */	lwz r5, 8(r1)
/* 803A7908  38 C0 00 01 */	li r6, 1
/* 803A790C  4B FF FE 55 */	bl mFI_UtNum2FGSet_layer
/* 803A7910  3B E0 00 01 */	li r31, 1
lbl_803A7914:
/* 803A7914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7918  7F E3 FB 78 */	mr r3, r31
/* 803A791C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803A7920  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803A7924  7C 08 03 A6 */	mtlr r0
/* 803A7928  38 21 00 30 */	addi r1, r1, 0x30
/* 803A792C  4E 80 00 20 */	blr 
