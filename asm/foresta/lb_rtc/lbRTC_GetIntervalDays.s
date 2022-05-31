lbl_80406A9C:
/* 80406A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80406AA4  A0 A3 00 06 */	lhz r5, 6(r3)
/* 80406AA8  A0 04 00 06 */	lhz r0, 6(r4)
/* 80406AAC  54 A6 F0 02 */	slwi r6, r5, 0x1e
/* 80406AB0  54 A8 0F FE */	srwi r8, r5, 0x1f
/* 80406AB4  7D 85 00 50 */	subf r12, r5, r0
/* 80406AB8  54 07 F0 02 */	slwi r7, r0, 0x1e
/* 80406ABC  7C C8 30 50 */	subf r6, r8, r6
/* 80406AC0  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 80406AC4  54 C6 10 3E */	rotlwi r6, r6, 2
/* 80406AC8  7D 8B 16 70 */	srawi r11, r12, 2
/* 80406ACC  55 89 F0 02 */	slwi r9, r12, 0x1e
/* 80406AD0  55 8C 0F FE */	srwi r12, r12, 0x1f
/* 80406AD4  7F E6 42 14 */	add r31, r6, r8
/* 80406AD8  7C CB 01 94 */	addze r6, r11
/* 80406ADC  7D 2C 48 50 */	subf r9, r12, r9
/* 80406AE0  7C 05 00 40 */	cmplw r5, r0
/* 80406AE4  55 2B 10 3E */	rotlwi r11, r9, 2
/* 80406AE8  21 1F 00 04 */	subfic r8, r31, 4
/* 80406AEC  7D 2A 38 50 */	subf r9, r10, r7
/* 80406AF0  55 07 F0 02 */	slwi r7, r8, 0x1e
/* 80406AF4  55 08 0F FE */	srwi r8, r8, 0x1f
/* 80406AF8  7C E8 38 50 */	subf r7, r8, r7
/* 80406AFC  7D 6B 62 14 */	add r11, r11, r12
/* 80406B00  54 E7 10 3E */	rotlwi r7, r7, 2
/* 80406B04  55 29 10 3E */	rotlwi r9, r9, 2
/* 80406B08  7C E7 42 14 */	add r7, r7, r8
/* 80406B0C  7D 67 3A 78 */	xor r7, r11, r7
/* 80406B10  7D 09 52 14 */	add r8, r9, r10
/* 80406B14  7C E5 0E 70 */	srawi r5, r7, 1
/* 80406B18  7F E9 00 34 */	cntlzw r9, r31
/* 80406B1C  7C E0 58 38 */	and r0, r7, r11
/* 80406B20  7D 08 00 34 */	cntlzw r8, r8
/* 80406B24  7C A0 28 50 */	subf r5, r0, r5
/* 80406B28  55 20 D9 7E */	srwi r0, r9, 5
/* 80406B2C  55 09 D9 7E */	srwi r9, r8, 5
/* 80406B30  54 AC 0F FE */	srwi r12, r5, 0x1f
/* 80406B34  40 81 00 0C */	ble lbl_80406B40
/* 80406B38  38 60 00 00 */	li r3, 0
/* 80406B3C  48 00 00 D8 */	b lbl_80406C14
lbl_80406B40:
/* 80406B40  40 82 00 70 */	bne lbl_80406BB0
/* 80406B44  88 E3 00 05 */	lbz r7, 5(r3)
/* 80406B48  88 A4 00 05 */	lbz r5, 5(r4)
/* 80406B4C  7C 07 28 40 */	cmplw r7, r5
/* 80406B50  40 81 00 0C */	ble lbl_80406B5C
/* 80406B54  38 60 00 00 */	li r3, 0
/* 80406B58  48 00 00 BC */	b lbl_80406C14
lbl_80406B5C:
/* 80406B5C  40 82 00 54 */	bne lbl_80406BB0
/* 80406B60  88 E3 00 03 */	lbz r7, 3(r3)
/* 80406B64  88 A4 00 03 */	lbz r5, 3(r4)
/* 80406B68  7C 07 28 40 */	cmplw r7, r5
/* 80406B6C  40 81 00 0C */	ble lbl_80406B78
/* 80406B70  38 60 00 00 */	li r3, 0
/* 80406B74  48 00 00 A0 */	b lbl_80406C14
lbl_80406B78:
/* 80406B78  40 82 00 38 */	bne lbl_80406BB0
/* 80406B7C  88 E3 00 02 */	lbz r7, 2(r3)
/* 80406B80  88 A4 00 02 */	lbz r5, 2(r4)
/* 80406B84  7C 07 28 40 */	cmplw r7, r5
/* 80406B88  40 81 00 0C */	ble lbl_80406B94
/* 80406B8C  38 60 00 00 */	li r3, 0
/* 80406B90  48 00 00 84 */	b lbl_80406C14
lbl_80406B94:
/* 80406B94  40 82 00 1C */	bne lbl_80406BB0
/* 80406B98  88 E3 00 01 */	lbz r7, 1(r3)
/* 80406B9C  88 A4 00 01 */	lbz r5, 1(r4)
/* 80406BA0  7C 07 28 40 */	cmplw r7, r5
/* 80406BA4  40 81 00 0C */	ble lbl_80406BB0
/* 80406BA8  38 60 00 00 */	li r3, 0
/* 80406BAC  48 00 00 68 */	b lbl_80406C14
lbl_80406BB0:
/* 80406BB0  1D 6B 01 6D */	mulli r11, r11, 0x16d
/* 80406BB4  3D 40 80 64 */	lis r10, total_days@ha /* 0x80643628@ha */
/* 80406BB8  89 04 00 05 */	lbz r8, 5(r4)
/* 80406BBC  39 4A 36 28 */	addi r10, r10, total_days@l /* 0x80643628@l */
/* 80406BC0  88 A3 00 05 */	lbz r5, 5(r3)
/* 80406BC4  88 E3 00 03 */	lbz r7, 3(r3)
/* 80406BC8  7C 6B 62 14 */	add r3, r11, r12
/* 80406BCC  39 8A FF FC */	addi r12, r10, -4
/* 80406BD0  1D 46 05 B5 */	mulli r10, r6, 0x5b5
/* 80406BD4  89 64 00 03 */	lbz r11, 3(r4)
/* 80406BD8  55 08 10 3A */	slwi r8, r8, 2
/* 80406BDC  54 A4 10 3A */	slwi r4, r5, 2
/* 80406BE0  1D 29 00 34 */	mulli r9, r9, 0x34
/* 80406BE4  38 A7 FF FF */	addi r5, r7, -1
/* 80406BE8  7C 6A 1A 14 */	add r3, r10, r3
/* 80406BEC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80406BF0  7C 6B 1A 14 */	add r3, r11, r3
/* 80406BF4  7C C9 42 14 */	add r6, r9, r8
/* 80406BF8  7C CC 30 2E */	lwzx r6, r12, r6
/* 80406BFC  38 63 FF FF */	addi r3, r3, -1
/* 80406C00  7C 00 22 14 */	add r0, r0, r4
/* 80406C04  7C 63 32 14 */	add r3, r3, r6
/* 80406C08  7C 0C 00 2E */	lwzx r0, r12, r0
/* 80406C0C  7C 65 18 50 */	subf r3, r5, r3
/* 80406C10  7C 60 18 50 */	subf r3, r0, r3
lbl_80406C14:
/* 80406C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80406C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80406C1C  4E 80 00 20 */	blr 
