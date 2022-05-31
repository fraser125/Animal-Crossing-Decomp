lbl_80396E6C:
/* 80396E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80396E70  7C 08 02 A6 */	mflr r0
/* 80396E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80396E78  39 61 00 20 */	addi r11, r1, 0x20
/* 80396E7C  4B D0 40 51 */	bl func_8009AECC
/* 80396E80  7C 7B 1B 78 */	mr r27, r3
/* 80396E84  7C BD 2B 78 */	mr r29, r5
/* 80396E88  80 63 00 00 */	lwz r3, 0(r3)
/* 80396E8C  3C 00 E7 00 */	lis r0, 0xe700
/* 80396E90  39 20 00 00 */	li r9, 0
/* 80396E94  3D 00 EF 30 */	lis r8, 0xef30
/* 80396E98  90 03 00 00 */	stw r0, 0(r3)
/* 80396E9C  3C A0 F7 00 */	lis r5, 0xf700
/* 80396EA0  28 1D 00 01 */	cmplwi r29, 1
/* 80396EA4  38 00 FF FF */	li r0, -1
/* 80396EA8  91 23 00 04 */	stw r9, 4(r3)
/* 80396EAC  7C 9C 23 78 */	mr r28, r4
/* 80396EB0  7C DE 33 78 */	mr r30, r6
/* 80396EB4  7C FF 3B 78 */	mr r31, r7
/* 80396EB8  91 03 00 08 */	stw r8, 8(r3)
/* 80396EBC  91 23 00 0C */	stw r9, 0xc(r3)
/* 80396EC0  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80396EC4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80396EC8  38 63 00 18 */	addi r3, r3, 0x18
/* 80396ECC  40 81 00 14 */	ble lbl_80396EE0
/* 80396ED0  7F A7 EB 78 */	mr r7, r29
/* 80396ED4  38 BD FF FF */	addi r5, r29, -1
/* 80396ED8  38 DE 00 01 */	addi r6, r30, 1
/* 80396EDC  48 04 EB 09 */	bl gfx_gDPFillRectangleF
lbl_80396EE0:
/* 80396EE0  28 1C 00 01 */	cmplwi r28, 1
/* 80396EE4  40 81 00 18 */	ble lbl_80396EFC
/* 80396EE8  7F A5 EB 78 */	mr r5, r29
/* 80396EEC  7F 86 E3 78 */	mr r6, r28
/* 80396EF0  38 9C FF FF */	addi r4, r28, -1
/* 80396EF4  38 FF 00 01 */	addi r7, r31, 1
/* 80396EF8  48 04 EA ED */	bl gfx_gDPFillRectangleF
lbl_80396EFC:
/* 80396EFC  28 1F 00 EF */	cmplwi r31, 0xef
/* 80396F00  40 80 00 18 */	bge lbl_80396F18
/* 80396F04  7F 84 E3 78 */	mr r4, r28
/* 80396F08  7F E5 FB 78 */	mr r5, r31
/* 80396F0C  38 DE 00 01 */	addi r6, r30, 1
/* 80396F10  38 FF 00 01 */	addi r7, r31, 1
/* 80396F14  48 04 EA D1 */	bl gfx_gDPFillRectangleF
lbl_80396F18:
/* 80396F18  28 1E 01 3F */	cmplwi r30, 0x13f
/* 80396F1C  40 80 00 18 */	bge lbl_80396F34
/* 80396F20  7F C4 F3 78 */	mr r4, r30
/* 80396F24  7F A5 EB 78 */	mr r5, r29
/* 80396F28  38 DE 00 01 */	addi r6, r30, 1
/* 80396F2C  38 FF 00 01 */	addi r7, r31, 1
/* 80396F30  48 04 EA B5 */	bl gfx_gDPFillRectangleF
lbl_80396F34:
/* 80396F34  7C 64 1B 78 */	mr r4, r3
/* 80396F38  3C 00 E7 00 */	lis r0, 0xe700
/* 80396F3C  90 03 00 00 */	stw r0, 0(r3)
/* 80396F40  38 00 00 00 */	li r0, 0
/* 80396F44  38 63 00 08 */	addi r3, r3, 8
/* 80396F48  90 04 00 04 */	stw r0, 4(r4)
/* 80396F4C  90 7B 00 00 */	stw r3, 0(r27)
/* 80396F50  39 61 00 20 */	addi r11, r1, 0x20
/* 80396F54  4B D0 3F C5 */	bl func_8009AF18
/* 80396F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80396F5C  7C 08 03 A6 */	mtlr r0
/* 80396F60  38 21 00 20 */	addi r1, r1, 0x20
/* 80396F64  4E 80 00 20 */	blr 
