lbl_804A1DA8:
/* 804A1DA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A1DAC  7C 08 02 A6 */	mflr r0
/* 804A1DB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A1DB4  39 61 00 50 */	addi r11, r1, 0x50
/* 804A1DB8  4B BF 91 11 */	bl func_8009AEC8
/* 804A1DBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A1DC0  7C 9C 23 78 */	mr r28, r4
/* 804A1DC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A1DC8  3C 63 00 02 */	addis r3, r3, 2
/* 804A1DCC  83 E3 60 F4 */	lwz r31, 0x60f4(r3)
/* 804A1DD0  28 1F 00 00 */	cmplwi r31, 0
/* 804A1DD4  40 82 00 0C */	bne lbl_804A1DE0
/* 804A1DD8  38 60 00 00 */	li r3, 0
/* 804A1DDC  48 00 00 F0 */	b lbl_804A1ECC
lbl_804A1DE0:
/* 804A1DE0  3B C0 00 00 */	li r30, 0
/* 804A1DE4  3B 60 00 00 */	li r27, 0
lbl_804A1DE8:
/* 804A1DE8  3B BB 02 18 */	addi r29, r27, 0x218
/* 804A1DEC  7F BF EA 14 */	add r29, r31, r29
/* 804A1DF0  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 804A1DF4  2C 00 00 00 */	cmpwi r0, 0
/* 804A1DF8  41 82 00 38 */	beq lbl_804A1E30
/* 804A1DFC  80 BC 00 00 */	lwz r5, 0(r28)
/* 804A1E00  7F A3 EB 78 */	mr r3, r29
/* 804A1E04  80 1C 00 04 */	lwz r0, 4(r28)
/* 804A1E08  38 81 00 20 */	addi r4, r1, 0x20
/* 804A1E0C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804A1E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A1E14  80 1C 00 08 */	lwz r0, 8(r28)
/* 804A1E18  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A1E1C  4B FF FE 09 */	bl aSIGN_single_anime_check
/* 804A1E20  2C 03 00 00 */	cmpwi r3, 0
/* 804A1E24  41 82 00 88 */	beq lbl_804A1EAC
/* 804A1E28  38 60 00 00 */	li r3, 0
/* 804A1E2C  48 00 00 A0 */	b lbl_804A1ECC
lbl_804A1E30:
/* 804A1E30  80 9C 00 00 */	lwz r4, 0(r28)
/* 804A1E34  38 61 00 14 */	addi r3, r1, 0x14
/* 804A1E38  80 1C 00 04 */	lwz r0, 4(r28)
/* 804A1E3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A1E40  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A1E44  80 1C 00 08 */	lwz r0, 8(r28)
/* 804A1E48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A1E4C  4B F0 55 E5 */	bl mFI_GetUnitFG
/* 804A1E50  3C 80 80 64 */	lis r4, lit_777@ha /* 0x80645C58@ha */
/* 804A1E54  7C 7A 1B 78 */	mr r26, r3
/* 804A1E58  38 64 5C 58 */	addi r3, r4, lit_777@l /* 0x80645C58@l */
/* 804A1E5C  7F A4 EB 78 */	mr r4, r29
/* 804A1E60  C0 03 00 00 */	lfs f0, 0(r3)
/* 804A1E64  38 7D 00 04 */	addi r3, r29, 4
/* 804A1E68  38 BD 00 0C */	addi r5, r29, 0xc
/* 804A1E6C  38 DD 00 08 */	addi r6, r29, 8
/* 804A1E70  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 804A1E74  38 E1 00 08 */	addi r7, r1, 8
/* 804A1E78  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 804A1E7C  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 804A1E80  81 1C 00 00 */	lwz r8, 0(r28)
/* 804A1E84  80 1C 00 04 */	lwz r0, 4(r28)
/* 804A1E88  91 01 00 08 */	stw r8, 8(r1)
/* 804A1E8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A1E90  80 1C 00 08 */	lwz r0, 8(r28)
/* 804A1E94  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A1E98  4B F0 39 29 */	bl mFI_Wpos2BkandUtNuminBlock
/* 804A1E9C  38 00 00 02 */	li r0, 2
/* 804A1EA0  90 1D 00 28 */	stw r0, 0x28(r29)
/* 804A1EA4  A0 1A 00 00 */	lhz r0, 0(r26)
/* 804A1EA8  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804A1EAC:
/* 804A1EAC  3B DE 00 01 */	addi r30, r30, 1
/* 804A1EB0  3B 7B 00 2C */	addi r27, r27, 0x2c
/* 804A1EB4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 804A1EB8  41 80 FF 30 */	blt lbl_804A1DE8
/* 804A1EBC  7F E3 FB 78 */	mr r3, r31
/* 804A1EC0  38 80 00 00 */	li r4, 0
/* 804A1EC4  48 00 04 0D */	bl aSIGN_setup_action
/* 804A1EC8  38 60 00 01 */	li r3, 1
lbl_804A1ECC:
/* 804A1ECC  39 61 00 50 */	addi r11, r1, 0x50
/* 804A1ED0  4B BF 90 45 */	bl func_8009AF14
/* 804A1ED4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A1ED8  7C 08 03 A6 */	mtlr r0
/* 804A1EDC  38 21 00 50 */	addi r1, r1, 0x50
/* 804A1EE0  4E 80 00 20 */	blr 
