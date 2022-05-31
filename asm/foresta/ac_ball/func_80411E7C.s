lbl_80411E7C:
/* 80411E7C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80411E80  7C 08 02 A6 */	mflr r0
/* 80411E84  90 01 00 64 */	stw r0, 0x64(r1)
/* 80411E88  39 61 00 60 */	addi r11, r1, 0x60
/* 80411E8C  4B C8 90 2D */	bl func_8009AEB8
/* 80411E90  7C 7D 1B 78 */	mr r29, r3
/* 80411E94  4B F9 2E FD */	bl mFI_GetBlockXMax
/* 80411E98  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80411E9C  4B F9 2F 3D */	bl mFI_GetBlockZMax
/* 80411EA0  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80411EA4  4B C4 AE 51 */	bl fqrand
/* 80411EA8  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80411EAC  3C 00 43 30 */	lis r0, 0x4330
/* 80411EB0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80411EB4  3C 80 80 64 */	lis r4, data_806439A4@ha /* 0x806439A4@ha */
/* 80411EB8  C8 44 39 A4 */	lfd f2, data_806439A4@l(r4)  /* 0x806439A4@l */
/* 80411EBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80411EC0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80411EC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80411EC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80411ECC  FC 00 00 1E */	fctiwz f0, f0
/* 80411ED0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80411ED4  83 21 00 1C */	lwz r25, 0x1c(r1)
/* 80411ED8  4B C4 AE 1D */	bl fqrand
/* 80411EDC  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 80411EE0  3C 00 43 30 */	lis r0, 0x4330
/* 80411EE4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80411EE8  3C 80 80 64 */	lis r4, data_806439A4@ha /* 0x806439A4@ha */
/* 80411EEC  C8 44 39 A4 */	lfd f2, data_806439A4@l(r4)  /* 0x806439A4@l */
/* 80411EF0  3B 7E FF FF */	addi r27, r30, -1
/* 80411EF4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80411EF8  3B 9F FF FF */	addi r28, r31, -1
/* 80411EFC  3A E0 00 00 */	li r23, 0
/* 80411F00  3F 40 00 71 */	lis r26, 0x71
/* 80411F04  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80411F08  EC 00 10 28 */	fsubs f0, f0, f2
/* 80411F0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80411F10  FC 00 00 1E */	fctiwz f0, f0
/* 80411F14  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80411F18  83 01 00 2C */	lwz r24, 0x2c(r1)
/* 80411F1C  48 00 00 9C */	b lbl_80411FB8
lbl_80411F20:
/* 80411F20  3A C0 00 00 */	li r22, 0
/* 80411F24  48 00 00 74 */	b lbl_80411F98
lbl_80411F28:
/* 80411F28  7F 23 CB 78 */	mr r3, r25
/* 80411F2C  7F 04 C3 78 */	mr r4, r24
/* 80411F30  38 BA 80 23 */	addi r5, r26, -32733
/* 80411F34  4B F9 44 85 */	bl mFI_CheckBlockKind_OR
/* 80411F38  2C 03 00 00 */	cmpwi r3, 0
/* 80411F3C  40 82 00 44 */	bne lbl_80411F80
/* 80411F40  7F 25 CB 78 */	mr r5, r25
/* 80411F44  7F 06 C3 78 */	mr r6, r24
/* 80411F48  38 61 00 0C */	addi r3, r1, 0xc
/* 80411F4C  38 81 00 08 */	addi r4, r1, 8
/* 80411F50  38 E0 00 02 */	li r7, 2
/* 80411F54  4B FC 0E E1 */	bl mNpc_GetMakeUtNuminBlock_hard_area
/* 80411F58  2C 03 00 01 */	cmpwi r3, 1
/* 80411F5C  40 82 00 24 */	bne lbl_80411F80
/* 80411F60  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80411F64  7F A3 EB 78 */	mr r3, r29
/* 80411F68  80 E1 00 08 */	lwz r7, 8(r1)
/* 80411F6C  7F 24 CB 78 */	mr r4, r25
/* 80411F70  7F 05 C3 78 */	mr r5, r24
/* 80411F74  4B F9 3D 81 */	bl mFI_BkandUtNum2CenterWpos
/* 80411F78  38 60 00 01 */	li r3, 1
/* 80411F7C  48 00 00 48 */	b lbl_80411FC4
lbl_80411F80:
/* 80411F80  7C 7B C0 50 */	subf r3, r27, r24
/* 80411F84  38 18 00 01 */	addi r0, r24, 1
/* 80411F88  30 63 FF FF */	addic r3, r3, -1
/* 80411F8C  3A D6 00 01 */	addi r22, r22, 1
/* 80411F90  7C 63 19 10 */	subfe r3, r3, r3
/* 80411F94  7C 18 18 78 */	andc r24, r0, r3
lbl_80411F98:
/* 80411F98  7C 16 F0 00 */	cmpw r22, r30
/* 80411F9C  41 80 FF 8C */	blt lbl_80411F28
/* 80411FA0  7C 7C C8 50 */	subf r3, r28, r25
/* 80411FA4  38 19 00 01 */	addi r0, r25, 1
/* 80411FA8  30 63 FF FF */	addic r3, r3, -1
/* 80411FAC  3A F7 00 01 */	addi r23, r23, 1
/* 80411FB0  7C 63 19 10 */	subfe r3, r3, r3
/* 80411FB4  7C 19 18 78 */	andc r25, r0, r3
lbl_80411FB8:
/* 80411FB8  7C 17 F8 00 */	cmpw r23, r31
/* 80411FBC  41 80 FF 64 */	blt lbl_80411F20
/* 80411FC0  38 60 00 00 */	li r3, 0
lbl_80411FC4:
/* 80411FC4  39 61 00 60 */	addi r11, r1, 0x60
/* 80411FC8  4B C8 8F 3D */	bl func_8009AF04
/* 80411FCC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80411FD0  7C 08 03 A6 */	mtlr r0
/* 80411FD4  38 21 00 60 */	addi r1, r1, 0x60
/* 80411FD8  4E 80 00 20 */	blr 
