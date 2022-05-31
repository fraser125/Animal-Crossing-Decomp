lbl_80577E88:
/* 80577E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577E8C  7C 08 02 A6 */	mflr r0
/* 80577E90  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 80577E94  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 80577E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577E9C  38 C6 E0 00 */	addi r6, r6, -8192
/* 80577EA0  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 80577EA4  38 A0 00 0F */	li r5, 0xf
/* 80577EA8  3D 47 00 02 */	addis r10, r7, 2
/* 80577EAC  54 C8 0F FE */	srwi r8, r6, 0x1f
/* 80577EB0  54 C7 D0 0A */	slwi r7, r6, 0x1a
/* 80577EB4  81 2A 61 3C */	lwz r9, 0x613c(r10)
/* 80577EB8  7C E8 38 50 */	subf r7, r8, r7
/* 80577EBC  38 00 00 00 */	li r0, 0
/* 80577EC0  54 E7 30 3E */	rotlwi r7, r7, 6
/* 80577EC4  38 C0 00 00 */	li r6, 0
/* 80577EC8  39 29 00 68 */	addi r9, r9, 0x68
/* 80577ECC  7D 67 42 14 */	add r11, r7, r8
/* 80577ED0  7C A9 03 A6 */	mtctr r5
lbl_80577ED4:
/* 80577ED4  A0 A9 00 00 */	lhz r5, 0(r9)
/* 80577ED8  28 05 20 00 */	cmplwi r5, 0x2000
/* 80577EDC  41 80 00 60 */	blt lbl_80577F3C
/* 80577EE0  28 05 20 FF */	cmplwi r5, 0x20ff
/* 80577EE4  41 81 00 58 */	bgt lbl_80577F3C
/* 80577EE8  39 05 E0 00 */	addi r8, r5, -8192
/* 80577EEC  55 05 D0 0A */	slwi r5, r8, 0x1a
/* 80577EF0  55 07 0F FE */	srwi r7, r8, 0x1f
/* 80577EF4  7C A7 28 50 */	subf r5, r7, r5
/* 80577EF8  54 A5 30 3E */	rotlwi r5, r5, 6
/* 80577EFC  7C A5 3A 14 */	add r5, r5, r7
/* 80577F00  7C 05 58 00 */	cmpw r5, r11
/* 80577F04  40 82 00 38 */	bne lbl_80577F3C
/* 80577F08  80 AA 61 3C */	lwz r5, 0x613c(r10)
/* 80577F0C  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 80577F10  7C A7 34 30 */	srw r7, r5, r6
/* 80577F14  54 E5 07 BD */	rlwinm. r5, r7, 0, 0x1e, 0x1e
/* 80577F18  40 82 00 24 */	bne lbl_80577F3C
/* 80577F1C  54 E5 07 FF */	clrlwi. r5, r7, 0x1f
/* 80577F20  40 82 00 1C */	bne lbl_80577F3C
/* 80577F24  7D 05 36 70 */	srawi r5, r8, 6
/* 80577F28  80 E3 00 00 */	lwz r7, 0(r3)
/* 80577F2C  7C A5 01 94 */	addze r5, r5
/* 80577F30  7C A5 3A 14 */	add r5, r5, r7
/* 80577F34  38 A5 00 01 */	addi r5, r5, 1
/* 80577F38  90 A3 00 00 */	stw r5, 0(r3)
lbl_80577F3C:
/* 80577F3C  39 29 00 02 */	addi r9, r9, 2
/* 80577F40  38 C6 00 02 */	addi r6, r6, 2
/* 80577F44  42 00 FF 90 */	bdnz lbl_80577ED4
/* 80577F48  80 A3 00 00 */	lwz r5, 0(r3)
/* 80577F4C  28 05 00 01 */	cmplwi r5, 1
/* 80577F50  40 81 00 14 */	ble lbl_80577F64
/* 80577F54  7C 83 23 78 */	mr r3, r4
/* 80577F58  7C A4 2B 78 */	mr r4, r5
/* 80577F5C  4B FF FB 41 */	bl aNSC_set_buy_sum_str
/* 80577F60  38 00 00 05 */	li r0, 5
lbl_80577F64:
/* 80577F64  7C 03 03 78 */	mr r3, r0
/* 80577F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577F6C  7C 08 03 A6 */	mtlr r0
/* 80577F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80577F74  4E 80 00 20 */	blr 
