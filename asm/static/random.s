.include "macros.inc"

.section .text

.org 0x80031CE0

.global GetRandom_s32
GetRandom_s32:
/* 80031CE0 0002EC40  3C 60 13 58 */	lis r3, 0x13579BDE@ha
/* 80031CE4 0002EC44  80 8D 80 B8 */	lwz r4, v0-_SDA_BASE_(r13)
/* 80031CE8 0002EC48  38 03 9B DE */	addi r0, r3, 0x13579BDE@l
/* 80031CEC 0002EC4C  80 AD 80 BC */	lwz r5, v1-_SDA_BASE_(r13)
/* 80031CF0 0002EC50  3C 60 98 76 */	lis r3, 0x98765432@ha
/* 80031CF4 0002EC54  38 63 54 32 */	addi r3, r3, 0x98765432@l
/* 80031CF8 0002EC58  90 AD 80 B8 */	stw r5, v0-_SDA_BASE_(r13)
/* 80031CFC 0002EC5C  7C 04 01 D6 */	mullw r0, r4, r0
/* 80031D00 0002EC60  7C 65 19 D6 */	mullw r3, r5, r3
/* 80031D04 0002EC64  7C 00 26 70 */	srawi r0, r0, 4
/* 80031D08 0002EC68  7C 63 02 14 */	add r3, r3, r0
/* 80031D0C 0002EC6C  38 63 00 01 */	addi r3, r3, 1
/* 80031D10 0002EC70  90 6D 80 BC */	stw r3, v1-_SDA_BASE_(r13)
/* 80031D14 0002EC74  4E 80 00 20 */	blr 
/* 80031D18 0002EC78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D1C 0002EC7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global GetRandom_sf32
GetRandom_sf32:
/* 80031D20 0002EC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031D24 0002EC84  7C 08 02 A6 */	mflr r0
/* 80031D28 0002EC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031D2C 0002EC8C  4B FF FF B5 */	bl GetRandom_s32
/* 80031D30 0002EC90  54 64 02 3E */	clrlwi r4, r3, 8
/* 80031D34 0002EC94  3C 00 43 30 */	lis r0, 0x4330
/* 80031D38 0002EC98  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80031D3C 0002EC9C  90 01 00 08 */	stw r0, 8(r1)
/* 80031D40 0002ECA0  C8 42 83 88 */	lfd f2, @136-_SDA2_BASE_(r2)
/* 80031D44 0002ECA4  2C 03 00 00 */	cmpwi r3, 0
/* 80031D48 0002ECA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80031D4C 0002ECAC  C0 02 83 80 */	lfs f0, @134-_SDA2_BASE_(r2)
/* 80031D50 0002ECB0  C8 21 00 08 */	lfd f1, 8(r1)
/* 80031D54 0002ECB4  EC 21 10 28 */	fsubs f1, f1, f2
/* 80031D58 0002ECB8  EC 21 00 24 */	fdivs f1, f1, f0
/* 80031D5C 0002ECBC  40 80 00 08 */	bge lbl_80031D64
/* 80031D60 0002ECC0  FC 20 08 50 */	fneg f1, f1
lbl_80031D64:
/* 80031D64 0002ECC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031D68 0002ECC8  7C 08 03 A6 */	mtlr r0
/* 80031D6C 0002ECCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80031D70 0002ECD0  4E 80 00 20 */	blr 
/* 80031D74 0002ECD4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D78 0002ECD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D7C 0002ECDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
