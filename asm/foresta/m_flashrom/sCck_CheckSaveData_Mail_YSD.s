lbl_803AF174:
/* 803AF174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AF178  7C 08 02 A6 */	mflr r0
/* 803AF17C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AF180  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF184  4B CE BD 4D */	bl func_8009AED0
/* 803AF188  7C 7C 1B 78 */	mr r28, r3
/* 803AF18C  3B C0 00 00 */	li r30, 0
/* 803AF190  3B A0 00 00 */	li r29, 0
/* 803AF194  3B E0 00 00 */	li r31, 0
lbl_803AF198:
/* 803AF198  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 803AF19C  38 80 00 00 */	li r4, 0
/* 803AF1A0  7C 7C 1A 14 */	add r3, r28, r3
/* 803AF1A4  4B FF DF 1D */	bl sChk_Mail_c_sub
/* 803AF1A8  3B BD 00 01 */	addi r29, r29, 1
/* 803AF1AC  7F DE 1B 78 */	or r30, r30, r3
/* 803AF1B0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 803AF1B4  3B FF 01 2A */	addi r31, r31, 0x12a
/* 803AF1B8  41 80 FF E0 */	blt lbl_803AF198
/* 803AF1BC  38 60 00 00 */	li r3, 0
/* 803AF1C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF1C4  4B CE BD 59 */	bl func_8009AF1C
/* 803AF1C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AF1CC  7C 08 03 A6 */	mtlr r0
/* 803AF1D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803AF1D4  4E 80 00 20 */	blr 
