.include "macros.inc"

.section .text

.org 0x8005E918

.global _Ldtob
_Ldtob:
/* 8005E918 0005B878  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8005E91C 0005B87C  7C 08 02 A6 */	mflr r0
/* 8005E920 0005B880  90 01 00 74 */	stw r0, 0x74(r1)
/* 8005E924 0005B884  39 61 00 60 */	addi r11, r1, 0x60
/* 8005E928 0005B888  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 8005E92C 0005B88C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8005E930 0005B890  48 03 C5 9D */	bl func_8009AECC
/* 8005E934 0005B894  7C 7D 1B 78 */	mr r29, r3
/* 8005E938 0005B898  7C 9E 23 78 */	mr r30, r4
/* 8005E93C 0005B89C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8005E940 0005B8A0  3B E1 00 14 */	addi r31, r1, 0x14
/* 8005E944 0005B8A4  CB C3 00 00 */	lfd f30, 0(r3)
/* 8005E948 0005B8A8  2C 00 00 00 */	cmpwi r0, 0
/* 8005E94C 0005B8AC  40 80 00 10 */	bge lbl_8005E95C
/* 8005E950 0005B8B0  38 00 00 06 */	li r0, 6
/* 8005E954 0005B8B4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8005E958 0005B8B8  48 00 00 24 */	b lbl_8005E97C
lbl_8005E95C:
/* 8005E95C 0005B8BC  40 82 00 20 */	bne lbl_8005E97C
/* 8005E960 0005B8C0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8005E964 0005B8C4  28 00 00 67 */	cmplwi r0, 0x67
/* 8005E968 0005B8C8  41 82 00 0C */	beq lbl_8005E974
/* 8005E96C 0005B8CC  28 00 00 47 */	cmplwi r0, 0x47
/* 8005E970 0005B8D0  40 82 00 0C */	bne lbl_8005E97C
lbl_8005E974:
/* 8005E974 0005B8D4  38 00 00 01 */	li r0, 1
/* 8005E978 0005B8D8  90 1D 00 24 */	stw r0, 0x24(r29)
lbl_8005E97C:
/* 8005E97C 0005B8DC  7F A4 EB 78 */	mr r4, r29
/* 8005E980 0005B8E0  38 61 00 08 */	addi r3, r1, 8
/* 8005E984 0005B8E4  48 00 03 45 */	bl _Ldunscale
/* 8005E988 0005B8E8  7C 60 07 35 */	extsh. r0, r3
/* 8005E98C 0005B8EC  40 81 00 30 */	ble lbl_8005E9BC
/* 8005E990 0005B8F0  7C 60 07 34 */	extsh r0, r3
/* 8005E994 0005B8F4  38 8D 82 7C */	addi r4, r13, @106-_SDA_BASE_
/* 8005E998 0005B8F8  2C 00 00 02 */	cmpwi r0, 2
/* 8005E99C 0005B8FC  40 82 00 08 */	bne lbl_8005E9A4
/* 8005E9A0 0005B900  38 8D 82 78 */	addi r4, r13, @105-_SDA_BASE_
lbl_8005E9A4:
/* 8005E9A4 0005B904  80 7D 00 08 */	lwz r3, 8(r29)
/* 8005E9A8 0005B908  38 00 00 03 */	li r0, 3
/* 8005E9AC 0005B90C  38 A0 00 03 */	li r5, 3
/* 8005E9B0 0005B910  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8005E9B4 0005B914  4B FA 4A DD */	bl memcpy
/* 8005E9B8 0005B918  48 00 02 F0 */	b lbl_8005ECA8
lbl_8005E9BC:
/* 8005E9BC 0005B91C  7C 60 07 35 */	extsh. r0, r3
/* 8005E9C0 0005B920  40 82 00 14 */	bne lbl_8005E9D4
/* 8005E9C4 0005B924  38 00 00 00 */	li r0, 0
/* 8005E9C8 0005B928  38 C0 00 00 */	li r6, 0
/* 8005E9CC 0005B92C  B0 01 00 08 */	sth r0, 8(r1)
/* 8005E9D0 0005B930  48 00 02 C4 */	b lbl_8005EC94
lbl_8005E9D4:
/* 8005E9D4 0005B934  C8 02 86 30 */	lfd f0, @107-_SDA2_BASE_(r2)
/* 8005E9D8 0005B938  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8005E9DC 0005B93C  40 80 00 08 */	bge lbl_8005E9E4
/* 8005E9E0 0005B940  FF C0 F0 50 */	fneg f30, f30
lbl_8005E9E4:
/* 8005E9E4 0005B944  A8 01 00 08 */	lha r0, 8(r1)
/* 8005E9E8 0005B948  3C 60 14 F9 */	lis r3, 0x14F8B589@ha
/* 8005E9EC 0005B94C  38 63 B5 89 */	addi r3, r3, 0x14F8B589@l
/* 8005E9F0 0005B950  1C 00 75 97 */	mulli r0, r0, 0x7597
/* 8005E9F4 0005B954  7C 03 00 96 */	mulhw r0, r3, r0
/* 8005E9F8 0005B958  7C 00 6E 70 */	srawi r0, r0, 0xd
/* 8005E9FC 0005B95C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8005EA00 0005B960  7C 60 1A 14 */	add r3, r0, r3
/* 8005EA04 0005B964  38 63 FF FC */	addi r3, r3, -4
/* 8005EA08 0005B968  7C 60 07 35 */	extsh. r0, r3
/* 8005EA0C 0005B96C  B0 61 00 08 */	sth r3, 8(r1)
/* 8005EA10 0005B970  40 80 00 48 */	bge lbl_8005EA58
/* 8005EA14 0005B974  7C 60 07 34 */	extsh r0, r3
/* 8005EA18 0005B978  3C 60 80 0B */	lis r3, pows@ha
/* 8005EA1C 0005B97C  20 00 00 03 */	subfic r0, r0, 3
/* 8005EA20 0005B980  54 04 00 3A */	rlwinm r4, r0, 0, 0, 0x1d
/* 8005EA24 0005B984  38 63 B1 10 */	addi r3, r3, pows@l
/* 8005EA28 0005B988  7C 04 00 D0 */	neg r0, r4
/* 8005EA2C 0005B98C  B0 01 00 08 */	sth r0, 8(r1)
/* 8005EA30 0005B990  48 00 00 1C */	b lbl_8005EA4C
lbl_8005EA34:
/* 8005EA34 0005B994  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8005EA38 0005B998  41 82 00 0C */	beq lbl_8005EA44
/* 8005EA3C 0005B99C  C8 03 00 00 */	lfd f0, 0(r3)
/* 8005EA40 0005B9A0  FF DE 00 32 */	fmul f30, f30, f0
lbl_8005EA44:
/* 8005EA44 0005B9A4  7C 84 0E 70 */	srawi r4, r4, 1
/* 8005EA48 0005B9A8  38 63 00 08 */	addi r3, r3, 8
lbl_8005EA4C:
/* 8005EA4C 0005B9AC  2C 04 00 00 */	cmpwi r4, 0
/* 8005EA50 0005B9B0  41 81 FF E4 */	bgt lbl_8005EA34
/* 8005EA54 0005B9B4  48 00 00 4C */	b lbl_8005EAA0
lbl_8005EA58:
/* 8005EA58 0005B9B8  7C 60 07 35 */	extsh. r0, r3
/* 8005EA5C 0005B9BC  40 81 00 44 */	ble lbl_8005EAA0
/* 8005EA60 0005B9C0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8005EA64 0005B9C4  3C 60 80 0B */	lis r3, pows@ha
/* 8005EA68 0005B9C8  B0 01 00 08 */	sth r0, 8(r1)
/* 8005EA6C 0005B9CC  7C 04 07 34 */	extsh r4, r0
/* 8005EA70 0005B9D0  C8 22 86 38 */	lfd f1, @108-_SDA2_BASE_(r2)
/* 8005EA74 0005B9D4  38 63 B1 10 */	addi r3, r3, pows@l
/* 8005EA78 0005B9D8  48 00 00 1C */	b lbl_8005EA94
lbl_8005EA7C:
/* 8005EA7C 0005B9DC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8005EA80 0005B9E0  41 82 00 0C */	beq lbl_8005EA8C
/* 8005EA84 0005B9E4  C8 03 00 00 */	lfd f0, 0(r3)
/* 8005EA88 0005B9E8  FC 21 00 32 */	fmul f1, f1, f0
lbl_8005EA8C:
/* 8005EA8C 0005B9EC  7C 84 0E 70 */	srawi r4, r4, 1
/* 8005EA90 0005B9F0  38 63 00 08 */	addi r3, r3, 8
lbl_8005EA94:
/* 8005EA94 0005B9F4  2C 04 00 00 */	cmpwi r4, 0
/* 8005EA98 0005B9F8  41 81 FF E4 */	bgt lbl_8005EA7C
/* 8005EA9C 0005B9FC  FF DE 08 24 */	fdiv f30, f30, f1
lbl_8005EAA0:
/* 8005EAA0 0005BA00  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8005EAA4 0005BA04  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 8005EAA8 0005BA08  28 00 00 66 */	cmplwi r0, 0x66
/* 8005EAAC 0005BA0C  40 82 00 10 */	bne lbl_8005EABC
/* 8005EAB0 0005BA10  A8 61 00 08 */	lha r3, 8(r1)
/* 8005EAB4 0005BA14  38 03 00 0A */	addi r0, r3, 0xa
/* 8005EAB8 0005BA18  48 00 00 08 */	b lbl_8005EAC0
lbl_8005EABC:
/* 8005EABC 0005BA1C  38 00 00 06 */	li r0, 6
lbl_8005EAC0:
/* 8005EAC0 0005BA20  7F 84 02 14 */	add r28, r4, r0
/* 8005EAC4 0005BA24  2C 1C 00 13 */	cmpwi r28, 0x13
/* 8005EAC8 0005BA28  40 81 00 08 */	ble lbl_8005EAD0
/* 8005EACC 0005BA2C  3B 80 00 13 */	li r28, 0x13
lbl_8005EAD0:
/* 8005EAD0 0005BA30  38 00 00 30 */	li r0, 0x30
/* 8005EAD4 0005BA34  CB E2 86 30 */	lfd f31, @107-_SDA2_BASE_(r2)
/* 8005EAD8 0005BA38  98 01 00 14 */	stb r0, 0x14(r1)
/* 8005EADC 0005BA3C  3B FF 00 01 */	addi r31, r31, 1
/* 8005EAE0 0005BA40  48 00 00 8C */	b lbl_8005EB6C
lbl_8005EAE4:
/* 8005EAE4 0005BA44  FC 00 F0 1E */	fctiwz f0, f30
/* 8005EAE8 0005BA48  37 9C FF F8 */	addic. r28, r28, -8
/* 8005EAEC 0005BA4C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8005EAF0 0005BA50  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8005EAF4 0005BA54  40 81 00 2C */	ble lbl_8005EB20
/* 8005EAF8 0005BA58  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8005EAFC 0005BA5C  3C 00 43 30 */	lis r0, 0x4330
/* 8005EB00 0005BA60  90 81 00 44 */	stw r4, 0x44(r1)
/* 8005EB04 0005BA64  C8 22 86 48 */	lfd f1, @112-_SDA2_BASE_(r2)
/* 8005EB08 0005BA68  90 01 00 40 */	stw r0, 0x40(r1)
/* 8005EB0C 0005BA6C  C8 42 86 40 */	lfd f2, @109-_SDA2_BASE_(r2)
/* 8005EB10 0005BA70  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8005EB14 0005BA74  FC 00 08 28 */	fsub f0, f0, f1
/* 8005EB18 0005BA78  FC 1E 00 28 */	fsub f0, f30, f0
/* 8005EB1C 0005BA7C  FF C2 00 32 */	fmul f30, f2, f0
lbl_8005EB20:
/* 8005EB20 0005BA80  3B 60 00 08 */	li r27, 8
/* 8005EB24 0005BA84  3B FF 00 08 */	addi r31, r31, 8
/* 8005EB28 0005BA88  48 00 00 1C */	b lbl_8005EB44
lbl_8005EB2C:
/* 8005EB2C 0005BA8C  38 80 00 0A */	li r4, 0xa
/* 8005EB30 0005BA90  48 03 DA 1D */	bl ldiv
/* 8005EB34 0005BA94  38 04 00 30 */	addi r0, r4, 0x30
/* 8005EB38 0005BA98  90 81 00 10 */	stw r4, 0x10(r1)
/* 8005EB3C 0005BA9C  9C 1F FF FF */	stbu r0, -1(r31)
/* 8005EB40 0005BAA0  90 61 00 0C */	stw r3, 0xc(r1)
lbl_8005EB44:
/* 8005EB44 0005BAA4  2C 03 00 00 */	cmpwi r3, 0
/* 8005EB48 0005BAA8  40 81 00 0C */	ble lbl_8005EB54
/* 8005EB4C 0005BAAC  37 7B FF FF */	addic. r27, r27, -1
/* 8005EB50 0005BAB0  40 80 FF DC */	bge lbl_8005EB2C
lbl_8005EB54:
/* 8005EB54 0005BAB4  38 00 00 30 */	li r0, 0x30
/* 8005EB58 0005BAB8  48 00 00 08 */	b lbl_8005EB60
lbl_8005EB5C:
/* 8005EB5C 0005BABC  9C 1F FF FF */	stbu r0, -1(r31)
lbl_8005EB60:
/* 8005EB60 0005BAC0  37 7B FF FF */	addic. r27, r27, -1
/* 8005EB64 0005BAC4  40 80 FF F8 */	bge lbl_8005EB5C
/* 8005EB68 0005BAC8  3B FF 00 08 */	addi r31, r31, 8
lbl_8005EB6C:
/* 8005EB6C 0005BACC  2C 1C 00 00 */	cmpwi r28, 0
/* 8005EB70 0005BAD0  40 81 00 0C */	ble lbl_8005EB7C
/* 8005EB74 0005BAD4  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8005EB78 0005BAD8  41 80 FF 6C */	blt lbl_8005EAE4
lbl_8005EB7C:
/* 8005EB7C 0005BADC  A8 61 00 08 */	lha r3, 8(r1)
/* 8005EB80 0005BAE0  38 81 00 15 */	addi r4, r1, 0x15
/* 8005EB84 0005BAE4  7C A4 F8 50 */	subf r5, r4, r31
/* 8005EB88 0005BAE8  38 03 00 07 */	addi r0, r3, 7
/* 8005EB8C 0005BAEC  7C 9F 23 78 */	mr r31, r4
/* 8005EB90 0005BAF0  B0 01 00 08 */	sth r0, 8(r1)
/* 8005EB94 0005BAF4  48 00 00 18 */	b lbl_8005EBAC
lbl_8005EB98:
/* 8005EB98 0005BAF8  A8 61 00 08 */	lha r3, 8(r1)
/* 8005EB9C 0005BAFC  3B FF 00 01 */	addi r31, r31, 1
/* 8005EBA0 0005BB00  38 A5 FF FF */	addi r5, r5, -1
/* 8005EBA4 0005BB04  38 03 FF FF */	addi r0, r3, -1
/* 8005EBA8 0005BB08  B0 01 00 08 */	sth r0, 8(r1)
lbl_8005EBAC:
/* 8005EBAC 0005BB0C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8005EBB0 0005BB10  28 00 00 30 */	cmplwi r0, 0x30
/* 8005EBB4 0005BB14  41 82 FF E4 */	beq lbl_8005EB98
/* 8005EBB8 0005BB18  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8005EBBC 0005BB1C  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 8005EBC0 0005BB20  28 00 00 66 */	cmplwi r0, 0x66
/* 8005EBC4 0005BB24  40 82 00 10 */	bne lbl_8005EBD4
/* 8005EBC8 0005BB28  A8 61 00 08 */	lha r3, 8(r1)
/* 8005EBCC 0005BB2C  38 03 00 01 */	addi r0, r3, 1
/* 8005EBD0 0005BB30  48 00 00 28 */	b lbl_8005EBF8
lbl_8005EBD4:
/* 8005EBD4 0005BB34  28 00 00 65 */	cmplwi r0, 0x65
/* 8005EBD8 0005BB38  38 60 00 00 */	li r3, 0
/* 8005EBDC 0005BB3C  41 82 00 0C */	beq lbl_8005EBE8
/* 8005EBE0 0005BB40  28 00 00 45 */	cmplwi r0, 0x45
/* 8005EBE4 0005BB44  40 82 00 08 */	bne lbl_8005EBEC
lbl_8005EBE8:
/* 8005EBE8 0005BB48  38 60 00 01 */	li r3, 1
lbl_8005EBEC:
/* 8005EBEC 0005BB4C  7C 03 00 D0 */	neg r0, r3
/* 8005EBF0 0005BB50  7C 00 1B 78 */	or r0, r0, r3
/* 8005EBF4 0005BB54  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8005EBF8:
/* 8005EBF8 0005BB58  7C 04 02 14 */	add r0, r4, r0
/* 8005EBFC 0005BB5C  7C 06 07 34 */	extsh r6, r0
/* 8005EC00 0005BB60  7C 05 30 00 */	cmpw r5, r6
/* 8005EC04 0005BB64  40 80 00 08 */	bge lbl_8005EC0C
/* 8005EC08 0005BB68  7C A6 07 34 */	extsh r6, r5
lbl_8005EC0C:
/* 8005EC0C 0005BB6C  7C C0 07 35 */	extsh. r0, r6
/* 8005EC10 0005BB70  40 81 00 84 */	ble lbl_8005EC94
/* 8005EC14 0005BB74  7C C4 07 34 */	extsh r4, r6
/* 8005EC18 0005BB78  38 60 00 00 */	li r3, 0
/* 8005EC1C 0005BB7C  7C 04 28 00 */	cmpw r4, r5
/* 8005EC20 0005BB80  40 80 00 14 */	bge lbl_8005EC34
/* 8005EC24 0005BB84  7C 1F 20 AE */	lbzx r0, r31, r4
/* 8005EC28 0005BB88  28 00 00 35 */	cmplwi r0, 0x35
/* 8005EC2C 0005BB8C  41 80 00 08 */	blt lbl_8005EC34
/* 8005EC30 0005BB90  38 60 00 01 */	li r3, 1
lbl_8005EC34:
/* 8005EC34 0005BB94  2C 03 00 00 */	cmpwi r3, 0
/* 8005EC38 0005BB98  38 00 00 30 */	li r0, 0x30
/* 8005EC3C 0005BB9C  41 82 00 08 */	beq lbl_8005EC44
/* 8005EC40 0005BBA0  38 00 00 39 */	li r0, 0x39
lbl_8005EC44:
/* 8005EC44 0005BBA4  7C 85 23 78 */	mr r5, r4
/* 8005EC48 0005BBA8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8005EC4C 0005BBAC  7C 7F 22 14 */	add r3, r31, r4
/* 8005EC50 0005BBB0  48 00 00 08 */	b lbl_8005EC58
lbl_8005EC54:
/* 8005EC54 0005BBB4  38 C6 FF FF */	addi r6, r6, -1
lbl_8005EC58:
/* 8005EC58 0005BBB8  8C 83 FF FF */	lbzu r4, -1(r3)
/* 8005EC5C 0005BBBC  38 A5 FF FF */	addi r5, r5, -1
/* 8005EC60 0005BBC0  7C 00 20 40 */	cmplw r0, r4
/* 8005EC64 0005BBC4  41 82 FF F0 */	beq lbl_8005EC54
/* 8005EC68 0005BBC8  28 00 00 39 */	cmplwi r0, 0x39
/* 8005EC6C 0005BBCC  40 82 00 0C */	bne lbl_8005EC78
/* 8005EC70 0005BBD0  38 04 00 01 */	addi r0, r4, 1
/* 8005EC74 0005BBD4  7C 1F 29 AE */	stbx r0, r31, r5
lbl_8005EC78:
/* 8005EC78 0005BBD8  2C 05 00 00 */	cmpwi r5, 0
/* 8005EC7C 0005BBDC  40 80 00 18 */	bge lbl_8005EC94
/* 8005EC80 0005BBE0  A8 61 00 08 */	lha r3, 8(r1)
/* 8005EC84 0005BBE4  3B FF FF FF */	addi r31, r31, -1
/* 8005EC88 0005BBE8  38 C6 00 01 */	addi r6, r6, 1
/* 8005EC8C 0005BBEC  38 03 00 01 */	addi r0, r3, 1
/* 8005EC90 0005BBF0  B0 01 00 08 */	sth r0, 8(r1)
lbl_8005EC94:
/* 8005EC94 0005BBF4  A8 E1 00 08 */	lha r7, 8(r1)
/* 8005EC98 0005BBF8  7F A3 EB 78 */	mr r3, r29
/* 8005EC9C 0005BBFC  7F C4 F3 78 */	mr r4, r30
/* 8005ECA0 0005BC00  7F E5 FB 78 */	mr r5, r31
/* 8005ECA4 0005BC04  48 00 00 D1 */	bl _Genld
lbl_8005ECA8:
/* 8005ECA8 0005BC08  39 61 00 60 */	addi r11, r1, 0x60
/* 8005ECAC 0005BC0C  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 8005ECB0 0005BC10  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8005ECB4 0005BC14  48 03 C2 65 */	bl func_8009AF18
/* 8005ECB8 0005BC18  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8005ECBC 0005BC1C  7C 08 03 A6 */	mtlr r0
/* 8005ECC0 0005BC20  38 21 00 70 */	addi r1, r1, 0x70
/* 8005ECC4 0005BC24  4E 80 00 20 */	blr 

