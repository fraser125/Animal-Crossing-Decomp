lbl_803FCD64:
/* 803FCD64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FCD68  7C 08 02 A6 */	mflr r0
/* 803FCD6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FCD70  39 61 00 20 */	addi r11, r1, 0x20
/* 803FCD74  4B C9 E1 55 */	bl func_8009AEC8
/* 803FCD78  7C 7D 1B 78 */	mr r29, r3
/* 803FCD7C  7C 9E 23 78 */	mr r30, r4
/* 803FCD80  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 803FCD84  83 64 00 04 */	lwz r27, 4(r4)
/* 803FCD88  28 1F 00 00 */	cmplwi r31, 0
/* 803FCD8C  41 82 01 4C */	beq lbl_803FCED8
/* 803FCD90  80 9D 00 08 */	lwz r4, 8(r29)
/* 803FCD94  7F E3 FB 78 */	mr r3, r31
/* 803FCD98  4B C6 02 D1 */	bl bzero
/* 803FCD9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FCDA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FCDA4  3C 63 00 02 */	addis r3, r3, 2
/* 803FCDA8  83 83 61 3C */	lwz r28, 0x613c(r3)
/* 803FCDAC  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803FCDB0  4B F8 87 11 */	bl mCkRh_SavePlayTime
/* 803FCDB4  2C 1B 00 00 */	cmpwi r27, 0
/* 803FCDB8  40 82 00 10 */	bne lbl_803FCDC8
/* 803FCDBC  4B FF FE 41 */	bl mCD_ClearResetCode
/* 803FCDC0  48 11 2A 8D */	bl mAGrw_ClearMoneyStoneShineGround
/* 803FCDC4  48 00 00 1C */	b lbl_803FCDE0
lbl_803FCDC8:
/* 803FCDC8  7F 83 E3 78 */	mr r3, r28
/* 803FCDCC  4B FF FE 69 */	bl mCD_CheckResetCode
/* 803FCDD0  2C 03 00 01 */	cmpwi r3, 1
/* 803FCDD4  40 82 00 0C */	bne lbl_803FCDE0
/* 803FCDD8  7F 83 E3 78 */	mr r3, r28
/* 803FCDDC  4B FF FE 89 */	bl mCD_SetResetCode
lbl_803FCDE0:
/* 803FCDE0  2C 1B 00 00 */	cmpwi r27, 0
/* 803FCDE4  40 82 00 4C */	bne lbl_803FCE30
/* 803FCDE8  28 1C 00 00 */	cmplwi r28, 0
/* 803FCDEC  41 82 00 44 */	beq lbl_803FCE30
/* 803FCDF0  3B 7C 00 68 */	addi r27, r28, 0x68
/* 803FCDF4  3B 40 00 00 */	li r26, 0
lbl_803FCDF8:
/* 803FCDF8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803FCDFC  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 803FCE00  41 80 00 20 */	blt lbl_803FCE20
/* 803FCE04  28 00 2D 2C */	cmplwi r0, 0x2d2c
/* 803FCE08  41 81 00 18 */	bgt lbl_803FCE20
/* 803FCE0C  7F 83 E3 78 */	mr r3, r28
/* 803FCE10  7F 44 D3 78 */	mr r4, r26
/* 803FCE14  38 A0 00 00 */	li r5, 0
/* 803FCE18  38 C0 00 00 */	li r6, 0
/* 803FCE1C  4B FE 40 0D */	bl mPr_SetPossessionItem
lbl_803FCE20:
/* 803FCE20  3B 5A 00 01 */	addi r26, r26, 1
/* 803FCE24  3B 7B 00 02 */	addi r27, r27, 2
/* 803FCE28  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803FCE2C  41 80 FF CC */	blt lbl_803FCDF8
lbl_803FCE30:
/* 803FCE30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FCE34  38 00 00 01 */	li r0, 1
/* 803FCE38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FCE3C  3C 63 00 02 */	addis r3, r3, 2
/* 803FCE40  98 03 0F 1A */	stb r0, 0xf1a(r3)
/* 803FCE44  4B FF FE E1 */	bl mCD_get_land_copyProtect
/* 803FCE48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FCE4C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803FCE50  3C 85 00 03 */	addis r4, r5, 3
/* 803FCE54  B0 64 85 96 */	sth r3, -0x7a6a(r4)
/* 803FCE58  B0 65 00 1A */	sth r3, 0x1a(r5)
/* 803FCE5C  48 00 95 5D */	bl lbRTC_HardTime
/* 803FCE60  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803FCE64  3C A0 00 02 */	lis r5, 0x0002 /* 0x000242A0@ha */
/* 803FCE68  38 E6 85 38 */	addi r7, r6, common_data@l /* 0x81138538@l */
/* 803FCE6C  3C C7 00 02 */	addis r6, r7, 2
/* 803FCE70  38 A5 42 A0 */	addi r5, r5, 0x42A0 /* 0x000242A0@l */
/* 803FCE74  90 86 41 9C */	stw r4, 0x419c(r6)
/* 803FCE78  7F E4 FB 78 */	mr r4, r31
/* 803FCE7C  90 66 41 98 */	stw r3, 0x4198(r6)
/* 803FCE80  7C E3 3B 78 */	mr r3, r7
/* 803FCE84  4B C6 01 99 */	bl func_8005D01C
/* 803FCE88  38 00 00 06 */	li r0, 6
/* 803FCE8C  7F E3 FB 78 */	mr r3, r31
/* 803FCE90  90 1F 00 00 */	stw r0, 0(r31)
/* 803FCE94  4B FA F7 E9 */	bl mFRm_SetSaveCheckData
/* 803FCE98  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 803FCE9C  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 803FCEA0  7F E3 FB 78 */	mr r3, r31
/* 803FCEA4  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 803FCEA8  4B FA F6 85 */	bl mFRm_GetFlatCheckSum
/* 803FCEAC  B0 7F 00 12 */	sth r3, 0x12(r31)
/* 803FCEB0  38 00 00 01 */	li r0, 1
/* 803FCEB4  90 1D 00 04 */	stw r0, 4(r29)
/* 803FCEB8  80 7D 00 04 */	lwz r3, 4(r29)
/* 803FCEBC  4B FF D5 9D */	bl mCD_get_size
/* 803FCEC0  90 7D 00 08 */	stw r3, 8(r29)
/* 803FCEC4  38 60 00 01 */	li r3, 1
/* 803FCEC8  80 9E 00 00 */	lwz r4, 0(r30)
/* 803FCECC  38 04 00 01 */	addi r0, r4, 1
/* 803FCED0  90 1E 00 00 */	stw r0, 0(r30)
/* 803FCED4  48 00 00 08 */	b lbl_803FCEDC
lbl_803FCED8:
/* 803FCED8  38 60 FF FF */	li r3, -1
lbl_803FCEDC:
/* 803FCEDC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FCEE0  4B C9 E0 35 */	bl func_8009AF14
/* 803FCEE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FCEE8  7C 08 03 A6 */	mtlr r0
/* 803FCEEC  38 21 00 20 */	addi r1, r1, 0x20
/* 803FCEF0  4E 80 00 20 */	blr 
