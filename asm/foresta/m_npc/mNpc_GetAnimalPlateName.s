lbl_803D1DD0:
/* 803D1DD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D1DD4  7C 08 02 A6 */	mflr r0
/* 803D1DD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D1DDC  39 61 00 40 */	addi r11, r1, 0x40
/* 803D1DE0  4B CC 90 F5 */	bl func_8009AED4
/* 803D1DE4  80 C4 00 00 */	lwz r6, 0(r4)
/* 803D1DE8  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803D1DEC  80 A4 00 04 */	lwz r5, 4(r4)
/* 803D1DF0  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803D1DF4  80 04 00 08 */	lwz r0, 8(r4)
/* 803D1DF8  3F C7 00 01 */	addis r30, r7, 1
/* 803D1DFC  7C 7F 1B 78 */	mr r31, r3
/* 803D1E00  90 C1 00 18 */	stw r6, 0x18(r1)
/* 803D1E04  38 61 00 14 */	addi r3, r1, 0x14
/* 803D1E08  38 81 00 10 */	addi r4, r1, 0x10
/* 803D1E0C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803D1E10  38 A1 00 0C */	addi r5, r1, 0xc
/* 803D1E14  38 C1 00 08 */	addi r6, r1, 8
/* 803D1E18  38 E1 00 18 */	addi r7, r1, 0x18
/* 803D1E1C  90 01 00 20 */	stw r0, 0x20(r1)
/* 803D1E20  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803D1E24  4B FD 39 9D */	bl mFI_Wpos2BkandUtNuminBlock
/* 803D1E28  2C 03 00 01 */	cmpwi r3, 1
/* 803D1E2C  40 82 00 BC */	bne lbl_803D1EE8
/* 803D1E30  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803D1E34  3C A0 00 10 */	lis r5, 0x10
/* 803D1E38  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803D1E3C  4B FD 45 7D */	bl mFI_CheckBlockKind_OR
/* 803D1E40  2C 03 00 01 */	cmpwi r3, 1
/* 803D1E44  40 82 00 20 */	bne lbl_803D1E64
/* 803D1E48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D1E4C  7F E3 FB 78 */	mr r3, r31
/* 803D1E50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D1E54  3C 84 00 02 */	addis r4, r4, 2
/* 803D1E58  38 84 34 40 */	addi r4, r4, 0x3440
/* 803D1E5C  4B FF FA F5 */	bl mNpc_GetNpcWorldNameAnm
/* 803D1E60  48 00 00 88 */	b lbl_803D1EE8
lbl_803D1E64:
/* 803D1E64  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803D1E68  3B A0 00 00 */	li r29, 0
/* 803D1E6C  38 03 00 01 */	addi r0, r3, 1
/* 803D1E70  90 01 00 0C */	stw r0, 0xc(r1)
lbl_803D1E74:
/* 803D1E74  7F C3 F3 78 */	mr r3, r30
/* 803D1E78  4B FF A7 45 */	bl mNpc_CheckFreeAnimalInfo
/* 803D1E7C  2C 03 00 00 */	cmpwi r3, 0
/* 803D1E80  40 82 00 58 */	bne lbl_803D1ED8
/* 803D1E84  38 9E 08 98 */	addi r4, r30, 0x898
/* 803D1E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1E8C  88 7E 08 99 */	lbz r3, 0x899(r30)
/* 803D1E90  7C 03 00 00 */	cmpw r3, r0
/* 803D1E94  40 82 00 44 */	bne lbl_803D1ED8
/* 803D1E98  88 64 00 02 */	lbz r3, 2(r4)
/* 803D1E9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803D1EA0  7C 03 00 00 */	cmpw r3, r0
/* 803D1EA4  40 82 00 34 */	bne lbl_803D1ED8
/* 803D1EA8  88 64 00 03 */	lbz r3, 3(r4)
/* 803D1EAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D1EB0  7C 03 00 00 */	cmpw r3, r0
/* 803D1EB4  40 82 00 24 */	bne lbl_803D1ED8
/* 803D1EB8  88 64 00 04 */	lbz r3, 4(r4)
/* 803D1EBC  80 01 00 08 */	lwz r0, 8(r1)
/* 803D1EC0  7C 03 00 00 */	cmpw r3, r0
/* 803D1EC4  40 82 00 14 */	bne lbl_803D1ED8
/* 803D1EC8  7F E3 FB 78 */	mr r3, r31
/* 803D1ECC  7F C4 F3 78 */	mr r4, r30
/* 803D1ED0  4B FF FA 81 */	bl mNpc_GetNpcWorldNameAnm
/* 803D1ED4  48 00 00 14 */	b lbl_803D1EE8
lbl_803D1ED8:
/* 803D1ED8  3B BD 00 01 */	addi r29, r29, 1
/* 803D1EDC  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D1EE0  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803D1EE4  41 80 FF 90 */	blt lbl_803D1E74
lbl_803D1EE8:
/* 803D1EE8  39 61 00 40 */	addi r11, r1, 0x40
/* 803D1EEC  4B CC 90 35 */	bl func_8009AF20
/* 803D1EF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D1EF4  7C 08 03 A6 */	mtlr r0
/* 803D1EF8  38 21 00 40 */	addi r1, r1, 0x40
/* 803D1EFC  4E 80 00 20 */	blr 