.global _Ldunscale
_Ldunscale:
/* 8005ECC8 0005BC28  A0 A4 00 00 */	lhz r5, 0(r4)
/* 8005ECCC 0005BC2C  54 A0 E5 7E */	rlwinm r0, r5, 0x1c, 0x15, 0x1f
/* 8005ECD0 0005BC30  7C 06 07 34 */	extsh r6, r0
/* 8005ECD4 0005BC34  2C 06 07 FF */	cmpwi r6, 0x7ff
/* 8005ECD8 0005BC38  40 82 00 58 */	bne lbl_8005ED30
/* 8005ECDC 0005BC3C  38 A0 00 00 */	li r5, 0
/* 8005ECE0 0005BC40  B0 A3 00 00 */	sth r5, 0(r3)
/* 8005ECE4 0005BC44  A0 04 00 00 */	lhz r0, 0(r4)
/* 8005ECE8 0005BC48  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8005ECEC 0005BC4C  40 82 00 28 */	bne lbl_8005ED14
/* 8005ECF0 0005BC50  A0 04 00 02 */	lhz r0, 2(r4)
/* 8005ECF4 0005BC54  28 00 00 00 */	cmplwi r0, 0
/* 8005ECF8 0005BC58  40 82 00 1C */	bne lbl_8005ED14
/* 8005ECFC 0005BC5C  A0 04 00 04 */	lhz r0, 4(r4)
/* 8005ED00 0005BC60  28 00 00 00 */	cmplwi r0, 0
/* 8005ED04 0005BC64  40 82 00 10 */	bne lbl_8005ED14
/* 8005ED08 0005BC68  A0 04 00 06 */	lhz r0, 6(r4)
/* 8005ED0C 0005BC6C  28 00 00 00 */	cmplwi r0, 0
/* 8005ED10 0005BC70  41 82 00 08 */	beq lbl_8005ED18
lbl_8005ED14:
/* 8005ED14 0005BC74  38 A0 00 01 */	li r5, 1
lbl_8005ED18:
/* 8005ED18 0005BC78  7C 05 00 D0 */	neg r0, r5
/* 8005ED1C 0005BC7C  7C 00 2B 78 */	or r0, r0, r5
/* 8005ED20 0005BC80  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8005ED24 0005BC84  38 03 00 01 */	addi r0, r3, 1
/* 8005ED28 0005BC88  7C 03 07 34 */	extsh r3, r0
/* 8005ED2C 0005BC8C  4E 80 00 20 */	blr 
lbl_8005ED30:
/* 8005ED30 0005BC90  7C C0 07 35 */	extsh. r0, r6
/* 8005ED34 0005BC94  40 81 00 20 */	ble lbl_8005ED54
/* 8005ED38 0005BC98  54 A5 07 20 */	rlwinm r5, r5, 0, 0x1c, 0x10
/* 8005ED3C 0005BC9C  38 06 FC 02 */	addi r0, r6, -1022
/* 8005ED40 0005BCA0  60 A5 3F F0 */	ori r5, r5, 0x3ff0
/* 8005ED44 0005BCA4  B0 A4 00 00 */	sth r5, 0(r4)
/* 8005ED48 0005BCA8  B0 03 00 00 */	sth r0, 0(r3)
/* 8005ED4C 0005BCAC  38 60 FF FF */	li r3, -1
/* 8005ED50 0005BCB0  4E 80 00 20 */	blr 
lbl_8005ED54:
/* 8005ED54 0005BCB4  7C C0 07 35 */	extsh. r0, r6
/* 8005ED58 0005BCB8  40 80 00 0C */	bge lbl_8005ED64
/* 8005ED5C 0005BCBC  38 60 00 02 */	li r3, 2
/* 8005ED60 0005BCC0  4E 80 00 20 */	blr 
lbl_8005ED64:
/* 8005ED64 0005BCC4  38 00 00 00 */	li r0, 0
/* 8005ED68 0005BCC8  B0 03 00 00 */	sth r0, 0(r3)
/* 8005ED6C 0005BCCC  38 60 00 00 */	li r3, 0
/* 8005ED70 0005BCD0  4E 80 00 20 */	blr 

