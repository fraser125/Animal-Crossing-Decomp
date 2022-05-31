lbl_8047FF5C:
/* 8047FF5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047FF60  7C 08 02 A6 */	mflr r0
/* 8047FF64  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047FF68  39 61 00 40 */	addi r11, r1, 0x40
/* 8047FF6C  4B C1 AF 59 */	bl func_8009AEC4
/* 8047FF70  7C 79 1B 78 */	mr r25, r3
/* 8047FF74  A0 63 00 00 */	lhz r3, 0(r3)
/* 8047FF78  4B FF 02 29 */	bl func_804701A0
/* 8047FF7C  8B B9 00 3E */	lbz r29, 0x3e(r25)
/* 8047FF80  7C 7C 1B 78 */	mr r28, r3
/* 8047FF84  80 F9 00 08 */	lwz r7, 8(r25)
/* 8047FF88  38 61 00 0C */	addi r3, r1, 0xc
/* 8047FF8C  80 19 00 0C */	lwz r0, 0xc(r25)
/* 8047FF90  7F A6 EB 78 */	mr r6, r29
/* 8047FF94  38 81 00 08 */	addi r4, r1, 8
/* 8047FF98  38 A1 00 10 */	addi r5, r1, 0x10
/* 8047FF9C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8047FFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047FFA4  80 19 00 10 */	lwz r0, 0x10(r25)
/* 8047FFA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047FFAC  4B FF 10 A5 */	bl aMR_Wpos2PlaceNumber
/* 8047FFB0  80 01 00 08 */	lwz r0, 8(r1)
/* 8047FFB4  2C 1D 00 03 */	cmpwi r29, 3
/* 8047FFB8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8047FFBC  54 00 20 36 */	slwi r0, r0, 4
/* 8047FFC0  7F E3 02 14 */	add r31, r3, r0
/* 8047FFC4  40 81 00 A4 */	ble lbl_80480068
/* 8047FFC8  88 1C 00 2A */	lbz r0, 0x2a(r28)
/* 8047FFCC  28 00 00 00 */	cmplwi r0, 0
/* 8047FFD0  41 82 00 98 */	beq lbl_80480068
/* 8047FFD4  3C 60 80 69 */	lis r3, next_table@ha /* 0x806891E0@ha */
/* 8047FFD8  57 A0 10 3A */	slwi r0, r29, 2
/* 8047FFDC  38 63 91 E0 */	addi r3, r3, next_table@l /* 0x806891E0@l */
/* 8047FFE0  7C A3 00 2E */	lwzx r5, r3, r0
/* 8047FFE4  28 05 00 00 */	cmplwi r5, 0
/* 8047FFE8  41 82 00 80 */	beq lbl_80480068
/* 8047FFEC  3C 80 80 69 */	lis r4, l_place_table@ha /* 0x8068877C@ha */
/* 8047FFF0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047FFF4  83 65 00 04 */	lwz r27, 4(r5)
/* 8047FFF8  3B 84 87 7C */	addi r28, r4, l_place_table@l /* 0x8068877C@l */
/* 8047FFFC  83 45 00 00 */	lwz r26, 0(r5)
/* 80480000  3B A3 DF E8 */	addi r29, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80480004  3B 20 00 00 */	li r25, 0
/* 80480008  3B C0 00 00 */	li r30, 0
/* 8048000C  48 00 00 54 */	b lbl_80480060
lbl_80480010:
/* 80480010  7C 7A F2 14 */	add r3, r26, r30
/* 80480014  A8 03 00 04 */	lha r0, 4(r3)
/* 80480018  A8 63 00 00 */	lha r3, 0(r3)
/* 8048001C  54 00 20 36 */	slwi r0, r0, 4
/* 80480020  7C 00 1A 14 */	add r0, r0, r3
/* 80480024  7C 1F 02 14 */	add r0, r31, r0
/* 80480028  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8048002C  28 00 00 C8 */	cmplwi r0, 0xc8
/* 80480030  41 82 00 28 */	beq lbl_80480058
/* 80480034  1C 00 08 58 */	mulli r0, r0, 0x858
/* 80480038  80 7D 00 00 */	lwz r3, 0(r29)
/* 8048003C  7C 63 02 2E */	lhzx r3, r3, r0
/* 80480040  4B FF 01 61 */	bl func_804701A0
/* 80480044  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 80480048  28 00 00 00 */	cmplwi r0, 0
/* 8048004C  41 82 00 0C */	beq lbl_80480058
/* 80480050  38 60 00 00 */	li r3, 0
/* 80480054  48 00 00 18 */	b lbl_8048006C
lbl_80480058:
/* 80480058  3B 39 00 01 */	addi r25, r25, 1
/* 8048005C  3B DE 00 06 */	addi r30, r30, 6
lbl_80480060:
/* 80480060  7C 19 D8 00 */	cmpw r25, r27
/* 80480064  41 80 FF AC */	blt lbl_80480010
lbl_80480068:
/* 80480068  38 60 00 01 */	li r3, 1
lbl_8048006C:
/* 8048006C  39 61 00 40 */	addi r11, r1, 0x40
/* 80480070  4B C1 AE A1 */	bl func_8009AF10
/* 80480074  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80480078  7C 08 03 A6 */	mtlr r0
/* 8048007C  38 21 00 40 */	addi r1, r1, 0x40
/* 80480080  4E 80 00 20 */	blr 
