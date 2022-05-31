lbl_804BFEDC:
/* 804BFEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BFEE0  7C 08 02 A6 */	mflr r0
/* 804BFEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BFEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 804BFEEC  4B BD AF E1 */	bl func_8009AECC
/* 804BFEF0  7C 7B 1B 78 */	mr r27, r3
/* 804BFEF4  7C 9C 23 78 */	mr r28, r4
/* 804BFEF8  7C BD 2B 78 */	mr r29, r5
/* 804BFEFC  7C DE 33 78 */	mr r30, r6
/* 804BFF00  38 60 00 00 */	li r3, 0
/* 804BFF04  3B E0 00 00 */	li r31, 0
/* 804BFF08  48 00 00 F4 */	b lbl_804BFFFC
lbl_804BFF0C:
/* 804BFF0C  A0 1B 00 0E */	lhz r0, 0xe(r27)
/* 804BFF10  2C 00 00 05 */	cmpwi r0, 5
/* 804BFF14  41 82 00 3C */	beq lbl_804BFF50
/* 804BFF18  40 80 00 10 */	bge lbl_804BFF28
/* 804BFF1C  2C 00 00 00 */	cmpwi r0, 0
/* 804BFF20  41 82 00 14 */	beq lbl_804BFF34
/* 804BFF24  48 00 00 D0 */	b lbl_804BFFF4
lbl_804BFF28:
/* 804BFF28  2C 00 00 07 */	cmpwi r0, 7
/* 804BFF2C  40 80 00 C8 */	bge lbl_804BFFF4
/* 804BFF30  48 00 00 74 */	b lbl_804BFFA4
lbl_804BFF34:
/* 804BFF34  B3 9B 00 0C */	sth r28, 0xc(r27)
/* 804BFF38  7F 63 DB 78 */	mr r3, r27
/* 804BFF3C  7F A4 EB 78 */	mr r4, r29
/* 804BFF40  B3 DB 00 0E */	sth r30, 0xe(r27)
/* 804BFF44  4B EF AF 79 */	bl xyz_t_move
/* 804BFF48  38 60 00 01 */	li r3, 1
/* 804BFF4C  48 00 00 A8 */	b lbl_804BFFF4
lbl_804BFF50:
/* 804BFF50  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804BFF54  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804BFF58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFF5C  40 82 00 98 */	bne lbl_804BFFF4
/* 804BFF60  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804BFF64  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804BFF68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFF6C  40 82 00 88 */	bne lbl_804BFFF4
/* 804BFF70  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804BFF74  28 00 00 01 */	cmplwi r0, 1
/* 804BFF78  40 82 00 14 */	bne lbl_804BFF8C
/* 804BFF7C  38 00 00 03 */	li r0, 3
/* 804BFF80  38 60 00 01 */	li r3, 1
/* 804BFF84  B0 1B 00 0E */	sth r0, 0xe(r27)
/* 804BFF88  48 00 00 6C */	b lbl_804BFFF4
lbl_804BFF8C:
/* 804BFF8C  28 00 00 02 */	cmplwi r0, 2
/* 804BFF90  40 82 00 64 */	bne lbl_804BFFF4
/* 804BFF94  38 00 00 02 */	li r0, 2
/* 804BFF98  38 60 00 01 */	li r3, 1
/* 804BFF9C  B0 1B 00 0E */	sth r0, 0xe(r27)
/* 804BFFA0  48 00 00 54 */	b lbl_804BFFF4
lbl_804BFFA4:
/* 804BFFA4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804BFFA8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804BFFAC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFFB0  40 82 00 44 */	bne lbl_804BFFF4
/* 804BFFB4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804BFFB8  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804BFFBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFFC0  40 82 00 34 */	bne lbl_804BFFF4
/* 804BFFC4  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804BFFC8  28 00 00 01 */	cmplwi r0, 1
/* 804BFFCC  40 82 00 14 */	bne lbl_804BFFE0
/* 804BFFD0  38 00 00 01 */	li r0, 1
/* 804BFFD4  38 60 00 01 */	li r3, 1
/* 804BFFD8  B0 1B 00 0E */	sth r0, 0xe(r27)
/* 804BFFDC  48 00 00 18 */	b lbl_804BFFF4
lbl_804BFFE0:
/* 804BFFE0  28 00 00 02 */	cmplwi r0, 2
/* 804BFFE4  40 82 00 10 */	bne lbl_804BFFF4
/* 804BFFE8  38 00 00 04 */	li r0, 4
/* 804BFFEC  38 60 00 01 */	li r3, 1
/* 804BFFF0  B0 1B 00 0E */	sth r0, 0xe(r27)
lbl_804BFFF4:
/* 804BFFF4  3B FF 00 01 */	addi r31, r31, 1
/* 804BFFF8  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_804BFFFC:
/* 804BFFFC  2C 03 00 00 */	cmpwi r3, 0
/* 804C0000  40 82 00 0C */	bne lbl_804C000C
/* 804C0004  2C 1F 00 01 */	cmpwi r31, 1
/* 804C0008  41 80 FF 04 */	blt lbl_804BFF0C
lbl_804C000C:
/* 804C000C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C0010  4B BD AF 09 */	bl func_8009AF18
/* 804C0014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C0018  7C 08 03 A6 */	mtlr r0
/* 804C001C  38 21 00 20 */	addi r1, r1, 0x20
/* 804C0020  4E 80 00 20 */	blr 