.global _Genld
_Genld:
/* 8005ED74 0005BCD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005ED78 0005BCD8  7C 08 02 A6 */	mflr r0
/* 8005ED7C 0005BCDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005ED80 0005BCE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8005ED84 0005BCE4  48 03 C1 49 */	bl func_8009AECC
/* 8005ED88 0005BCE8  7C DE 33 78 */	mr r30, r6
/* 8005ED8C 0005BCEC  7C 7B 1B 78 */	mr r27, r3
/* 8005ED90 0005BCF0  7F C0 07 35 */	extsh. r0, r30
/* 8005ED94 0005BCF4  7C 9C 23 78 */	mr r28, r4
/* 8005ED98 0005BCF8  7C BD 2B 78 */	mr r29, r5
/* 8005ED9C 0005BCFC  7C FF 3B 78 */	mr r31, r7
/* 8005EDA0 0005BD00  41 81 00 0C */	bgt lbl_8005EDAC
/* 8005EDA4 0005BD04  3B C0 00 01 */	li r30, 1
/* 8005EDA8 0005BD08  3B AD 82 80 */	addi r29, r13, @218-_SDA_BASE_
lbl_8005EDAC:
/* 8005EDAC 0005BD0C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8005EDB0 0005BD10  28 00 00 66 */	cmplwi r0, 0x66
/* 8005EDB4 0005BD14  41 82 00 2C */	beq lbl_8005EDE0
/* 8005EDB8 0005BD18  28 00 00 67 */	cmplwi r0, 0x67
/* 8005EDBC 0005BD1C  41 82 00 0C */	beq lbl_8005EDC8
/* 8005EDC0 0005BD20  28 00 00 47 */	cmplwi r0, 0x47
/* 8005EDC4 0005BD24  40 82 02 5C */	bne lbl_8005F020
lbl_8005EDC8:
/* 8005EDC8 0005BD28  7F E3 07 34 */	extsh r3, r31
/* 8005EDCC 0005BD2C  2C 03 FF FC */	cmpwi r3, -4
/* 8005EDD0 0005BD30  41 80 02 50 */	blt lbl_8005F020
/* 8005EDD4 0005BD34  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EDD8 0005BD38  7C 03 00 00 */	cmpw r3, r0
/* 8005EDDC 0005BD3C  40 80 02 44 */	bge lbl_8005F020
lbl_8005EDE0:
/* 8005EDE0 0005BD40  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8005EDE4 0005BD44  3B FF 00 01 */	addi r31, r31, 1
/* 8005EDE8 0005BD48  28 00 00 66 */	cmplwi r0, 0x66
/* 8005EDEC 0005BD4C  41 82 00 40 */	beq lbl_8005EE2C
/* 8005EDF0 0005BD50  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8005EDF4 0005BD54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8005EDF8 0005BD58  40 82 00 18 */	bne lbl_8005EE10
/* 8005EDFC 0005BD5C  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EE00 0005BD60  7F C3 07 34 */	extsh r3, r30
/* 8005EE04 0005BD64  7C 03 00 00 */	cmpw r3, r0
/* 8005EE08 0005BD68  40 80 00 08 */	bge lbl_8005EE10
/* 8005EE0C 0005BD6C  90 7B 00 24 */	stw r3, 0x24(r27)
lbl_8005EE10:
/* 8005EE10 0005BD70  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EE14 0005BD74  7F E3 07 34 */	extsh r3, r31
/* 8005EE18 0005BD78  7C 03 00 51 */	subf. r0, r3, r0
/* 8005EE1C 0005BD7C  90 1B 00 24 */	stw r0, 0x24(r27)
/* 8005EE20 0005BD80  40 80 00 0C */	bge lbl_8005EE2C
/* 8005EE24 0005BD84  38 00 00 00 */	li r0, 0
/* 8005EE28 0005BD88  90 1B 00 24 */	stw r0, 0x24(r27)
lbl_8005EE2C:
/* 8005EE2C 0005BD8C  7F E0 07 35 */	extsh. r0, r31
/* 8005EE30 0005BD90  41 81 00 C4 */	bgt lbl_8005EEF4
/* 8005EE34 0005BD94  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005EE38 0005BD98  38 A0 00 30 */	li r5, 0x30
/* 8005EE3C 0005BD9C  80 9B 00 08 */	lwz r4, 8(r27)
/* 8005EE40 0005BDA0  38 03 00 01 */	addi r0, r3, 1
/* 8005EE44 0005BDA4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005EE48 0005BDA8  7C A4 19 AE */	stbx r5, r4, r3
/* 8005EE4C 0005BDAC  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EE50 0005BDB0  2C 00 00 00 */	cmpwi r0, 0
/* 8005EE54 0005BDB4  41 81 00 10 */	bgt lbl_8005EE64
/* 8005EE58 0005BDB8  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8005EE5C 0005BDBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8005EE60 0005BDC0  41 82 00 1C */	beq lbl_8005EE7C
lbl_8005EE64:
/* 8005EE64 0005BDC4  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005EE68 0005BDC8  38 A0 00 2E */	li r5, 0x2e
/* 8005EE6C 0005BDCC  80 9B 00 08 */	lwz r4, 8(r27)
/* 8005EE70 0005BDD0  38 03 00 01 */	addi r0, r3, 1
/* 8005EE74 0005BDD4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005EE78 0005BDD8  7C A4 19 AE */	stbx r5, r4, r3
lbl_8005EE7C:
/* 8005EE7C 0005BDDC  7F E0 07 34 */	extsh r0, r31
/* 8005EE80 0005BDE0  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8005EE84 0005BDE4  7C 00 00 D0 */	neg r0, r0
/* 8005EE88 0005BDE8  7C 03 00 00 */	cmpw r3, r0
/* 8005EE8C 0005BDEC  40 80 00 0C */	bge lbl_8005EE98
/* 8005EE90 0005BDF0  7C 03 00 D0 */	neg r0, r3
/* 8005EE94 0005BDF4  7C 1F 07 34 */	extsh r31, r0
lbl_8005EE98:
/* 8005EE98 0005BDF8  7F E4 07 34 */	extsh r4, r31
/* 8005EE9C 0005BDFC  7F C0 07 34 */	extsh r0, r30
/* 8005EEA0 0005BE00  7C 64 00 D0 */	neg r3, r4
/* 8005EEA4 0005BE04  90 7B 00 18 */	stw r3, 0x18(r27)
/* 8005EEA8 0005BE08  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8005EEAC 0005BE0C  7C 63 22 14 */	add r3, r3, r4
/* 8005EEB0 0005BE10  90 7B 00 24 */	stw r3, 0x24(r27)
/* 8005EEB4 0005BE14  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8005EEB8 0005BE18  7C 03 00 00 */	cmpw r3, r0
/* 8005EEBC 0005BE1C  40 80 00 08 */	bge lbl_8005EEC4
/* 8005EEC0 0005BE20  7C 7E 07 34 */	extsh r30, r3
lbl_8005EEC4:
/* 8005EEC4 0005BE24  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005EEC8 0005BE28  7F DC 07 34 */	extsh r28, r30
/* 8005EECC 0005BE2C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005EED0 0005BE30  7F A4 EB 78 */	mr r4, r29
/* 8005EED4 0005BE34  7F 85 E3 78 */	mr r5, r28
/* 8005EED8 0005BE38  93 9B 00 1C */	stw r28, 0x1c(r27)
/* 8005EEDC 0005BE3C  7C 63 02 14 */	add r3, r3, r0
/* 8005EEE0 0005BE40  4B FA 45 B1 */	bl memcpy
/* 8005EEE4 0005BE44  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EEE8 0005BE48  7C 1C 00 50 */	subf r0, r28, r0
/* 8005EEEC 0005BE4C  90 1B 00 20 */	stw r0, 0x20(r27)
/* 8005EEF0 0005BE50  48 00 03 50 */	b lbl_8005F240
lbl_8005EEF4:
/* 8005EEF4 0005BE54  7F C5 07 34 */	extsh r5, r30
/* 8005EEF8 0005BE58  7F E6 07 34 */	extsh r6, r31
/* 8005EEFC 0005BE5C  7C 05 30 00 */	cmpw r5, r6
/* 8005EF00 0005BE60  40 80 00 74 */	bge lbl_8005EF74
/* 8005EF04 0005BE64  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005EF08 0005BE68  7F A4 EB 78 */	mr r4, r29
/* 8005EF0C 0005BE6C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005EF10 0005BE70  7C 63 02 14 */	add r3, r3, r0
/* 8005EF14 0005BE74  4B FA 45 7D */	bl memcpy
/* 8005EF18 0005BE78  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005EF1C 0005BE7C  7F C4 07 34 */	extsh r4, r30
/* 8005EF20 0005BE80  7F E0 07 34 */	extsh r0, r31
/* 8005EF24 0005BE84  7C 63 22 14 */	add r3, r3, r4
/* 8005EF28 0005BE88  90 7B 00 14 */	stw r3, 0x14(r27)
/* 8005EF2C 0005BE8C  7C 04 00 50 */	subf r0, r4, r0
/* 8005EF30 0005BE90  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8005EF34 0005BE94  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EF38 0005BE98  2C 00 00 00 */	cmpwi r0, 0
/* 8005EF3C 0005BE9C  41 81 00 10 */	bgt lbl_8005EF4C
/* 8005EF40 0005BEA0  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8005EF44 0005BEA4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8005EF48 0005BEA8  41 82 00 20 */	beq lbl_8005EF68
lbl_8005EF4C:
/* 8005EF4C 0005BEAC  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005EF50 0005BEB0  38 80 00 2E */	li r4, 0x2e
/* 8005EF54 0005BEB4  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005EF58 0005BEB8  7C 83 01 AE */	stbx r4, r3, r0
/* 8005EF5C 0005BEBC  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 8005EF60 0005BEC0  38 03 00 01 */	addi r0, r3, 1
/* 8005EF64 0005BEC4  90 1B 00 1C */	stw r0, 0x1c(r27)
lbl_8005EF68:
/* 8005EF68 0005BEC8  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EF6C 0005BECC  90 1B 00 20 */	stw r0, 0x20(r27)
/* 8005EF70 0005BED0  48 00 02 D0 */	b lbl_8005F240
lbl_8005EF74:
/* 8005EF74 0005BED4  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005EF78 0005BED8  7F A4 EB 78 */	mr r4, r29
/* 8005EF7C 0005BEDC  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005EF80 0005BEE0  7C C5 33 78 */	mr r5, r6
/* 8005EF84 0005BEE4  7C 63 02 14 */	add r3, r3, r0
/* 8005EF88 0005BEE8  4B FA 45 09 */	bl memcpy
/* 8005EF8C 0005BEEC  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005EF90 0005BEF0  7F E0 07 34 */	extsh r0, r31
/* 8005EF94 0005BEF4  7F DF F0 50 */	subf r30, r31, r30
/* 8005EF98 0005BEF8  7C 03 02 14 */	add r0, r3, r0
/* 8005EF9C 0005BEFC  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005EFA0 0005BF00  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005EFA4 0005BF04  2C 00 00 00 */	cmpwi r0, 0
/* 8005EFA8 0005BF08  41 81 00 10 */	bgt lbl_8005EFB8
/* 8005EFAC 0005BF0C  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8005EFB0 0005BF10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8005EFB4 0005BF14  41 82 00 1C */	beq lbl_8005EFD0
lbl_8005EFB8:
/* 8005EFB8 0005BF18  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005EFBC 0005BF1C  38 A0 00 2E */	li r5, 0x2e
/* 8005EFC0 0005BF20  80 9B 00 08 */	lwz r4, 8(r27)
/* 8005EFC4 0005BF24  38 03 00 01 */	addi r0, r3, 1
/* 8005EFC8 0005BF28  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005EFCC 0005BF2C  7C A4 19 AE */	stbx r5, r4, r3
lbl_8005EFD0:
/* 8005EFD0 0005BF30  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8005EFD4 0005BF34  7F C0 07 34 */	extsh r0, r30
/* 8005EFD8 0005BF38  7C 03 00 00 */	cmpw r3, r0
/* 8005EFDC 0005BF3C  40 80 00 08 */	bge lbl_8005EFE4
/* 8005EFE0 0005BF40  7C 7E 07 34 */	extsh r30, r3
lbl_8005EFE4:
/* 8005EFE4 0005BF44  80 DB 00 08 */	lwz r6, 8(r27)
/* 8005EFE8 0005BF48  7F E0 07 34 */	extsh r0, r31
/* 8005EFEC 0005BF4C  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005EFF0 0005BF50  7C 9D 02 14 */	add r4, r29, r0
/* 8005EFF4 0005BF54  7F C5 07 34 */	extsh r5, r30
/* 8005EFF8 0005BF58  7C 66 1A 14 */	add r3, r6, r3
/* 8005EFFC 0005BF5C  4B FA 44 95 */	bl memcpy
/* 8005F000 0005BF60  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005F004 0005BF64  7F C3 07 34 */	extsh r3, r30
/* 8005F008 0005BF68  7C 00 1A 14 */	add r0, r0, r3
/* 8005F00C 0005BF6C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005F010 0005BF70  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005F014 0005BF74  7C 03 00 50 */	subf r0, r3, r0
/* 8005F018 0005BF78  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8005F01C 0005BF7C  48 00 02 24 */	b lbl_8005F240
lbl_8005F020:
/* 8005F020 0005BF80  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8005F024 0005BF84  28 00 00 67 */	cmplwi r0, 0x67
/* 8005F028 0005BF88  41 82 00 0C */	beq lbl_8005F034
/* 8005F02C 0005BF8C  28 00 00 47 */	cmplwi r0, 0x47
/* 8005F030 0005BF90  40 82 00 48 */	bne lbl_8005F078
lbl_8005F034:
/* 8005F034 0005BF94  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005F038 0005BF98  7F C3 07 34 */	extsh r3, r30
/* 8005F03C 0005BF9C  7C 03 00 00 */	cmpw r3, r0
/* 8005F040 0005BFA0  40 80 00 08 */	bge lbl_8005F048
/* 8005F044 0005BFA4  90 7B 00 24 */	stw r3, 0x24(r27)
lbl_8005F048:
/* 8005F048 0005BFA8  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8005F04C 0005BFAC  34 03 FF FF */	addic. r0, r3, -1
/* 8005F050 0005BFB0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 8005F054 0005BFB4  40 80 00 0C */	bge lbl_8005F060
/* 8005F058 0005BFB8  38 00 00 00 */	li r0, 0
/* 8005F05C 0005BFBC  90 1B 00 24 */	stw r0, 0x24(r27)
lbl_8005F060:
/* 8005F060 0005BFC0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8005F064 0005BFC4  38 60 00 45 */	li r3, 0x45
/* 8005F068 0005BFC8  28 00 00 67 */	cmplwi r0, 0x67
/* 8005F06C 0005BFCC  40 82 00 08 */	bne lbl_8005F074
/* 8005F070 0005BFD0  38 60 00 65 */	li r3, 0x65
lbl_8005F074:
/* 8005F074 0005BFD4  54 7C 06 3E */	clrlwi r28, r3, 0x18
lbl_8005F078:
/* 8005F078 0005BFD8  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005F07C 0005BFDC  88 BD 00 00 */	lbz r5, 0(r29)
/* 8005F080 0005BFE0  3B BD 00 01 */	addi r29, r29, 1
/* 8005F084 0005BFE4  80 9B 00 08 */	lwz r4, 8(r27)
/* 8005F088 0005BFE8  38 03 00 01 */	addi r0, r3, 1
/* 8005F08C 0005BFEC  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005F090 0005BFF0  7C A4 19 AE */	stbx r5, r4, r3
/* 8005F094 0005BFF4  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005F098 0005BFF8  2C 00 00 00 */	cmpwi r0, 0
/* 8005F09C 0005BFFC  41 81 00 10 */	bgt lbl_8005F0AC
/* 8005F0A0 0005C000  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8005F0A4 0005C004  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8005F0A8 0005C008  41 82 00 1C */	beq lbl_8005F0C4
lbl_8005F0AC:
/* 8005F0AC 0005C00C  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8005F0B0 0005C010  38 A0 00 2E */	li r5, 0x2e
/* 8005F0B4 0005C014  80 9B 00 08 */	lwz r4, 8(r27)
/* 8005F0B8 0005C018  38 03 00 01 */	addi r0, r3, 1
/* 8005F0BC 0005C01C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005F0C0 0005C020  7C A4 19 AE */	stbx r5, r4, r3
lbl_8005F0C4:
/* 8005F0C4 0005C024  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8005F0C8 0005C028  2C 03 00 00 */	cmpwi r3, 0
/* 8005F0CC 0005C02C  40 81 00 4C */	ble lbl_8005F118
/* 8005F0D0 0005C030  3B DE FF FF */	addi r30, r30, -1
/* 8005F0D4 0005C034  7F C0 07 34 */	extsh r0, r30
/* 8005F0D8 0005C038  7C 03 00 00 */	cmpw r3, r0
/* 8005F0DC 0005C03C  40 80 00 08 */	bge lbl_8005F0E4
/* 8005F0E0 0005C040  7C 7E 07 34 */	extsh r30, r3
lbl_8005F0E4:
/* 8005F0E4 0005C044  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005F0E8 0005C048  7F A4 EB 78 */	mr r4, r29
/* 8005F0EC 0005C04C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005F0F0 0005C050  7F C5 07 34 */	extsh r5, r30
/* 8005F0F4 0005C054  7C 63 02 14 */	add r3, r3, r0
/* 8005F0F8 0005C058  4B FA 43 99 */	bl memcpy
/* 8005F0FC 0005C05C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005F100 0005C060  7F C3 07 34 */	extsh r3, r30
/* 8005F104 0005C064  7C 00 1A 14 */	add r0, r0, r3
/* 8005F108 0005C068  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8005F10C 0005C06C  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8005F110 0005C070  7C 03 00 50 */	subf r0, r3, r0
/* 8005F114 0005C074  90 1B 00 18 */	stw r0, 0x18(r27)
lbl_8005F118:
/* 8005F118 0005C078  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005F11C 0005C07C  7F E0 07 35 */	extsh. r0, r31
/* 8005F120 0005C080  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005F124 0005C084  7F A3 02 14 */	add r29, r3, r0
/* 8005F128 0005C088  9B 9D 00 00 */	stb r28, 0(r29)
/* 8005F12C 0005C08C  41 80 00 14 */	blt lbl_8005F140
/* 8005F130 0005C090  38 00 00 2B */	li r0, 0x2b
/* 8005F134 0005C094  98 1D 00 01 */	stb r0, 1(r29)
/* 8005F138 0005C098  3B BD 00 02 */	addi r29, r29, 2
/* 8005F13C 0005C09C  48 00 00 18 */	b lbl_8005F154
lbl_8005F140:
/* 8005F140 0005C0A0  38 60 00 2D */	li r3, 0x2d
/* 8005F144 0005C0A4  7C 1F 00 D0 */	neg r0, r31
/* 8005F148 0005C0A8  98 7D 00 01 */	stb r3, 1(r29)
/* 8005F14C 0005C0AC  7C 1F 07 34 */	extsh r31, r0
/* 8005F150 0005C0B0  3B BD 00 02 */	addi r29, r29, 2
lbl_8005F154:
/* 8005F154 0005C0B4  7F E6 07 34 */	extsh r6, r31
/* 8005F158 0005C0B8  2C 06 00 64 */	cmpwi r6, 0x64
/* 8005F15C 0005C0BC  41 80 00 88 */	blt lbl_8005F1E4
/* 8005F160 0005C0C0  2C 06 03 E8 */	cmpwi r6, 0x3e8
/* 8005F164 0005C0C4  41 80 00 40 */	blt lbl_8005F1A4
/* 8005F168 0005C0C8  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 8005F16C 0005C0CC  38 03 4D D3 */	addi r0, r3, 0x10624DD3@l
/* 8005F170 0005C0D0  7C 00 30 96 */	mulhw r0, r0, r6
/* 8005F174 0005C0D4  7C 04 36 70 */	srawi r4, r0, 6
/* 8005F178 0005C0D8  7C 00 36 70 */	srawi r0, r0, 6
/* 8005F17C 0005C0DC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8005F180 0005C0E0  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8005F184 0005C0E4  7C 00 1A 14 */	add r0, r0, r3
/* 8005F188 0005C0E8  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 8005F18C 0005C0EC  7C 64 2A 14 */	add r3, r4, r5
/* 8005F190 0005C0F0  38 63 00 30 */	addi r3, r3, 0x30
/* 8005F194 0005C0F4  98 7D 00 00 */	stb r3, 0(r29)
/* 8005F198 0005C0F8  7C 00 30 50 */	subf r0, r0, r6
/* 8005F19C 0005C0FC  7C 1F 07 34 */	extsh r31, r0
/* 8005F1A0 0005C100  3B BD 00 01 */	addi r29, r29, 1
lbl_8005F1A4:
/* 8005F1A4 0005C104  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 8005F1A8 0005C108  7F E5 07 34 */	extsh r5, r31
/* 8005F1AC 0005C10C  38 03 85 1F */	addi r0, r3, 0x51EB851F@l
/* 8005F1B0 0005C110  7C 00 28 96 */	mulhw r0, r0, r5
/* 8005F1B4 0005C114  7C 04 2E 70 */	srawi r4, r0, 5
/* 8005F1B8 0005C118  7C 00 2E 70 */	srawi r0, r0, 5
/* 8005F1BC 0005C11C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8005F1C0 0005C120  54 86 0F FE */	srwi r6, r4, 0x1f
/* 8005F1C4 0005C124  7C 00 1A 14 */	add r0, r0, r3
/* 8005F1C8 0005C128  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8005F1CC 0005C12C  7C 64 32 14 */	add r3, r4, r6
/* 8005F1D0 0005C130  38 63 00 30 */	addi r3, r3, 0x30
/* 8005F1D4 0005C134  98 7D 00 00 */	stb r3, 0(r29)
/* 8005F1D8 0005C138  7C 00 28 50 */	subf r0, r0, r5
/* 8005F1DC 0005C13C  7C 1F 07 34 */	extsh r31, r0
/* 8005F1E0 0005C140  3B BD 00 01 */	addi r29, r29, 1
lbl_8005F1E4:
/* 8005F1E4 0005C144  3C 60 66 66 */	lis r3, 0x66666667@ha
/* 8005F1E8 0005C148  7F E5 07 34 */	extsh r5, r31
/* 8005F1EC 0005C14C  38 03 66 67 */	addi r0, r3, 0x66666667@l
/* 8005F1F0 0005C150  7C 00 28 96 */	mulhw r0, r0, r5
/* 8005F1F4 0005C154  7C 04 16 70 */	srawi r4, r0, 2
/* 8005F1F8 0005C158  7C 00 16 70 */	srawi r0, r0, 2
/* 8005F1FC 0005C15C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8005F200 0005C160  54 86 0F FE */	srwi r6, r4, 0x1f
/* 8005F204 0005C164  7C 00 1A 14 */	add r0, r0, r3
/* 8005F208 0005C168  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8005F20C 0005C16C  7C 64 32 14 */	add r3, r4, r6
/* 8005F210 0005C170  38 63 00 30 */	addi r3, r3, 0x30
/* 8005F214 0005C174  7C 00 28 50 */	subf r0, r0, r5
/* 8005F218 0005C178  98 7D 00 00 */	stb r3, 0(r29)
/* 8005F21C 0005C17C  7C 1F 07 34 */	extsh r31, r0
/* 8005F220 0005C180  38 1F 00 30 */	addi r0, r31, 0x30
/* 8005F224 0005C184  98 1D 00 01 */	stb r0, 1(r29)
/* 8005F228 0005C188  3B BD 00 02 */	addi r29, r29, 2
/* 8005F22C 0005C18C  80 7B 00 08 */	lwz r3, 8(r27)
/* 8005F230 0005C190  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005F234 0005C194  7C 03 02 14 */	add r0, r3, r0
/* 8005F238 0005C198  7C 00 E8 50 */	subf r0, r0, r29
/* 8005F23C 0005C19C  90 1B 00 1C */	stw r0, 0x1c(r27)
lbl_8005F240:
/* 8005F240 0005C1A0  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8005F244 0005C1A4  70 00 00 14 */	andi. r0, r0, 0x14
/* 8005F248 0005C1A8  28 00 00 10 */	cmplwi r0, 0x10
/* 8005F24C 0005C1AC  40 82 00 3C */	bne lbl_8005F288
/* 8005F250 0005C1B0  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 8005F254 0005C1B4  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8005F258 0005C1B8  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 8005F25C 0005C1BC  7C 00 1A 14 */	add r0, r0, r3
/* 8005F260 0005C1C0  80 BB 00 20 */	lwz r5, 0x20(r27)
/* 8005F264 0005C1C4  7C 00 22 14 */	add r0, r0, r4
/* 8005F268 0005C1C8  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8005F26C 0005C1CC  7C 80 2A 14 */	add r4, r0, r5
/* 8005F270 0005C1D0  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8005F274 0005C1D4  7C 83 22 14 */	add r4, r3, r4
/* 8005F278 0005C1D8  7C 04 00 00 */	cmpw r4, r0
/* 8005F27C 0005C1DC  40 80 00 0C */	bge lbl_8005F288
/* 8005F280 0005C1E0  7C 04 00 50 */	subf r0, r4, r0
/* 8005F284 0005C1E4  90 1B 00 10 */	stw r0, 0x10(r27)
lbl_8005F288:
/* 8005F288 0005C1E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8005F28C 0005C1EC  48 03 BC 8D */	bl func_8009AF18
/* 8005F290 0005C1F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005F294 0005C1F4  7C 08 03 A6 */	mtlr r0
/* 8005F298 0005C1F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8005F29C 0005C1FC  4E 80 00 20 */	blr 