lbl_80492D4C:
/* 80492D4C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80492D50  7C 08 02 A6 */	mflr r0
/* 80492D54  90 01 00 64 */	stw r0, 0x64(r1)
/* 80492D58  39 61 00 60 */	addi r11, r1, 0x60
/* 80492D5C  4B C0 81 51 */	bl func_8009AEAC
/* 80492D60  7C 6C 1B 78 */	mr r12, r3
/* 80492D64  7C 94 23 78 */	mr r20, r4
/* 80492D68  7C B5 2B 78 */	mr r21, r5
/* 80492D6C  7C D6 33 78 */	mr r22, r6
/* 80492D70  7C F7 3B 78 */	mr r23, r7
/* 80492D74  7D 04 43 78 */	mr r4, r8
/* 80492D78  38 61 00 08 */	addi r3, r1, 8
/* 80492D7C  3B 20 00 08 */	li r25, 8
/* 80492D80  7D 89 03 A6 */	mtctr r12
/* 80492D84  4E 80 04 21 */	bctrl 
/* 80492D88  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80492D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80492D90  38 84 EC A4 */	addi r4, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80492D94  90 64 00 0C */	stw r3, 0xc(r4)
/* 80492D98  41 80 00 20 */	blt lbl_80492DB8
/* 80492D9C  A0 61 00 08 */	lhz r3, 8(r1)
/* 80492DA0  38 80 00 00 */	li r4, 0
/* 80492DA4  4B F5 08 91 */	bl mQst_SetItemNameStr
/* 80492DA8  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80492DAC  A0 01 00 08 */	lhz r0, 8(r1)
/* 80492DB0  38 63 EC A4 */	addi r3, r3, l_normal_info@l /* 0x811CECA4@l */
/* 80492DB4  B0 03 00 14 */	sth r0, 0x14(r3)
lbl_80492DB8:
/* 80492DB8  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80492DBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80492DC0  3B A4 EC A4 */	addi r29, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80492DC4  3C 80 81 1D */	lis r4, other_itemNo@ha /* 0x811CECC4@ha */
/* 80492DC8  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 80492DCC  3B 00 00 00 */	li r24, 0
/* 80492DD0  3B 9D 00 14 */	addi r28, r29, 0x14
/* 80492DD4  3B C4 EC C4 */	addi r30, r4, other_itemNo@l /* 0x811CECC4@l */
/* 80492DD8  3F 7F 00 02 */	addis r27, r31, 2
/* 80492DDC  3A 60 00 00 */	li r19, 0
/* 80492DE0  48 00 01 04 */	b lbl_80492EE4
lbl_80492DE4:
/* 80492DE4  83 55 00 00 */	lwz r26, 0(r21)
/* 80492DE8  2C 1A 00 05 */	cmpwi r26, 5
/* 80492DEC  40 82 00 10 */	bne lbl_80492DFC
/* 80492DF0  4B F1 70 F9 */	bl mFI_GetOtherFruit
/* 80492DF4  B0 61 00 08 */	sth r3, 8(r1)
/* 80492DF8  48 00 00 CC */	b lbl_80492EC4
lbl_80492DFC:
/* 80492DFC  2C 1A 00 02 */	cmpwi r26, 2
/* 80492E00  40 82 00 54 */	bne lbl_80492E54
/* 80492E04  3C 60 81 1D */	lis r3, other_itemNo@ha /* 0x811CECC4@ha */
/* 80492E08  38 80 00 06 */	li r4, 6
/* 80492E0C  38 63 EC C4 */	addi r3, r3, other_itemNo@l /* 0x811CECC4@l */
/* 80492E10  4B BC A2 59 */	bl bzero
/* 80492E14  3C 60 81 1D */	lis r3, other_itemNo@ha /* 0x811CECC4@ha */
/* 80492E18  A0 1D 00 16 */	lhz r0, 0x16(r29)
/* 80492E1C  38 C3 EC C4 */	addi r6, r3, other_itemNo@l /* 0x811CECC4@l */
/* 80492E20  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80492E24  B0 1E 00 02 */	sth r0, 2(r30)
/* 80492E28  7E 84 A3 78 */	mr r4, r20
/* 80492E2C  80 FB 61 3C */	lwz r7, 0x613c(r27)
/* 80492E30  7F 45 D3 78 */	mr r5, r26
/* 80492E34  B0 66 00 00 */	sth r3, 0(r6)
/* 80492E38  7F 28 CB 78 */	mr r8, r25
/* 80492E3C  38 61 00 08 */	addi r3, r1, 8
/* 80492E40  A0 07 10 8A */	lhz r0, 0x108a(r7)
/* 80492E44  38 E0 00 03 */	li r7, 3
/* 80492E48  B0 1E 00 04 */	sth r0, 4(r30)
/* 80492E4C  4B F5 15 E1 */	bl mQst_GetGoods_common
/* 80492E50  48 00 00 74 */	b lbl_80492EC4
lbl_80492E54:
/* 80492E54  2C 1A 00 00 */	cmpwi r26, 0
/* 80492E58  40 82 00 50 */	bne lbl_80492EA8
/* 80492E5C  4B BC 9E 99 */	bl fqrand
/* 80492E60  3C 60 80 64 */	lis r3, data_80644C64@ha /* 0x80644C64@ha */
/* 80492E64  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80492E68  C0 03 4C 64 */	lfs f0, data_80644C64@l(r3)  /* 0x80644C64@l */
/* 80492E6C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80492E70  EC 00 00 72 */	fmuls f0, f0, f1
/* 80492E74  FC 00 00 1E */	fctiwz f0, f0
/* 80492E78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80492E7C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80492E80  40 82 00 14 */	bne lbl_80492E94
/* 80492E84  2C 03 00 5A */	cmpwi r3, 0x5a
/* 80492E88  41 80 00 0C */	blt lbl_80492E94
/* 80492E8C  3B 20 00 13 */	li r25, 0x13
/* 80492E90  48 00 00 18 */	b lbl_80492EA8
lbl_80492E94:
/* 80492E94  2C 00 00 33 */	cmpwi r0, 0x33
/* 80492E98  40 82 00 10 */	bne lbl_80492EA8
/* 80492E9C  2C 03 00 50 */	cmpwi r3, 0x50
/* 80492EA0  41 80 00 08 */	blt lbl_80492EA8
/* 80492EA4  3B 20 00 17 */	li r25, 0x17
lbl_80492EA8:
/* 80492EA8  7E 84 A3 78 */	mr r4, r20
/* 80492EAC  7F 45 D3 78 */	mr r5, r26
/* 80492EB0  7F 86 E3 78 */	mr r6, r28
/* 80492EB4  7F 28 CB 78 */	mr r8, r25
/* 80492EB8  38 61 00 08 */	addi r3, r1, 8
/* 80492EBC  38 E0 00 02 */	li r7, 2
/* 80492EC0  4B F5 15 6D */	bl mQst_GetGoods_common
lbl_80492EC4:
/* 80492EC4  A0 61 00 08 */	lhz r3, 8(r1)
/* 80492EC8  7C BD 9A 14 */	add r5, r29, r19
/* 80492ECC  38 98 00 01 */	addi r4, r24, 1
/* 80492ED0  B0 65 00 16 */	sth r3, 0x16(r5)
/* 80492ED4  4B F5 07 61 */	bl mQst_SetItemNameStr
/* 80492ED8  3A B5 00 04 */	addi r21, r21, 4
/* 80492EDC  3B 18 00 01 */	addi r24, r24, 1
/* 80492EE0  3A 73 00 02 */	addi r19, r19, 2
lbl_80492EE4:
/* 80492EE4  7C 18 B0 00 */	cmpw r24, r22
/* 80492EE8  41 80 FE FC */	blt lbl_80492DE4
/* 80492EEC  2C 17 00 00 */	cmpwi r23, 0
/* 80492EF0  40 82 00 54 */	bne lbl_80492F44
/* 80492EF4  4B BC 9E 01 */	bl fqrand
/* 80492EF8  6E C3 80 00 */	xoris r3, r22, 0x8000
/* 80492EFC  3C 00 43 30 */	lis r0, 0x4330
/* 80492F00  90 61 00 14 */	stw r3, 0x14(r1)
/* 80492F04  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 80492F08  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80492F0C  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 80492F10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80492F14  38 63 EC A4 */	addi r3, r3, l_normal_info@l /* 0x811CECA4@l */
/* 80492F18  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80492F1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80492F20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80492F24  FC 00 00 1E */	fctiwz f0, f0
/* 80492F28  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80492F2C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80492F30  54 00 08 3C */	slwi r0, r0, 1
/* 80492F34  7C 63 02 14 */	add r3, r3, r0
/* 80492F38  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 80492F3C  B0 01 00 08 */	sth r0, 8(r1)
/* 80492F40  48 00 00 0C */	b lbl_80492F4C
lbl_80492F44:
/* 80492F44  38 00 25 12 */	li r0, 0x2512
/* 80492F48  B0 01 00 08 */	sth r0, 8(r1)
lbl_80492F4C:
/* 80492F4C  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80492F50  A0 61 00 08 */	lhz r3, 8(r1)
/* 80492F54  38 A4 EC A4 */	addi r5, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80492F58  B0 65 00 1C */	sth r3, 0x1c(r5)
/* 80492F5C  38 80 00 04 */	li r4, 4
/* 80492F60  4B F5 06 D5 */	bl mQst_SetItemNameStr
/* 80492F64  39 61 00 60 */	addi r11, r1, 0x60
/* 80492F68  4B C0 7F 91 */	bl func_8009AEF8
/* 80492F6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80492F70  7C 08 03 A6 */	mtlr r0
/* 80492F74  38 21 00 60 */	addi r1, r1, 0x60
/* 80492F78  4E 80 00 20 */	blr 
