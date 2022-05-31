lbl_805D9EEC:
/* 805D9EEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D9EF0  7C 08 02 A6 */	mflr r0
/* 805D9EF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D9EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9EFC  4B AC 0F D5 */	bl func_8009AED0
/* 805D9F00  7C BF 2B 78 */	mr r31, r5
/* 805D9F04  7C 7C 1B 78 */	mr r28, r3
/* 805D9F08  88 65 00 13 */	lbz r3, 0x13(r5)
/* 805D9F0C  7C 9D 23 78 */	mr r29, r4
/* 805D9F10  38 80 00 01 */	li r4, 1
/* 805D9F14  4B DD 57 89 */	bl mFont_GetCodeWidth
/* 805D9F18  7C 7E 1B 78 */	mr r30, r3
/* 805D9F1C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9F20  A8 9F 00 1E */	lha r4, 0x1e(r31)
/* 805D9F24  38 A0 00 01 */	li r5, 1
/* 805D9F28  4B DD 57 A9 */	bl mFont_GetStringWidth
/* 805D9F2C  A8 9F 00 1E */	lha r4, 0x1e(r31)
/* 805D9F30  7F C3 F2 14 */	add r30, r3, r30
/* 805D9F34  A8 1F 00 18 */	lha r0, 0x18(r31)
/* 805D9F38  38 64 00 01 */	addi r3, r4, 1
/* 805D9F3C  7C 03 00 00 */	cmpw r3, r0
/* 805D9F40  41 81 00 7C */	bgt lbl_805D9FBC
/* 805D9F44  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D9F48  7C 1E 00 00 */	cmpw r30, r0
/* 805D9F4C  41 81 00 10 */	bgt lbl_805D9F5C
/* 805D9F50  7F E3 FB 78 */	mr r3, r31
/* 805D9F54  4B FF F2 15 */	bl mED_output_code
/* 805D9F58  48 00 00 C0 */	b lbl_805DA018
lbl_805D9F5C:
/* 805D9F5C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9F60  88 03 00 00 */	lbz r0, 0(r3)
/* 805D9F64  28 00 00 20 */	cmplwi r0, 0x20
/* 805D9F68  40 82 00 40 */	bne lbl_805D9FA8
/* 805D9F6C  38 60 00 20 */	li r3, 0x20
/* 805D9F70  38 80 00 01 */	li r4, 1
/* 805D9F74  4B DD 57 29 */	bl mFont_GetCodeWidth
/* 805D9F78  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D9F7C  7C 63 F0 50 */	subf r3, r3, r30
/* 805D9F80  7C 03 00 00 */	cmpw r3, r0
/* 805D9F84  40 80 00 24 */	bge lbl_805D9FA8
/* 805D9F88  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9F8C  4B FF FF 11 */	bl mED_break_space_code
/* 805D9F90  A8 9F 00 1E */	lha r4, 0x1e(r31)
/* 805D9F94  7F E3 FB 78 */	mr r3, r31
/* 805D9F98  38 04 FF FF */	addi r0, r4, -1
/* 805D9F9C  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805D9FA0  4B FF F1 C9 */	bl mED_output_code
/* 805D9FA4  48 00 00 74 */	b lbl_805DA018
lbl_805D9FA8:
/* 805D9FA8  7F 83 E3 78 */	mr r3, r28
/* 805D9FAC  7F A4 EB 78 */	mr r4, r29
/* 805D9FB0  38 A0 00 19 */	li r5, 0x19
/* 805D9FB4  4B FF E3 FD */	bl func_805D83B0
/* 805D9FB8  48 00 00 60 */	b lbl_805DA018
lbl_805D9FBC:
/* 805D9FBC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9FC0  88 03 00 00 */	lbz r0, 0(r3)
/* 805D9FC4  28 00 00 20 */	cmplwi r0, 0x20
/* 805D9FC8  40 82 00 40 */	bne lbl_805DA008
/* 805D9FCC  38 60 00 20 */	li r3, 0x20
/* 805D9FD0  38 80 00 01 */	li r4, 1
/* 805D9FD4  4B DD 56 C9 */	bl mFont_GetCodeWidth
/* 805D9FD8  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D9FDC  7C 63 F0 50 */	subf r3, r3, r30
/* 805D9FE0  7C 03 00 00 */	cmpw r3, r0
/* 805D9FE4  40 80 00 24 */	bge lbl_805DA008
/* 805D9FE8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9FEC  4B FF FE B1 */	bl mED_break_space_code
/* 805D9FF0  A8 9F 00 1E */	lha r4, 0x1e(r31)
/* 805D9FF4  7F E3 FB 78 */	mr r3, r31
/* 805D9FF8  38 04 FF FF */	addi r0, r4, -1
/* 805D9FFC  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805DA000  4B FF F1 69 */	bl mED_output_code
/* 805DA004  48 00 00 14 */	b lbl_805DA018
lbl_805DA008:
/* 805DA008  7F 83 E3 78 */	mr r3, r28
/* 805DA00C  7F A4 EB 78 */	mr r4, r29
/* 805DA010  38 A0 00 19 */	li r5, 0x19
/* 805DA014  4B FF E3 9D */	bl func_805D83B0
lbl_805DA018:
/* 805DA018  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA01C  4B AC 0F 01 */	bl func_8009AF1C
/* 805DA020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DA024  7C 08 03 A6 */	mtlr r0
/* 805DA028  38 21 00 20 */	addi r1, r1, 0x20
/* 805DA02C  4E 80 00 20 */	blr 
