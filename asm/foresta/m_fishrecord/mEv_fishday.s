lbl_803ABE10:
/* 803ABE10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803ABE14  7C 08 02 A6 */	mflr r0
/* 803ABE18  90 01 00 34 */	stw r0, 0x34(r1)
/* 803ABE1C  39 61 00 30 */	addi r11, r1, 0x30
/* 803ABE20  4B CE F0 A5 */	bl func_8009AEC4
/* 803ABE24  7C 7E 1B 78 */	mr r30, r3
/* 803ABE28  38 61 00 08 */	addi r3, r1, 8
/* 803ABE2C  48 05 B4 09 */	bl lbRTC_TimeCopy
/* 803ABE30  38 61 00 08 */	addi r3, r1, 8
/* 803ABE34  38 80 00 06 */	li r4, 6
/* 803ABE38  48 05 AF 55 */	bl lbRTC_Add_hh
/* 803ABE3C  8B 61 00 0D */	lbz r27, 0xd(r1)
/* 803ABE40  3B E0 00 04 */	li r31, 4
/* 803ABE44  A3 81 00 0E */	lhz r28, 0xe(r1)
/* 803ABE48  3B A0 00 10 */	li r29, 0x10
/* 803ABE4C  28 1B 00 0B */	cmplwi r27, 0xb
/* 803ABE50  8B 41 00 0B */	lbz r26, 0xb(r1)
/* 803ABE54  41 80 00 70 */	blt lbl_803ABEC4
/* 803ABE58  3B 20 00 04 */	li r25, 4
lbl_803ABE5C:
/* 803ABE5C  7F 83 E3 78 */	mr r3, r28
/* 803ABE60  7F 25 CB 78 */	mr r5, r25
/* 803ABE64  38 80 00 0B */	li r4, 0xb
/* 803ABE68  4B FF FF 21 */	bl mEv_fishday_day
/* 803ABE6C  28 03 00 00 */	cmplwi r3, 0
/* 803ABE70  41 82 00 4C */	beq lbl_803ABEBC
/* 803ABE74  28 1B 00 0B */	cmplwi r27, 0xb
/* 803ABE78  41 81 00 10 */	bgt lbl_803ABE88
/* 803ABE7C  88 03 00 03 */	lbz r0, 3(r3)
/* 803ABE80  7C 1A 00 40 */	cmplw r26, r0
/* 803ABE84  40 81 00 38 */	ble lbl_803ABEBC
lbl_803ABE88:
/* 803ABE88  A0 03 00 00 */	lhz r0, 0(r3)
/* 803ABE8C  7C 9E EA 14 */	add r4, r30, r29
/* 803ABE90  2C 1F 00 00 */	cmpwi r31, 0
/* 803ABE94  B0 04 00 00 */	sth r0, 0(r4)
/* 803ABE98  88 03 00 02 */	lbz r0, 2(r3)
/* 803ABE9C  98 04 00 02 */	stb r0, 2(r4)
/* 803ABEA0  88 03 00 03 */	lbz r0, 3(r3)
/* 803ABEA4  98 04 00 03 */	stb r0, 3(r4)
/* 803ABEA8  41 81 00 0C */	bgt lbl_803ABEB4
/* 803ABEAC  38 60 00 01 */	li r3, 1
/* 803ABEB0  48 00 01 58 */	b lbl_803AC008
lbl_803ABEB4:
/* 803ABEB4  3B FF FF FF */	addi r31, r31, -1
/* 803ABEB8  3B BD FF FC */	addi r29, r29, -4
lbl_803ABEBC:
/* 803ABEBC  37 39 FF FF */	addic. r25, r25, -1
/* 803ABEC0  40 80 FF 9C */	bge lbl_803ABE5C
lbl_803ABEC4:
/* 803ABEC4  28 1B 00 06 */	cmplwi r27, 6
/* 803ABEC8  41 80 00 74 */	blt lbl_803ABF3C
/* 803ABECC  3B 20 00 04 */	li r25, 4
/* 803ABED0  57 FD 10 3A */	slwi r29, r31, 2
lbl_803ABED4:
/* 803ABED4  7F 83 E3 78 */	mr r3, r28
/* 803ABED8  7F 25 CB 78 */	mr r5, r25
/* 803ABEDC  38 80 00 06 */	li r4, 6
/* 803ABEE0  4B FF FE A9 */	bl mEv_fishday_day
/* 803ABEE4  28 03 00 00 */	cmplwi r3, 0
/* 803ABEE8  41 82 00 4C */	beq lbl_803ABF34
/* 803ABEEC  28 1B 00 06 */	cmplwi r27, 6
/* 803ABEF0  41 81 00 10 */	bgt lbl_803ABF00
/* 803ABEF4  88 03 00 03 */	lbz r0, 3(r3)
/* 803ABEF8  7C 1A 00 40 */	cmplw r26, r0
/* 803ABEFC  40 81 00 38 */	ble lbl_803ABF34
lbl_803ABF00:
/* 803ABF00  A0 03 00 00 */	lhz r0, 0(r3)
/* 803ABF04  7C 9E EA 14 */	add r4, r30, r29
/* 803ABF08  2C 1F 00 00 */	cmpwi r31, 0
/* 803ABF0C  B0 04 00 00 */	sth r0, 0(r4)
/* 803ABF10  88 03 00 02 */	lbz r0, 2(r3)
/* 803ABF14  98 04 00 02 */	stb r0, 2(r4)
/* 803ABF18  88 03 00 03 */	lbz r0, 3(r3)
/* 803ABF1C  98 04 00 03 */	stb r0, 3(r4)
/* 803ABF20  41 81 00 0C */	bgt lbl_803ABF2C
/* 803ABF24  38 60 00 01 */	li r3, 1
/* 803ABF28  48 00 00 E0 */	b lbl_803AC008
lbl_803ABF2C:
/* 803ABF2C  3B FF FF FF */	addi r31, r31, -1
/* 803ABF30  3B BD FF FC */	addi r29, r29, -4
lbl_803ABF34:
/* 803ABF34  37 39 FF FF */	addic. r25, r25, -1
/* 803ABF38  40 80 FF 9C */	bge lbl_803ABED4
lbl_803ABF3C:
/* 803ABF3C  38 61 00 08 */	addi r3, r1, 8
/* 803ABF40  38 80 00 01 */	li r4, 1
/* 803ABF44  48 05 AF E1 */	bl lbRTC_Sub_YY
/* 803ABF48  A3 21 00 0E */	lhz r25, 0xe(r1)
/* 803ABF4C  57 FD 10 3A */	slwi r29, r31, 2
/* 803ABF50  3B 40 00 04 */	li r26, 4
lbl_803ABF54:
/* 803ABF54  7F 23 CB 78 */	mr r3, r25
/* 803ABF58  7F 45 D3 78 */	mr r5, r26
/* 803ABF5C  38 80 00 0B */	li r4, 0xb
/* 803ABF60  4B FF FE 29 */	bl mEv_fishday_day
/* 803ABF64  28 03 00 00 */	cmplwi r3, 0
/* 803ABF68  41 82 00 38 */	beq lbl_803ABFA0
/* 803ABF6C  A0 03 00 00 */	lhz r0, 0(r3)
/* 803ABF70  7C 9E EA 14 */	add r4, r30, r29
/* 803ABF74  2C 1F 00 00 */	cmpwi r31, 0
/* 803ABF78  B0 04 00 00 */	sth r0, 0(r4)
/* 803ABF7C  88 03 00 02 */	lbz r0, 2(r3)
/* 803ABF80  98 04 00 02 */	stb r0, 2(r4)
/* 803ABF84  88 03 00 03 */	lbz r0, 3(r3)
/* 803ABF88  98 04 00 03 */	stb r0, 3(r4)
/* 803ABF8C  41 81 00 0C */	bgt lbl_803ABF98
/* 803ABF90  38 60 00 01 */	li r3, 1
/* 803ABF94  48 00 00 74 */	b lbl_803AC008
lbl_803ABF98:
/* 803ABF98  3B FF FF FF */	addi r31, r31, -1
/* 803ABF9C  3B BD FF FC */	addi r29, r29, -4
lbl_803ABFA0:
/* 803ABFA0  37 5A FF FF */	addic. r26, r26, -1
/* 803ABFA4  40 80 FF B0 */	bge lbl_803ABF54
/* 803ABFA8  3B 40 00 04 */	li r26, 4
/* 803ABFAC  57 FD 10 3A */	slwi r29, r31, 2
lbl_803ABFB0:
/* 803ABFB0  7F 23 CB 78 */	mr r3, r25
/* 803ABFB4  7F 45 D3 78 */	mr r5, r26
/* 803ABFB8  38 80 00 06 */	li r4, 6
/* 803ABFBC  4B FF FD CD */	bl mEv_fishday_day
/* 803ABFC0  28 03 00 00 */	cmplwi r3, 0
/* 803ABFC4  41 82 00 38 */	beq lbl_803ABFFC
/* 803ABFC8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803ABFCC  7C 9E EA 14 */	add r4, r30, r29
/* 803ABFD0  2C 1F 00 00 */	cmpwi r31, 0
/* 803ABFD4  B0 04 00 00 */	sth r0, 0(r4)
/* 803ABFD8  88 03 00 02 */	lbz r0, 2(r3)
/* 803ABFDC  98 04 00 02 */	stb r0, 2(r4)
/* 803ABFE0  88 03 00 03 */	lbz r0, 3(r3)
/* 803ABFE4  98 04 00 03 */	stb r0, 3(r4)
/* 803ABFE8  41 81 00 0C */	bgt lbl_803ABFF4
/* 803ABFEC  38 60 00 01 */	li r3, 1
/* 803ABFF0  48 00 00 18 */	b lbl_803AC008
lbl_803ABFF4:
/* 803ABFF4  3B FF FF FF */	addi r31, r31, -1
/* 803ABFF8  3B BD FF FC */	addi r29, r29, -4
lbl_803ABFFC:
/* 803ABFFC  37 5A FF FF */	addic. r26, r26, -1
/* 803AC000  40 80 FF B0 */	bge lbl_803ABFB0
/* 803AC004  38 60 00 00 */	li r3, 0
lbl_803AC008:
/* 803AC008  39 61 00 30 */	addi r11, r1, 0x30
/* 803AC00C  4B CE EF 05 */	bl func_8009AF10
/* 803AC010  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AC014  7C 08 03 A6 */	mtlr r0
/* 803AC018  38 21 00 30 */	addi r1, r1, 0x30
/* 803AC01C  4E 80 00 20 */	blr 
