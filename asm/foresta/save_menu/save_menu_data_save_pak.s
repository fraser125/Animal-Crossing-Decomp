lbl_8062CA74:
/* 8062CA74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062CA78  7C 08 02 A6 */	mflr r0
/* 8062CA7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062CA80  39 61 00 20 */	addi r11, r1, 0x20
/* 8062CA84  4B A6 E4 51 */	bl func_8009AED4
/* 8062CA88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062CA8C  7C 7D 1B 78 */	mr r29, r3
/* 8062CA90  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8062CA94  3F E3 00 02 */	addis r31, r3, 2
/* 8062CA98  88 1F 60 03 */	lbz r0, 0x6003(r31)
/* 8062CA9C  83 DF 61 3C */	lwz r30, 0x613c(r31)
/* 8062CAA0  2C 00 00 04 */	cmpwi r0, 4
/* 8062CAA4  40 82 00 24 */	bne lbl_8062CAC8
/* 8062CAA8  38 60 00 00 */	li r3, 0
/* 8062CAAC  38 80 00 00 */	li r4, 0
/* 8062CAB0  4B D9 FF ED */	bl mNpc_GetOtherAnimalPersonalID
/* 8062CAB4  28 03 00 00 */	cmplwi r3, 0
/* 8062CAB8  41 82 00 10 */	beq lbl_8062CAC8
/* 8062CABC  7C 64 1B 78 */	mr r4, r3
/* 8062CAC0  38 7E 10 8C */	addi r3, r30, 0x108c
/* 8062CAC4  4B D9 E9 4D */	bl mNpc_CopyAnimalPersonalID
lbl_8062CAC8:
/* 8062CAC8  4B DD 6C B5 */	bl mCPk_get_pkinfo
/* 8062CACC  38 80 00 00 */	li r4, 0
/* 8062CAD0  4B DD 6C 79 */	bl func_80403748
/* 8062CAD4  4B DD 6C A9 */	bl mCPk_get_pkinfo
/* 8062CAD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062CADC  7C 65 1B 78 */	mr r5, r3
/* 8062CAE0  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8062CAE4  3C 86 00 01 */	addis r4, r6, 1
/* 8062CAE8  38 66 00 20 */	addi r3, r6, 0x20
/* 8062CAEC  38 84 74 38 */	addi r4, r4, 0x7438
/* 8062CAF0  4B DD 6C 85 */	bl mCPk_SavePak
/* 8062CAF4  2C 03 00 01 */	cmpwi r3, 1
/* 8062CAF8  40 82 00 28 */	bne lbl_8062CB20
/* 8062CAFC  4B D8 70 0D */	bl mLd_PlayerManKindCheck
/* 8062CB00  2C 03 00 00 */	cmpwi r3, 0
/* 8062CB04  40 82 00 10 */	bne lbl_8062CB14
/* 8062CB08  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8062CB0C  38 00 00 00 */	li r0, 0
/* 8062CB10  98 03 10 86 */	stb r0, 0x1086(r3)
lbl_8062CB14:
/* 8062CB14  38 00 00 03 */	li r0, 3
/* 8062CB18  90 1D 02 08 */	stw r0, 0x208(r29)
/* 8062CB1C  48 00 00 0C */	b lbl_8062CB28
lbl_8062CB20:
/* 8062CB20  38 00 00 02 */	li r0, 2
/* 8062CB24  90 1D 02 08 */	stw r0, 0x208(r29)
lbl_8062CB28:
/* 8062CB28  39 61 00 20 */	addi r11, r1, 0x20
/* 8062CB2C  4B A6 E3 F5 */	bl func_8009AF20
/* 8062CB30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062CB34  7C 08 03 A6 */	mtlr r0
/* 8062CB38  38 21 00 20 */	addi r1, r1, 0x20
/* 8062CB3C  4E 80 00 20 */	blr 
