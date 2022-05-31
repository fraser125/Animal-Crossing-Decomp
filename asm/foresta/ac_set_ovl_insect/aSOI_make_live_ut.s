lbl_8049BFD4:
/* 8049BFD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049BFD8  7C 08 02 A6 */	mflr r0
/* 8049BFDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049BFE0  39 61 00 30 */	addi r11, r1, 0x30
/* 8049BFE4  4B BF EE D9 */	bl func_8009AEBC
/* 8049BFE8  7C 9E 23 78 */	mr r30, r4
/* 8049BFEC  3C 80 80 69 */	lis r4, aSOI_chk_live_area_data@ha /* 0x8068E218@ha */
/* 8049BFF0  1C FE 00 0C */	mulli r7, r30, 0xc
/* 8049BFF4  7C 7D 1B 78 */	mr r29, r3
/* 8049BFF8  38 04 E2 18 */	addi r0, r4, aSOI_chk_live_area_data@l /* 0x8068E218@l */
/* 8049BFFC  3B E5 00 40 */	addi r31, r5, 0x40
/* 8049C000  7F 80 3A 14 */	add r28, r0, r7
/* 8049C004  3A E6 00 80 */	addi r23, r6, 0x80
/* 8049C008  A3 7C 00 00 */	lhz r27, 0(r28)
/* 8049C00C  3B 20 00 02 */	li r25, 2
/* 8049C010  A3 5C 00 02 */	lhz r26, 2(r28)
lbl_8049C014:
/* 8049C014  3B 00 00 00 */	li r24, 0
lbl_8049C018:
/* 8049C018  2C 19 00 02 */	cmpwi r25, 2
/* 8049C01C  41 80 01 90 */	blt lbl_8049C1AC
/* 8049C020  2C 19 00 0E */	cmpwi r25, 0xe
/* 8049C024  40 80 01 88 */	bge lbl_8049C1AC
/* 8049C028  2C 18 00 02 */	cmpwi r24, 2
/* 8049C02C  41 80 01 80 */	blt lbl_8049C1AC
/* 8049C030  2C 18 00 0E */	cmpwi r24, 0xe
/* 8049C034  40 80 01 78 */	bge lbl_8049C1AC
/* 8049C038  80 1C 00 08 */	lwz r0, 8(r28)
/* 8049C03C  2C 00 00 02 */	cmpwi r0, 2
/* 8049C040  41 82 00 7C */	beq lbl_8049C0BC
/* 8049C044  40 80 00 14 */	bge lbl_8049C058
/* 8049C048  2C 00 00 00 */	cmpwi r0, 0
/* 8049C04C  41 82 00 18 */	beq lbl_8049C064
/* 8049C050  40 80 00 40 */	bge lbl_8049C090
/* 8049C054  48 00 01 58 */	b lbl_8049C1AC
lbl_8049C058:
/* 8049C058  2C 00 00 04 */	cmpwi r0, 4
/* 8049C05C  40 80 01 50 */	bge lbl_8049C1AC
/* 8049C060  48 00 01 20 */	b lbl_8049C180
lbl_8049C064:
/* 8049C064  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8049C068  7C 1B 00 40 */	cmplw r27, r0
/* 8049C06C  41 81 01 40 */	bgt lbl_8049C1AC
/* 8049C070  7C 00 D0 40 */	cmplw r0, r26
/* 8049C074  41 81 01 38 */	bgt lbl_8049C1AC
/* 8049C078  7F A3 EB 78 */	mr r3, r29
/* 8049C07C  7F 04 C3 78 */	mr r4, r24
/* 8049C080  7F 25 CB 78 */	mr r5, r25
/* 8049C084  38 C0 00 01 */	li r6, 1
/* 8049C088  4B FF E8 D1 */	bl aSOI_set_live_ut
/* 8049C08C  48 00 01 20 */	b lbl_8049C1AC
lbl_8049C090:
/* 8049C090  7E E3 BB 78 */	mr r3, r23
/* 8049C094  7F C4 F3 78 */	mr r4, r30
/* 8049C098  4B FF F5 71 */	bl aSOI_ins_field_attr_check_get_sub
/* 8049C09C  2C 03 00 01 */	cmpwi r3, 1
/* 8049C0A0  40 82 01 0C */	bne lbl_8049C1AC
/* 8049C0A4  7F A3 EB 78 */	mr r3, r29
/* 8049C0A8  7F 04 C3 78 */	mr r4, r24
/* 8049C0AC  7F 25 CB 78 */	mr r5, r25
/* 8049C0B0  38 C0 00 01 */	li r6, 1
/* 8049C0B4  4B FF E8 A5 */	bl aSOI_set_live_ut
/* 8049C0B8  48 00 00 F4 */	b lbl_8049C1AC
lbl_8049C0BC:
/* 8049C0BC  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8049C0C0  28 03 08 04 */	cmplwi r3, 0x804
/* 8049C0C4  41 82 00 A4 */	beq lbl_8049C168
/* 8049C0C8  38 03 FF A1 */	addi r0, r3, -95
/* 8049C0CC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049C0D0  28 00 00 01 */	cmplwi r0, 1
/* 8049C0D4  40 81 00 94 */	ble lbl_8049C168
/* 8049C0D8  28 03 00 69 */	cmplwi r3, 0x69
/* 8049C0DC  41 82 00 8C */	beq lbl_8049C168
/* 8049C0E0  28 03 08 0C */	cmplwi r3, 0x80c
/* 8049C0E4  41 82 00 84 */	beq lbl_8049C168
/* 8049C0E8  28 03 08 14 */	cmplwi r3, 0x814
/* 8049C0EC  41 82 00 7C */	beq lbl_8049C168
/* 8049C0F0  28 03 08 1C */	cmplwi r3, 0x81c
/* 8049C0F4  41 82 00 74 */	beq lbl_8049C168
/* 8049C0F8  28 03 08 24 */	cmplwi r3, 0x824
/* 8049C0FC  41 82 00 6C */	beq lbl_8049C168
/* 8049C100  28 03 08 2C */	cmplwi r3, 0x82c
/* 8049C104  41 82 00 64 */	beq lbl_8049C168
/* 8049C108  28 03 08 31 */	cmplwi r3, 0x831
/* 8049C10C  41 82 00 5C */	beq lbl_8049C168
/* 8049C110  28 03 08 36 */	cmplwi r3, 0x836
/* 8049C114  41 82 00 54 */	beq lbl_8049C168
/* 8049C118  28 03 08 3B */	cmplwi r3, 0x83b
/* 8049C11C  41 82 00 4C */	beq lbl_8049C168
/* 8049C120  28 03 08 53 */	cmplwi r3, 0x853
/* 8049C124  41 82 00 44 */	beq lbl_8049C168
/* 8049C128  28 03 08 61 */	cmplwi r3, 0x861
/* 8049C12C  41 82 00 3C */	beq lbl_8049C168
/* 8049C130  38 03 FF 88 */	addi r0, r3, -120
/* 8049C134  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049C138  28 00 00 01 */	cmplwi r0, 1
/* 8049C13C  40 81 00 2C */	ble lbl_8049C168
/* 8049C140  28 03 00 82 */	cmplwi r3, 0x82
/* 8049C144  41 82 00 24 */	beq lbl_8049C168
/* 8049C148  28 03 08 68 */	cmplwi r3, 0x868
/* 8049C14C  41 82 00 1C */	beq lbl_8049C168
/* 8049C150  38 03 FF 81 */	addi r0, r3, -127
/* 8049C154  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049C158  28 00 00 01 */	cmplwi r0, 1
/* 8049C15C  40 81 00 0C */	ble lbl_8049C168
/* 8049C160  28 03 08 67 */	cmplwi r3, 0x867
/* 8049C164  40 82 00 48 */	bne lbl_8049C1AC
lbl_8049C168:
/* 8049C168  7F A3 EB 78 */	mr r3, r29
/* 8049C16C  7F 04 C3 78 */	mr r4, r24
/* 8049C170  7F 25 CB 78 */	mr r5, r25
/* 8049C174  38 C0 00 01 */	li r6, 1
/* 8049C178  4B FF E7 E1 */	bl aSOI_set_live_ut
/* 8049C17C  48 00 00 30 */	b lbl_8049C1AC
lbl_8049C180:
/* 8049C180  7E E3 BB 78 */	mr r3, r23
/* 8049C184  7F E4 FB 78 */	mr r4, r31
/* 8049C188  7F C5 F3 78 */	mr r5, r30
/* 8049C18C  4B FF F6 DD */	bl aSOI_ins_field_attr_and_fg_check_get_sub
/* 8049C190  2C 03 00 01 */	cmpwi r3, 1
/* 8049C194  40 82 00 18 */	bne lbl_8049C1AC
/* 8049C198  7F A3 EB 78 */	mr r3, r29
/* 8049C19C  7F 04 C3 78 */	mr r4, r24
/* 8049C1A0  7F 25 CB 78 */	mr r5, r25
/* 8049C1A4  38 C0 00 01 */	li r6, 1
/* 8049C1A8  4B FF E7 B1 */	bl aSOI_set_live_ut
lbl_8049C1AC:
/* 8049C1AC  3B 18 00 01 */	addi r24, r24, 1
/* 8049C1B0  3A F7 00 04 */	addi r23, r23, 4
/* 8049C1B4  2C 18 00 10 */	cmpwi r24, 0x10
/* 8049C1B8  3B FF 00 02 */	addi r31, r31, 2
/* 8049C1BC  41 80 FE 5C */	blt lbl_8049C018
/* 8049C1C0  3B 39 00 01 */	addi r25, r25, 1
/* 8049C1C4  2C 19 00 0E */	cmpwi r25, 0xe
/* 8049C1C8  41 80 FE 4C */	blt lbl_8049C014
/* 8049C1CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8049C1D0  4B BF ED 39 */	bl func_8009AF08
/* 8049C1D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049C1D8  7C 08 03 A6 */	mtlr r0
/* 8049C1DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8049C1E0  4E 80 00 20 */	blr 
