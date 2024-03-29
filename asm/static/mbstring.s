.include "macros.inc"

.section .text

.org 0x8009CEB0

.global wcstombs
wcstombs:
/* 8009CEB0 00099E10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009CEB4 00099E14  7C 08 02 A6 */	mflr r0
/* 8009CEB8 00099E18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009CEBC 00099E1C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8009CEC0 00099E20  7C 7B 1B 79 */	or. r27, r3, r3
/* 8009CEC4 00099E24  7C BC 2B 78 */	mr r28, r5
/* 8009CEC8 00099E28  3B C0 00 00 */	li r30, 0
/* 8009CECC 00099E2C  41 82 00 0C */	beq lbl_8009CED8
/* 8009CED0 00099E30  28 04 00 00 */	cmplwi r4, 0
/* 8009CED4 00099E34  40 82 00 0C */	bne lbl_8009CEE0
lbl_8009CED8:
/* 8009CED8 00099E38  38 60 00 00 */	li r3, 0
/* 8009CEDC 00099E3C  48 00 00 60 */	b lbl_8009CF3C
lbl_8009CEE0:
/* 8009CEE0 00099E40  7C 9D 23 78 */	mr r29, r4
/* 8009CEE4 00099E44  48 00 00 4C */	b lbl_8009CF30
lbl_8009CEE8:
/* 8009CEE8 00099E48  A0 9D 00 00 */	lhz r4, 0(r29)
/* 8009CEEC 00099E4C  28 04 00 00 */	cmplwi r4, 0
/* 8009CEF0 00099E50  40 82 00 10 */	bne lbl_8009CF00
/* 8009CEF4 00099E54  38 00 00 00 */	li r0, 0
/* 8009CEF8 00099E58  7C 1B F1 AE */	stbx r0, r27, r30
/* 8009CEFC 00099E5C  48 00 00 3C */	b lbl_8009CF38
lbl_8009CF00:
/* 8009CF00 00099E60  38 61 00 08 */	addi r3, r1, 8
/* 8009CF04 00099E64  3B BD 00 02 */	addi r29, r29, 2
/* 8009CF08 00099E68  48 00 00 49 */	bl unicode_to_UTF8
/* 8009CF0C 00099E6C  7C 7F 1B 78 */	mr r31, r3
/* 8009CF10 00099E70  7C 1E FA 14 */	add r0, r30, r31
/* 8009CF14 00099E74  7C 00 E0 40 */	cmplw r0, r28
/* 8009CF18 00099E78  41 81 00 20 */	bgt lbl_8009CF38
/* 8009CF1C 00099E7C  7F E5 FB 78 */	mr r5, r31
/* 8009CF20 00099E80  7C 7B F2 14 */	add r3, r27, r30
/* 8009CF24 00099E84  38 81 00 08 */	addi r4, r1, 8
/* 8009CF28 00099E88  48 00 28 29 */	bl strncpy
/* 8009CF2C 00099E8C  7F DE FA 14 */	add r30, r30, r31
lbl_8009CF30:
/* 8009CF30 00099E90  7C 1E E0 40 */	cmplw r30, r28
/* 8009CF34 00099E94  40 81 FF B4 */	ble lbl_8009CEE8
lbl_8009CF38:
/* 8009CF38 00099E98  7F C3 F3 78 */	mr r3, r30
lbl_8009CF3C:
/* 8009CF3C 00099E9C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8009CF40 00099EA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009CF44 00099EA4  7C 08 03 A6 */	mtlr r0
/* 8009CF48 00099EA8  38 21 00 30 */	addi r1, r1, 0x30
/* 8009CF4C 00099EAC  4E 80 00 20 */	blr 

.global unicode_to_UTF8
unicode_to_UTF8:
/* 8009CF50 00099EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009CF54 00099EB4  28 03 00 00 */	cmplwi r3, 0
/* 8009CF58 00099EB8  80 02 88 A8 */	lwz r0, @74-_SDA2_BASE_(r2)
/* 8009CF5C 00099EBC  90 01 00 08 */	stw r0, 8(r1)
/* 8009CF60 00099EC0  40 82 00 0C */	bne lbl_8009CF6C
/* 8009CF64 00099EC4  38 60 00 00 */	li r3, 0
/* 8009CF68 00099EC8  48 00 00 84 */	b lbl_8009CFEC
lbl_8009CF6C:
/* 8009CF6C 00099ECC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8009CF70 00099ED0  28 00 00 80 */	cmplwi r0, 0x80
/* 8009CF74 00099ED4  40 80 00 0C */	bge lbl_8009CF80
/* 8009CF78 00099ED8  38 A0 00 01 */	li r5, 1
/* 8009CF7C 00099EDC  48 00 00 18 */	b lbl_8009CF94
lbl_8009CF80:
/* 8009CF80 00099EE0  28 00 08 00 */	cmplwi r0, 0x800
/* 8009CF84 00099EE4  40 80 00 0C */	bge lbl_8009CF90
/* 8009CF88 00099EE8  38 A0 00 02 */	li r5, 2
/* 8009CF8C 00099EEC  48 00 00 08 */	b lbl_8009CF94
lbl_8009CF90:
/* 8009CF90 00099EF0  38 A0 00 03 */	li r5, 3
lbl_8009CF94:
/* 8009CF94 00099EF4  2C 05 00 02 */	cmpwi r5, 2
/* 8009CF98 00099EF8  7C C3 2A 14 */	add r6, r3, r5
/* 8009CF9C 00099EFC  41 82 00 2C */	beq lbl_8009CFC8
/* 8009CFA0 00099F00  40 80 00 10 */	bge lbl_8009CFB0
/* 8009CFA4 00099F04  2C 05 00 01 */	cmpwi r5, 1
/* 8009CFA8 00099F08  40 80 00 30 */	bge lbl_8009CFD8
/* 8009CFAC 00099F0C  48 00 00 3C */	b lbl_8009CFE8
lbl_8009CFB0:
/* 8009CFB0 00099F10  2C 05 00 04 */	cmpwi r5, 4
/* 8009CFB4 00099F14  40 80 00 34 */	bge lbl_8009CFE8
/* 8009CFB8 00099F18  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8009CFBC 00099F1C  54 84 D5 BE */	rlwinm r4, r4, 0x1a, 0x16, 0x1f
/* 8009CFC0 00099F20  60 00 00 80 */	ori r0, r0, 0x80
/* 8009CFC4 00099F24  9C 06 FF FF */	stbu r0, -1(r6)
lbl_8009CFC8:
/* 8009CFC8 00099F28  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8009CFCC 00099F2C  54 84 D5 BE */	rlwinm r4, r4, 0x1a, 0x16, 0x1f
/* 8009CFD0 00099F30  60 00 00 80 */	ori r0, r0, 0x80
/* 8009CFD4 00099F34  9C 06 FF FF */	stbu r0, -1(r6)
lbl_8009CFD8:
/* 8009CFD8 00099F38  38 61 00 08 */	addi r3, r1, 8
/* 8009CFDC 00099F3C  7C 03 28 AE */	lbzx r0, r3, r5
/* 8009CFE0 00099F40  7C 80 03 78 */	or r0, r4, r0
/* 8009CFE4 00099F44  98 06 FF FF */	stb r0, -1(r6)
lbl_8009CFE8:
/* 8009CFE8 00099F48  7C A3 2B 78 */	mr r3, r5
lbl_8009CFEC:
/* 8009CFEC 00099F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009CFF0 00099F50  4E 80 00 20 */	blr 
