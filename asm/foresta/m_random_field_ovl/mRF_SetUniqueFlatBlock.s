lbl_8050ACFC:
/* 8050ACFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050AD00  7C 08 02 A6 */	mflr r0
/* 8050AD04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050AD08  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AD0C  4B B9 01 C5 */	bl func_8009AED0
/* 8050AD10  7C 7C 1B 78 */	mr r28, r3
/* 8050AD14  3B E0 00 00 */	li r31, 0
/* 8050AD18  38 60 00 64 */	li r3, 0x64
/* 8050AD1C  4B FF E0 C5 */	bl mRF_GetRandom
/* 8050AD20  54 7E 07 FE */	clrlwi r30, r3, 0x1f
/* 8050AD24  7F 83 E3 78 */	mr r3, r28
/* 8050AD28  6B C0 00 01 */	xori r0, r30, 1
/* 8050AD2C  38 80 00 42 */	li r4, 0x42
/* 8050AD30  7F C5 F3 78 */	mr r5, r30
/* 8050AD34  38 C0 00 01 */	li r6, 1
/* 8050AD38  54 1D 07 FE */	clrlwi r29, r0, 0x1f
/* 8050AD3C  4B FF FE 7D */	bl mRF_FlatBlock2Unique
/* 8050AD40  2C 03 00 00 */	cmpwi r3, 0
/* 8050AD44  41 82 00 0C */	beq lbl_8050AD50
/* 8050AD48  63 FF 00 10 */	ori r31, r31, 0x10
/* 8050AD4C  48 00 00 24 */	b lbl_8050AD70
lbl_8050AD50:
/* 8050AD50  7F 83 E3 78 */	mr r3, r28
/* 8050AD54  7F A5 EB 78 */	mr r5, r29
/* 8050AD58  38 80 00 42 */	li r4, 0x42
/* 8050AD5C  38 C0 00 01 */	li r6, 1
/* 8050AD60  4B FF FE 59 */	bl mRF_FlatBlock2Unique
/* 8050AD64  2C 03 00 00 */	cmpwi r3, 0
/* 8050AD68  41 82 00 08 */	beq lbl_8050AD70
/* 8050AD6C  63 FF 00 10 */	ori r31, r31, 0x10
lbl_8050AD70:
/* 8050AD70  7F 83 E3 78 */	mr r3, r28
/* 8050AD74  7F A5 EB 78 */	mr r5, r29
/* 8050AD78  38 80 00 44 */	li r4, 0x44
/* 8050AD7C  38 C0 00 01 */	li r6, 1
/* 8050AD80  4B FF FE 39 */	bl mRF_FlatBlock2Unique
/* 8050AD84  2C 03 00 00 */	cmpwi r3, 0
/* 8050AD88  41 82 00 0C */	beq lbl_8050AD94
/* 8050AD8C  63 FF 00 20 */	ori r31, r31, 0x20
/* 8050AD90  48 00 00 24 */	b lbl_8050ADB4
lbl_8050AD94:
/* 8050AD94  7F 83 E3 78 */	mr r3, r28
/* 8050AD98  7F C5 F3 78 */	mr r5, r30
/* 8050AD9C  38 80 00 44 */	li r4, 0x44
/* 8050ADA0  38 C0 00 01 */	li r6, 1
/* 8050ADA4  4B FF FE 15 */	bl mRF_FlatBlock2Unique
/* 8050ADA8  2C 03 00 00 */	cmpwi r3, 0
/* 8050ADAC  41 82 00 08 */	beq lbl_8050ADB4
/* 8050ADB0  63 FF 00 20 */	ori r31, r31, 0x20
lbl_8050ADB4:
/* 8050ADB4  7F 83 E3 78 */	mr r3, r28
/* 8050ADB8  38 80 00 54 */	li r4, 0x54
/* 8050ADBC  38 A0 00 02 */	li r5, 2
/* 8050ADC0  38 C0 00 01 */	li r6, 1
/* 8050ADC4  4B FF FD F5 */	bl mRF_FlatBlock2Unique
/* 8050ADC8  2C 03 00 00 */	cmpwi r3, 0
/* 8050ADCC  41 82 00 08 */	beq lbl_8050ADD4
/* 8050ADD0  63 FF 00 40 */	ori r31, r31, 0x40
lbl_8050ADD4:
/* 8050ADD4  7F E3 FB 78 */	mr r3, r31
/* 8050ADD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050ADDC  4B B9 01 41 */	bl func_8009AF1C
/* 8050ADE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050ADE4  7C 08 03 A6 */	mtlr r0
/* 8050ADE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8050ADEC  4E 80 00 20 */	blr 
