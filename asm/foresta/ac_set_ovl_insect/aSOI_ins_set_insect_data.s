lbl_8049BBB0:
/* 8049BBB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049BBB4  7C 08 02 A6 */	mflr r0
/* 8049BBB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049BBBC  39 61 00 30 */	addi r11, r1, 0x30
/* 8049BBC0  4B BF F3 15 */	bl func_8009AED4
/* 8049BBC4  7C 9E 23 78 */	mr r30, r4
/* 8049BBC8  7C 7D 1B 78 */	mr r29, r3
/* 8049BBCC  2C 1E FF FF */	cmpwi r30, -1
/* 8049BBD0  7C BF 2B 78 */	mr r31, r5
/* 8049BBD4  41 82 01 38 */	beq lbl_8049BD0C
/* 8049BBD8  38 81 00 10 */	addi r4, r1, 0x10
/* 8049BBDC  38 A1 00 0C */	addi r5, r1, 0xc
/* 8049BBE0  4B FF EE 05 */	bl aSOI_get_live_ut
/* 8049BBE4  2C 03 00 01 */	cmpwi r3, 1
/* 8049BBE8  40 82 01 1C */	bne lbl_8049BD04
/* 8049BBEC  9B DD 00 00 */	stb r30, 0(r29)
/* 8049BBF0  38 60 00 01 */	li r3, 1
/* 8049BBF4  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 8049BBF8  38 00 00 00 */	li r0, 0
/* 8049BBFC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8049BC00  98 9D 00 01 */	stb r4, 1(r29)
/* 8049BC04  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8049BC08  98 9D 00 02 */	stb r4, 2(r29)
/* 8049BC0C  98 7D 00 03 */	stb r3, 3(r29)
/* 8049BC10  90 1D 00 04 */	stw r0, 4(r29)
/* 8049BC14  40 82 00 F8 */	bne lbl_8049BD0C
/* 8049BC18  80 9F 00 00 */	lwz r4, 0(r31)
/* 8049BC1C  38 61 00 08 */	addi r3, r1, 8
/* 8049BC20  80 BF 00 04 */	lwz r5, 4(r31)
/* 8049BC24  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8049BC28  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8049BC2C  4B F0 B8 C5 */	bl mFI_GetBlockUtNum2FG
/* 8049BC30  2C 03 00 01 */	cmpwi r3, 1
/* 8049BC34  40 82 00 D8 */	bne lbl_8049BD0C
/* 8049BC38  A0 61 00 08 */	lhz r3, 8(r1)
/* 8049BC3C  28 03 08 04 */	cmplwi r3, 0x804
/* 8049BC40  41 82 00 A4 */	beq lbl_8049BCE4
/* 8049BC44  38 03 FF A1 */	addi r0, r3, -95
/* 8049BC48  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049BC4C  28 00 00 01 */	cmplwi r0, 1
/* 8049BC50  40 81 00 94 */	ble lbl_8049BCE4
/* 8049BC54  28 03 00 69 */	cmplwi r3, 0x69
/* 8049BC58  41 82 00 8C */	beq lbl_8049BCE4
/* 8049BC5C  28 03 08 0C */	cmplwi r3, 0x80c
/* 8049BC60  41 82 00 84 */	beq lbl_8049BCE4
/* 8049BC64  28 03 08 14 */	cmplwi r3, 0x814
/* 8049BC68  41 82 00 7C */	beq lbl_8049BCE4
/* 8049BC6C  28 03 08 1C */	cmplwi r3, 0x81c
/* 8049BC70  41 82 00 74 */	beq lbl_8049BCE4
/* 8049BC74  28 03 08 24 */	cmplwi r3, 0x824
/* 8049BC78  41 82 00 6C */	beq lbl_8049BCE4
/* 8049BC7C  28 03 08 2C */	cmplwi r3, 0x82c
/* 8049BC80  41 82 00 64 */	beq lbl_8049BCE4
/* 8049BC84  28 03 08 31 */	cmplwi r3, 0x831
/* 8049BC88  41 82 00 5C */	beq lbl_8049BCE4
/* 8049BC8C  28 03 08 36 */	cmplwi r3, 0x836
/* 8049BC90  41 82 00 54 */	beq lbl_8049BCE4
/* 8049BC94  28 03 08 3B */	cmplwi r3, 0x83b
/* 8049BC98  41 82 00 4C */	beq lbl_8049BCE4
/* 8049BC9C  28 03 08 53 */	cmplwi r3, 0x853
/* 8049BCA0  41 82 00 44 */	beq lbl_8049BCE4
/* 8049BCA4  28 03 08 61 */	cmplwi r3, 0x861
/* 8049BCA8  41 82 00 3C */	beq lbl_8049BCE4
/* 8049BCAC  38 03 FF 88 */	addi r0, r3, -120
/* 8049BCB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049BCB4  28 00 00 01 */	cmplwi r0, 1
/* 8049BCB8  40 81 00 2C */	ble lbl_8049BCE4
/* 8049BCBC  28 03 00 82 */	cmplwi r3, 0x82
/* 8049BCC0  41 82 00 24 */	beq lbl_8049BCE4
/* 8049BCC4  28 03 08 68 */	cmplwi r3, 0x868
/* 8049BCC8  41 82 00 1C */	beq lbl_8049BCE4
/* 8049BCCC  38 03 FF 81 */	addi r0, r3, -127
/* 8049BCD0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049BCD4  28 00 00 01 */	cmplwi r0, 1
/* 8049BCD8  40 81 00 0C */	ble lbl_8049BCE4
/* 8049BCDC  28 03 08 67 */	cmplwi r3, 0x867
/* 8049BCE0  40 82 00 10 */	bne lbl_8049BCF0
lbl_8049BCE4:
/* 8049BCE4  38 00 00 04 */	li r0, 4
/* 8049BCE8  90 1D 00 04 */	stw r0, 4(r29)
/* 8049BCEC  48 00 00 20 */	b lbl_8049BD0C
lbl_8049BCF0:
/* 8049BCF0  28 03 2F 03 */	cmplwi r3, 0x2f03
/* 8049BCF4  40 82 00 18 */	bne lbl_8049BD0C
/* 8049BCF8  38 00 00 06 */	li r0, 6
/* 8049BCFC  90 1D 00 04 */	stw r0, 4(r29)
/* 8049BD00  48 00 00 0C */	b lbl_8049BD0C
lbl_8049BD04:
/* 8049BD04  38 00 00 00 */	li r0, 0
/* 8049BD08  98 1D 00 03 */	stb r0, 3(r29)
lbl_8049BD0C:
/* 8049BD0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8049BD10  4B BF F2 11 */	bl func_8009AF20
/* 8049BD14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049BD18  7C 08 03 A6 */	mtlr r0
/* 8049BD1C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049BD20  4E 80 00 20 */	blr 
