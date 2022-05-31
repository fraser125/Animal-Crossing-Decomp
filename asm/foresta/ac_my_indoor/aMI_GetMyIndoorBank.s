lbl_8046EDB4:
/* 8046EDB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046EDB8  7C 08 02 A6 */	mflr r0
/* 8046EDBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046EDC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8046EDC4  4B C2 C1 0D */	bl func_8009AED0
/* 8046EDC8  7C 7C 1B 78 */	mr r28, r3
/* 8046EDCC  7C 9D 23 78 */	mr r29, r4
/* 8046EDD0  3B C0 00 00 */	li r30, 0
/* 8046EDD4  3B E0 00 00 */	li r31, 0
lbl_8046EDD8:
/* 8046EDD8  7F A4 EB 78 */	mr r4, r29
/* 8046EDDC  38 60 10 20 */	li r3, 0x1020
/* 8046EDE0  4B FF FF B1 */	bl aMI_SucureBank
/* 8046EDE4  3B DE 00 01 */	addi r30, r30, 1
/* 8046EDE8  38 1F 01 94 */	addi r0, r31, 0x194
/* 8046EDEC  2C 1E 00 02 */	cmpwi r30, 2
/* 8046EDF0  7C 7C 01 2E */	stwx r3, r28, r0
/* 8046EDF4  3B FF 00 18 */	addi r31, r31, 0x18
/* 8046EDF8  41 80 FF E0 */	blt lbl_8046EDD8
/* 8046EDFC  3B C0 00 00 */	li r30, 0
/* 8046EE00  3B E0 00 00 */	li r31, 0
lbl_8046EE04:
/* 8046EE04  7F A4 EB 78 */	mr r4, r29
/* 8046EE08  38 60 20 20 */	li r3, 0x2020
/* 8046EE0C  4B FF FF 85 */	bl aMI_SucureBank
/* 8046EE10  3B DE 00 01 */	addi r30, r30, 1
/* 8046EE14  38 1F 01 90 */	addi r0, r31, 0x190
/* 8046EE18  2C 1E 00 02 */	cmpwi r30, 2
/* 8046EE1C  7C 7C 01 2E */	stwx r3, r28, r0
/* 8046EE20  3B FF 00 18 */	addi r31, r31, 0x18
/* 8046EE24  41 80 FF E0 */	blt lbl_8046EE04
/* 8046EE28  39 61 00 20 */	addi r11, r1, 0x20
/* 8046EE2C  4B C2 C0 F1 */	bl func_8009AF1C
/* 8046EE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046EE34  7C 08 03 A6 */	mtlr r0
/* 8046EE38  38 21 00 20 */	addi r1, r1, 0x20
/* 8046EE3C  4E 80 00 20 */	blr 
