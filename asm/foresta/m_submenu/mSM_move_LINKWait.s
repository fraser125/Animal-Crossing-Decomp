lbl_803EFB18:
/* 803EFB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EFB1C  7C 08 02 A6 */	mflr r0
/* 803EFB20  3C 80 81 17 */	lis r4, data_81171538@ha /* 0x81171538@ha */
/* 803EFB24  3C A0 80 66 */	lis r5, SubmenuArea_dlftbl@ha /* 0x8065DCEC@ha */
/* 803EFB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EFB2C  38 05 DC EC */	addi r0, r5, SubmenuArea_dlftbl@l /* 0x8065DCEC@l */
/* 803EFB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EFB34  7C 7F 1B 78 */	mr r31, r3
/* 803EFB38  93 C1 00 08 */	stw r30, 8(r1)
/* 803EFB3C  7C 1E 03 78 */	mr r30, r0
/* 803EFB40  80 64 15 38 */	lwz r3, data_81171538@l(r4)  /* 0x81171538@l */
/* 803EFB44  7C 03 00 40 */	cmplw r3, r0
/* 803EFB48  41 82 01 08 */	beq lbl_803EFC50
/* 803EFB4C  28 03 00 00 */	cmplwi r3, 0
/* 803EFB50  41 82 00 0C */	beq lbl_803EFB5C
/* 803EFB54  7F E4 FB 78 */	mr r4, r31
/* 803EFB58  4B FF F9 61 */	bl SubmenuArea_DoUnlink
lbl_803EFB5C:
/* 803EFB5C  7F C3 F3 78 */	mr r3, r30
/* 803EFB60  7F E4 FB 78 */	mr r4, r31
/* 803EFB64  38 A0 00 00 */	li r5, 0
/* 803EFB68  4B FF F9 1D */	bl SubmenuArea_DoLink
/* 803EFB6C  3C 60 80 5F */	lis r3, mSM_menu_ovl_init@ha /* 0x805EF440@ha */
/* 803EFB70  7F E4 FB 78 */	mr r4, r31
/* 803EFB74  38 63 F4 40 */	addi r3, r3, mSM_menu_ovl_init@l /* 0x805EF440@l */
/* 803EFB78  38 A0 00 00 */	li r5, 0
/* 803EFB7C  4B FF F9 B5 */	bl mSM_ovlptr_dllcnv
/* 803EFB80  90 7F 00 30 */	stw r3, 0x30(r31)
/* 803EFB84  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 803EFB88  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 803EFB8C  38 60 00 03 */	li r3, 3
/* 803EFB90  90 1F 00 34 */	stw r0, 0x34(r31)
/* 803EFB94  38 A0 00 01 */	li r5, 1
/* 803EFB98  38 80 00 07 */	li r4, 7
/* 803EFB9C  38 00 00 00 */	li r0, 0
/* 803EFBA0  90 7F 00 0C */	stw r3, 0xc(r31)
/* 803EFBA4  38 7F 00 38 */	addi r3, r31, 0x38
/* 803EFBA8  98 BF 01 62 */	stb r5, 0x162(r31)
/* 803EFBAC  98 9F 01 63 */	stb r4, 0x163(r31)
/* 803EFBB0  98 1F 01 64 */	stb r0, 0x164(r31)
/* 803EFBB4  4B FC CB 4D */	bl mMl_clear_mail
/* 803EFBB8  38 1F 01 7C */	addi r0, r31, 0x17c
/* 803EFBBC  38 80 00 0F */	li r4, 0xf
/* 803EFBC0  90 1F 01 74 */	stw r0, 0x174(r31)
/* 803EFBC4  38 C0 00 00 */	li r6, 0
/* 803EFBC8  38 60 00 00 */	li r3, 0
/* 803EFBCC  B0 9F 01 78 */	sth r4, 0x178(r31)
/* 803EFBD0  80 BF 01 74 */	lwz r5, 0x174(r31)
/* 803EFBD4  48 00 00 14 */	b lbl_803EFBE8
lbl_803EFBD8:
/* 803EFBD8  B0 65 00 00 */	sth r3, 0(r5)
/* 803EFBDC  38 C6 00 01 */	addi r6, r6, 1
/* 803EFBE0  98 85 00 02 */	stb r4, 2(r5)
/* 803EFBE4  38 A5 00 04 */	addi r5, r5, 4
lbl_803EFBE8:
/* 803EFBE8  A8 1F 01 78 */	lha r0, 0x178(r31)
/* 803EFBEC  7C 06 00 00 */	cmpw r6, r0
/* 803EFBF0  41 80 FF E8 */	blt lbl_803EFBD8
/* 803EFBF4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803EFBF8  2C 00 00 04 */	cmpwi r0, 4
/* 803EFBFC  41 82 00 54 */	beq lbl_803EFC50
/* 803EFC00  80 1F 00 04 */	lwz r0, 4(r31)
/* 803EFC04  2C 00 00 04 */	cmpwi r0, 4
/* 803EFC08  40 82 00 10 */	bne lbl_803EFC18
/* 803EFC0C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803EFC10  2C 00 00 00 */	cmpwi r0, 0
/* 803EFC14  41 82 00 20 */	beq lbl_803EFC34
lbl_803EFC18:
/* 803EFC18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EFC1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EFC20  3C 63 00 02 */	addis r3, r3, 2
/* 803EFC24  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803EFC28  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803EFC2C  7C 00 07 75 */	extsb. r0, r0
/* 803EFC30  40 82 00 10 */	bne lbl_803EFC40
lbl_803EFC34:
/* 803EFC34  38 60 00 05 */	li r3, 5
/* 803EFC38  48 23 E6 55 */	bl sAdo_SpecChange
/* 803EFC3C  48 00 00 0C */	b lbl_803EFC48
lbl_803EFC40:
/* 803EFC40  38 60 00 06 */	li r3, 6
/* 803EFC44  48 23 E6 49 */	bl sAdo_SpecChange
lbl_803EFC48:
/* 803EFC48  38 60 00 00 */	li r3, 0
/* 803EFC4C  48 23 E4 05 */	bl sAdo_SetVoiceMode
lbl_803EFC50:
/* 803EFC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EFC54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EFC58  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EFC5C  7C 08 03 A6 */	mtlr r0
/* 803EFC60  38 21 00 10 */	addi r1, r1, 0x10
/* 803EFC64  4E 80 00 20 */	blr 
