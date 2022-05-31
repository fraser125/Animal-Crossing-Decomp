lbl_803CBDEC:
/* 803CBDEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CBDF0  7C 08 02 A6 */	mflr r0
/* 803CBDF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CBDF8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CBDFC  4B CC F0 D9 */	bl func_8009AED4
/* 803CBE00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CBE04  7C 7D 1B 78 */	mr r29, r3
/* 803CBE08  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803CBE0C  3B C0 00 00 */	li r30, 0
/* 803CBE10  3C 63 00 02 */	addis r3, r3, 2
/* 803CBE14  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 803CBE18  28 1F 00 00 */	cmplwi r31, 0
/* 803CBE1C  41 82 00 C8 */	beq lbl_803CBEE4
/* 803CBE20  28 1D 00 00 */	cmplwi r29, 0
/* 803CBE24  41 82 00 C0 */	beq lbl_803CBEE4
/* 803CBE28  7F E3 FB 78 */	mr r3, r31
/* 803CBE2C  38 9D 00 10 */	addi r4, r29, 0x10
/* 803CBE30  38 A0 00 07 */	li r5, 7
/* 803CBE34  4B FF FF 45 */	bl mNpc_GetAnimalMemoryIdx
/* 803CBE38  2C 03 FF FF */	cmpwi r3, -1
/* 803CBE3C  41 82 00 14 */	beq lbl_803CBE50
/* 803CBE40  1C 63 01 38 */	mulli r3, r3, 0x138
/* 803CBE44  3B C3 00 10 */	addi r30, r3, 0x10
/* 803CBE48  7F DD F2 14 */	add r30, r29, r30
/* 803CBE4C  48 00 00 38 */	b lbl_803CBE84
lbl_803CBE50:
/* 803CBE50  7F A3 EB 78 */	mr r3, r29
/* 803CBE54  38 9D 00 10 */	addi r4, r29, 0x10
/* 803CBE58  38 A0 00 07 */	li r5, 7
/* 803CBE5C  4B FF FC 6D */	bl mNpc_ForceGetFreeAnimalMemoryIdx
/* 803CBE60  2C 03 FF FF */	cmpwi r3, -1
/* 803CBE64  41 82 00 20 */	beq lbl_803CBE84
/* 803CBE68  1C A3 01 38 */	mulli r5, r3, 0x138
/* 803CBE6C  7F E3 FB 78 */	mr r3, r31
/* 803CBE70  7F A4 EB 78 */	mr r4, r29
/* 803CBE74  3B C5 00 10 */	addi r30, r5, 0x10
/* 803CBE78  7F DD F2 14 */	add r30, r29, r30
/* 803CBE7C  7F C5 F3 78 */	mr r5, r30
/* 803CBE80  4B FF FE A5 */	bl mNpc_SetAnimalMemory
lbl_803CBE84:
/* 803CBE84  28 1E 00 00 */	cmplwi r30, 0
/* 803CBE88  41 82 00 5C */	beq lbl_803CBEE4
/* 803CBE8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CBE90  38 7E 00 14 */	addi r3, r30, 0x14
/* 803CBE94  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CBE98  3C 84 00 02 */	addis r4, r4, 2
/* 803CBE9C  38 84 61 20 */	addi r4, r4, 0x6120
/* 803CBEA0  48 03 B3 95 */	bl lbRTC_TimeCopy
/* 803CBEA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CBEA8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803CBEAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CBEB0  3C 84 00 01 */	addis r4, r4, 1
/* 803CBEB4  38 84 91 20 */	addi r4, r4, -28384
/* 803CBEB8  4B FE 7A 39 */	bl mLd_CopyLandName
/* 803CBEBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CBEC0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CBEC4  3C 64 00 01 */	addis r3, r4, 1
/* 803CBEC8  A0 03 91 2A */	lhz r0, -0x6ed6(r3)
/* 803CBECC  3C 64 00 02 */	addis r3, r4, 2
/* 803CBED0  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 803CBED4  80 03 0F 08 */	lwz r0, 0xf08(r3)
/* 803CBED8  80 63 0F 0C */	lwz r3, 0xf0c(r3)
/* 803CBEDC  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 803CBEE0  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_803CBEE4:
/* 803CBEE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CBEE8  4B CC F0 39 */	bl func_8009AF20
/* 803CBEEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CBEF0  7C 08 03 A6 */	mtlr r0
/* 803CBEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CBEF8  4E 80 00 20 */	blr 
