.include "macros.inc"

.section .text

.org 0x800A1974

.global cos
cos:
/* 800A1974 0009E8D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A1978 0009E8D8  7C 08 02 A6 */	mflr r0
/* 800A197C 0009E8DC  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 800A1980 0009E8E0  D8 21 00 08 */	stfd f1, 8(r1)
/* 800A1984 0009E8E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A1988 0009E8E8  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 800A198C 0009E8EC  80 61 00 08 */	lwz r3, 8(r1)
/* 800A1990 0009E8F0  54 63 00 7E */	clrlwi r3, r3, 1
/* 800A1994 0009E8F4  7C 03 00 00 */	cmpw r3, r0
/* 800A1998 0009E8F8  41 81 00 10 */	bgt lbl_800A19A8
/* 800A199C 0009E8FC  C8 42 8A E0 */	lfd f2, @73-_SDA2_BASE_(r2)
/* 800A19A0 0009E900  4B FF ED C5 */	bl __kernel_cos
/* 800A19A4 0009E904  48 00 00 94 */	b lbl_800A1A38
lbl_800A19A8:
/* 800A19A8 0009E908  3C 00 7F F0 */	lis r0, 0x7ff0
/* 800A19AC 0009E90C  7C 03 00 00 */	cmpw r3, r0
/* 800A19B0 0009E910  41 80 00 0C */	blt lbl_800A19BC
/* 800A19B4 0009E914  FC 21 08 28 */	fsub f1, f1, f1
/* 800A19B8 0009E918  48 00 00 80 */	b lbl_800A1A38
lbl_800A19BC:
/* 800A19BC 0009E91C  38 61 00 10 */	addi r3, r1, 0x10
/* 800A19C0 0009E920  4B FF EA 05 */	bl __ieee754_rem_pio2
/* 800A19C4 0009E924  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 800A19C8 0009E928  2C 00 00 01 */	cmpwi r0, 1
/* 800A19CC 0009E92C  41 82 00 30 */	beq lbl_800A19FC
/* 800A19D0 0009E930  40 80 00 10 */	bge lbl_800A19E0
/* 800A19D4 0009E934  2C 00 00 00 */	cmpwi r0, 0
/* 800A19D8 0009E938  40 80 00 14 */	bge lbl_800A19EC
/* 800A19DC 0009E93C  48 00 00 4C */	b lbl_800A1A28
lbl_800A19E0:
/* 800A19E0 0009E940  2C 00 00 03 */	cmpwi r0, 3
/* 800A19E4 0009E944  40 80 00 44 */	bge lbl_800A1A28
/* 800A19E8 0009E948  48 00 00 2C */	b lbl_800A1A14
lbl_800A19EC:
/* 800A19EC 0009E94C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800A19F0 0009E950  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800A19F4 0009E954  4B FF ED 71 */	bl __kernel_cos
/* 800A19F8 0009E958  48 00 00 40 */	b lbl_800A1A38
lbl_800A19FC:
/* 800A19FC 0009E95C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800A1A00 0009E960  38 60 00 01 */	li r3, 1
/* 800A1A04 0009E964  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800A1A08 0009E968  4B FF FC A5 */	bl __kernel_sin
/* 800A1A0C 0009E96C  FC 20 08 50 */	fneg f1, f1
/* 800A1A10 0009E970  48 00 00 28 */	b lbl_800A1A38
lbl_800A1A14:
/* 800A1A14 0009E974  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800A1A18 0009E978  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800A1A1C 0009E97C  4B FF ED 49 */	bl __kernel_cos
/* 800A1A20 0009E980  FC 20 08 50 */	fneg f1, f1
/* 800A1A24 0009E984  48 00 00 14 */	b lbl_800A1A38
lbl_800A1A28:
/* 800A1A28 0009E988  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800A1A2C 0009E98C  38 60 00 01 */	li r3, 1
/* 800A1A30 0009E990  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800A1A34 0009E994  4B FF FC 79 */	bl __kernel_sin
lbl_800A1A38:
/* 800A1A38 0009E998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A1A3C 0009E99C  7C 08 03 A6 */	mtlr r0
/* 800A1A40 0009E9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A1A44 0009E9A4  4E 80 00 20 */	blr 
