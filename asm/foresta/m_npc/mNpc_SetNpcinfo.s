lbl_803CFC28:
/* 803CFC28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CFC2C  7C 08 02 A6 */	mflr r0
/* 803CFC30  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CFC34  39 61 00 20 */	addi r11, r1, 0x20
/* 803CFC38  4B CC B2 9D */	bl func_8009AED4
/* 803CFC3C  7C 7F 1B 78 */	mr r31, r3
/* 803CFC40  7C 9D 23 78 */	mr r29, r4
/* 803CFC44  88 03 00 02 */	lbz r0, 2(r3)
/* 803CFC48  28 00 00 04 */	cmplwi r0, 4
/* 803CFC4C  40 82 01 08 */	bne lbl_803CFD54
/* 803CFC50  A3 DF 00 06 */	lhz r30, 6(r31)
/* 803CFC54  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 803CFC58  2C 00 00 0D */	cmpwi r0, 0xd
/* 803CFC5C  40 82 00 34 */	bne lbl_803CFC90
/* 803CFC60  7F C3 F3 78 */	mr r3, r30
/* 803CFC64  4B FF EF 85 */	bl mNpc_GetSameEventNpc
/* 803CFC68  28 03 00 00 */	cmplwi r3, 0
/* 803CFC6C  41 82 00 24 */	beq lbl_803CFC90
/* 803CFC70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CFC74  A0 83 00 04 */	lhz r4, 4(r3)
/* 803CFC78  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803CFC7C  38 A0 00 0F */	li r5, 0xf
/* 803CFC80  3C 63 00 01 */	addis r3, r3, 1
/* 803CFC84  38 63 74 38 */	addi r3, r3, 0x7438
/* 803CFC88  4B FF CA 55 */	bl mNpc_SearchAnimalinfo
/* 803CFC8C  7C 7D 07 74 */	extsb r29, r3
lbl_803CFC90:
/* 803CFC90  7F A0 07 75 */	extsb. r0, r29
/* 803CFC94  41 80 00 44 */	blt lbl_803CFCD8
/* 803CFC98  7F A0 07 74 */	extsb r0, r29
/* 803CFC9C  2C 00 00 0F */	cmpwi r0, 0xf
/* 803CFCA0  40 80 00 38 */	bge lbl_803CFCD8
/* 803CFCA4  1C 80 09 88 */	mulli r4, r0, 0x988
/* 803CFCA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CFCAC  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803CFCB0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 803CFCB4  7C 65 22 14 */	add r3, r5, r4
/* 803CFCB8  3C 63 00 01 */	addis r3, r3, 1
/* 803CFCBC  38 83 74 38 */	addi r4, r3, 0x7438
/* 803CFCC0  7C 65 02 14 */	add r3, r5, r0
/* 803CFCC4  3C 63 00 02 */	addis r3, r3, 2
/* 803CFCC8  90 9F 01 7C */	stw r4, 0x17c(r31)
/* 803CFCCC  38 03 61 64 */	addi r0, r3, 0x6164
/* 803CFCD0  90 1F 01 80 */	stw r0, 0x180(r31)
/* 803CFCD4  48 00 00 80 */	b lbl_803CFD54
lbl_803CFCD8:
/* 803CFCD8  7F A0 07 74 */	extsb r0, r29
/* 803CFCDC  2C 00 FF F1 */	cmpwi r0, -15
/* 803CFCE0  40 82 00 24 */	bne lbl_803CFD04
/* 803CFCE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CFCE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CFCEC  3C 63 00 02 */	addis r3, r3, 2
/* 803CFCF0  38 03 34 40 */	addi r0, r3, 0x3440
/* 803CFCF4  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 803CFCF8  38 03 64 E4 */	addi r0, r3, 0x64e4
/* 803CFCFC  90 1F 01 80 */	stw r0, 0x180(r31)
/* 803CFD00  48 00 00 54 */	b lbl_803CFD54
lbl_803CFD04:
/* 803CFD04  7F C3 F3 78 */	mr r3, r30
/* 803CFD08  4B FF F1 1D */	bl mNpc_GetSameMaskNpc
/* 803CFD0C  28 03 00 00 */	cmplwi r3, 0
/* 803CFD10  41 82 00 38 */	beq lbl_803CFD48
/* 803CFD14  A0 03 00 02 */	lhz r0, 2(r3)
/* 803CFD18  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 803CFD1C  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CFD20  40 82 00 18 */	bne lbl_803CFD38
/* 803CFD24  38 63 00 08 */	addi r3, r3, 8
/* 803CFD28  38 00 00 00 */	li r0, 0
/* 803CFD2C  90 7F 01 7C */	stw r3, 0x17c(r31)
/* 803CFD30  90 1F 01 80 */	stw r0, 0x180(r31)
/* 803CFD34  48 00 00 20 */	b lbl_803CFD54
lbl_803CFD38:
/* 803CFD38  38 00 00 00 */	li r0, 0
/* 803CFD3C  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 803CFD40  90 1F 01 80 */	stw r0, 0x180(r31)
/* 803CFD44  48 00 00 10 */	b lbl_803CFD54
lbl_803CFD48:
/* 803CFD48  38 00 00 00 */	li r0, 0
/* 803CFD4C  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 803CFD50  90 1F 01 80 */	stw r0, 0x180(r31)
lbl_803CFD54:
/* 803CFD54  39 61 00 20 */	addi r11, r1, 0x20
/* 803CFD58  4B CC B1 C9 */	bl func_8009AF20
/* 803CFD5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CFD60  7C 08 03 A6 */	mtlr r0
/* 803CFD64  38 21 00 20 */	addi r1, r1, 0x20
/* 803CFD68  4E 80 00 20 */	blr 
