lbl_803CBD78:
/* 803CBD78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CBD7C  7C 08 02 A6 */	mflr r0
/* 803CBD80  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CBD84  39 61 00 20 */	addi r11, r1, 0x20
/* 803CBD88  4B CC F1 45 */	bl func_8009AECC
/* 803CBD8C  7C 7B 1B 78 */	mr r27, r3
/* 803CBD90  7C 9C 23 78 */	mr r28, r4
/* 803CBD94  7C BD 2B 78 */	mr r29, r5
/* 803CBD98  3B E0 FF FF */	li r31, -1
/* 803CBD9C  3B C0 00 00 */	li r30, 0
/* 803CBDA0  48 00 00 28 */	b lbl_803CBDC8
lbl_803CBDA4:
/* 803CBDA4  7F 83 E3 78 */	mr r3, r28
/* 803CBDA8  7F 64 DB 78 */	mr r4, r27
/* 803CBDAC  48 01 43 99 */	bl mPr_CheckCmpPersonalID
/* 803CBDB0  2C 03 00 01 */	cmpwi r3, 1
/* 803CBDB4  40 82 00 0C */	bne lbl_803CBDC0
/* 803CBDB8  7F DF F3 78 */	mr r31, r30
/* 803CBDBC  48 00 00 14 */	b lbl_803CBDD0
lbl_803CBDC0:
/* 803CBDC0  3B 9C 01 38 */	addi r28, r28, 0x138
/* 803CBDC4  3B DE 00 01 */	addi r30, r30, 1
lbl_803CBDC8:
/* 803CBDC8  7C 1E E8 00 */	cmpw r30, r29
/* 803CBDCC  41 80 FF D8 */	blt lbl_803CBDA4
lbl_803CBDD0:
/* 803CBDD0  7F E3 FB 78 */	mr r3, r31
/* 803CBDD4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CBDD8  4B CC F1 41 */	bl func_8009AF18
/* 803CBDDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CBDE0  7C 08 03 A6 */	mtlr r0
/* 803CBDE4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CBDE8  4E 80 00 20 */	blr 
