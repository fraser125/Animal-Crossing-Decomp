lbl_803FFA9C:
/* 803FFA9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FFAA0  7C 08 02 A6 */	mflr r0
/* 803FFAA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FFAA8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FFAAC  4B C9 B4 1D */	bl func_8009AEC8
/* 803FFAB0  7C 7B 1B 78 */	mr r27, r3
/* 803FFAB4  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FFAB8  83 BB 00 00 */	lwz r29, 0(r27)
/* 803FFABC  38 03 E7 08 */	addi r0, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FFAC0  80 7B 00 04 */	lwz r3, 4(r27)
/* 803FFAC4  7C 9C 23 78 */	mr r28, r4
/* 803FFAC8  1C BD 00 94 */	mulli r5, r29, 0x94
/* 803FFACC  1C 83 00 0C */	mulli r4, r3, 0xc
/* 803FFAD0  3B E5 00 54 */	addi r31, r5, 0x54
/* 803FFAD4  7F FB FA 14 */	add r31, r27, r31
/* 803FFAD8  7F C0 22 14 */	add r30, r0, r4
/* 803FFADC  4B FF A9 35 */	bl mCD_get_offset
/* 803FFAE0  3C 80 81 1A */	lis r4, l_mcd_card_private@ha /* 0x81198BF0@ha */
/* 803FFAE4  7C 67 1B 78 */	mr r7, r3
/* 803FFAE8  38 84 8B F0 */	addi r4, r4, l_mcd_card_private@l /* 0x81198BF0@l */
/* 803FFAEC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803FFAF0  80 BB 00 08 */	lwz r5, 8(r27)
/* 803FFAF4  7F A8 EB 78 */	mr r8, r29
/* 803FFAF8  80 DE 00 04 */	lwz r6, 4(r30)
/* 803FFAFC  38 84 00 14 */	addi r4, r4, 0x14
/* 803FFB00  39 3F 00 74 */	addi r9, r31, 0x74
/* 803FFB04  4B FF 8C E5 */	bl mCD_write_comp_bg
/* 803FFB08  7C 7E 1B 78 */	mr r30, r3
/* 803FFB0C  2C 1E 00 01 */	cmpwi r30, 1
/* 803FFB10  40 82 00 70 */	bne lbl_803FFB80
/* 803FFB14  80 7C 00 00 */	lwz r3, 0(r28)
/* 803FFB18  38 00 00 02 */	li r0, 2
/* 803FFB1C  38 63 00 01 */	addi r3, r3, 1
/* 803FFB20  90 7C 00 00 */	stw r3, 0(r28)
/* 803FFB24  90 1B 00 04 */	stw r0, 4(r27)
/* 803FFB28  80 7B 00 04 */	lwz r3, 4(r27)
/* 803FFB2C  4B FF A9 2D */	bl mCD_get_size
/* 803FFB30  90 7B 00 08 */	stw r3, 8(r27)
/* 803FFB34  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803FFB38  80 9B 00 08 */	lwz r4, 8(r27)
/* 803FFB3C  4B C5 D5 2D */	bl bzero
/* 803FFB40  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 803FFB44  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 803FFB48  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 803FFB4C  38 63 16 38 */	addi r3, r3, l_keepSave@l /* 0x81171638@l */
/* 803FFB50  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 803FFB54  4B C5 D4 C9 */	bl func_8005D01C
/* 803FFB58  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FFB5C  4B FF A7 59 */	bl mCD_TransErrorCode
/* 803FFB60  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FFB64  38 00 00 01 */	li r0, 1
/* 803FFB68  80 7B 00 00 */	lwz r3, 0(r27)
/* 803FFB6C  7C 63 18 F8 */	nor r3, r3, r3
/* 803FFB70  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 803FFB74  90 7B 00 00 */	stw r3, 0(r27)
/* 803FFB78  90 1B 01 A0 */	stw r0, 0x1a0(r27)
/* 803FFB7C  48 00 01 0C */	b lbl_803FFC88
lbl_803FFB80:
/* 803FFB80  2C 1E 00 00 */	cmpwi r30, 0
/* 803FFB84  41 82 01 04 */	beq lbl_803FFC88
/* 803FFB88  83 BF 00 74 */	lwz r29, 0x74(r31)
/* 803FFB8C  7F A3 EB 78 */	mr r3, r29
/* 803FFB90  4B FF A7 25 */	bl mCD_TransErrorCode
/* 803FFB94  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FFB98  38 00 00 02 */	li r0, 2
/* 803FFB9C  90 1B 00 04 */	stw r0, 4(r27)
/* 803FFBA0  80 7B 00 04 */	lwz r3, 4(r27)
/* 803FFBA4  4B FF A8 B5 */	bl mCD_get_size
/* 803FFBA8  90 7B 00 08 */	stw r3, 8(r27)
/* 803FFBAC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803FFBB0  80 9B 00 08 */	lwz r4, 8(r27)
/* 803FFBB4  4B C5 D4 B5 */	bl bzero
/* 803FFBB8  80 1B 00 00 */	lwz r0, 0(r27)
/* 803FFBBC  7C 00 00 F8 */	nor r0, r0, r0
/* 803FFBC0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FFBC4  90 1B 00 00 */	stw r0, 0(r27)
/* 803FFBC8  80 BB 00 00 */	lwz r5, 0(r27)
/* 803FFBCC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803FFBD0  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FFBD4  80 9B 00 04 */	lwz r4, 4(r27)
/* 803FFBD8  3B E6 00 54 */	addi r31, r6, 0x54
/* 803FFBDC  7F FB FA 14 */	add r31, r27, r31
/* 803FFBE0  38 DF 00 74 */	addi r6, r31, 0x74
/* 803FFBE4  4B FF AD DD */	bl mCD_load_file
/* 803FFBE8  2C 03 00 01 */	cmpwi r3, 1
/* 803FFBEC  40 82 00 78 */	bne lbl_803FFC64
/* 803FFBF0  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803FFBF4  80 9B 00 08 */	lwz r4, 8(r27)
/* 803FFBF8  4B FA C9 05 */	bl mFRm_ReturnCheckSum
/* 803FFBFC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FFC00  83 5B 00 0C */	lwz r26, 0xc(r27)
/* 803FFC04  40 82 00 4C */	bne lbl_803FFC50
/* 803FFC08  3C 7A 00 01 */	addis r3, r26, 1
/* 803FFC0C  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 803FFC10  4B FB 3B E5 */	bl mLd_CheckId
/* 803FFC14  2C 03 00 01 */	cmpwi r3, 1
/* 803FFC18  40 82 00 38 */	bne lbl_803FFC50
/* 803FFC1C  3C 7A 00 01 */	addis r3, r26, 1
/* 803FFC20  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 803FFC24  38 63 91 20 */	addi r3, r3, -28384
/* 803FFC28  4B FB 3F 11 */	bl mLd_CheckThisLand
/* 803FFC2C  2C 03 00 01 */	cmpwi r3, 1
/* 803FFC30  40 82 00 20 */	bne lbl_803FFC50
/* 803FFC34  38 00 00 01 */	li r0, 1
/* 803FFC38  3B C0 00 01 */	li r30, 1
/* 803FFC3C  90 1B 00 04 */	stw r0, 4(r27)
/* 803FFC40  80 7C 00 00 */	lwz r3, 0(r28)
/* 803FFC44  38 03 00 01 */	addi r0, r3, 1
/* 803FFC48  90 1C 00 00 */	stw r0, 0(r28)
/* 803FFC4C  48 00 00 28 */	b lbl_803FFC74
lbl_803FFC50:
/* 803FFC50  80 1B 00 00 */	lwz r0, 0(r27)
/* 803FFC54  7C 00 00 F8 */	nor r0, r0, r0
/* 803FFC58  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FFC5C  90 1B 00 00 */	stw r0, 0(r27)
/* 803FFC60  48 00 00 14 */	b lbl_803FFC74
lbl_803FFC64:
/* 803FFC64  80 1B 00 00 */	lwz r0, 0(r27)
/* 803FFC68  7C 00 00 F8 */	nor r0, r0, r0
/* 803FFC6C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FFC70  90 1B 00 00 */	stw r0, 0(r27)
lbl_803FFC74:
/* 803FFC74  7F A3 EB 78 */	mr r3, r29
/* 803FFC78  4B FF A6 3D */	bl mCD_TransErrorCode
/* 803FFC7C  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FFC80  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 803FFC84  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_803FFC88:
/* 803FFC88  7F C3 F3 78 */	mr r3, r30
/* 803FFC8C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FFC90  4B C9 B2 85 */	bl func_8009AF14
/* 803FFC94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FFC98  7C 08 03 A6 */	mtlr r0
/* 803FFC9C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FFCA0  4E 80 00 20 */	blr 
