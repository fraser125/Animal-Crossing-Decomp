lbl_803F79D8:
/* 803F79D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F79DC  7C 08 02 A6 */	mflr r0
/* 803F79E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F79E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803F79E8  4B CA 34 ED */	bl func_8009AED4
/* 803F79EC  3B C0 00 00 */	li r30, 0
/* 803F79F0  7C 7F 1B 78 */	mr r31, r3
/* 803F79F4  3B A0 00 00 */	li r29, 0
lbl_803F79F8:
/* 803F79F8  7F E3 FB 78 */	mr r3, r31
/* 803F79FC  7F A4 EB 78 */	mr r4, r29
/* 803F7A00  38 A1 00 08 */	addi r5, r1, 8
/* 803F7A04  4B C9 99 41 */	bl CARDFastOpen
/* 803F7A08  2C 03 00 00 */	cmpwi r3, 0
/* 803F7A0C  40 82 00 10 */	bne lbl_803F7A1C
/* 803F7A10  3B DE 00 01 */	addi r30, r30, 1
/* 803F7A14  38 61 00 08 */	addi r3, r1, 8
/* 803F7A18  4B C9 9C 05 */	bl CARDClose
lbl_803F7A1C:
/* 803F7A1C  3B BD 00 01 */	addi r29, r29, 1
/* 803F7A20  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 803F7A24  41 80 FF D4 */	blt lbl_803F79F8
/* 803F7A28  7F C3 F3 78 */	mr r3, r30
/* 803F7A2C  39 61 00 30 */	addi r11, r1, 0x30
/* 803F7A30  4B CA 34 F1 */	bl func_8009AF20
/* 803F7A34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F7A38  7C 08 03 A6 */	mtlr r0
/* 803F7A3C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F7A40  4E 80 00 20 */	blr 
