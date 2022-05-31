lbl_803ECA7C:
/* 803ECA7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803ECA80  7C 08 02 A6 */	mflr r0
/* 803ECA84  90 01 00 44 */	stw r0, 0x44(r1)
/* 803ECA88  39 61 00 40 */	addi r11, r1, 0x40
/* 803ECA8C  4B CA E4 41 */	bl func_8009AECC
/* 803ECA90  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ECA94  7C 7C 1B 78 */	mr r28, r3
/* 803ECA98  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ECA9C  38 00 00 09 */	li r0, 9
/* 803ECAA0  3F C4 00 02 */	addis r30, r4, 2
/* 803ECAA4  83 FE 61 3C */	lwz r31, 0x613c(r30)
/* 803ECAA8  98 03 09 B2 */	stb r0, 0x9b2(r3)
/* 803ECAAC  88 83 09 B4 */	lbz r4, 0x9b4(r3)
/* 803ECAB0  28 04 00 67 */	cmplwi r4, 0x67
/* 803ECAB4  40 82 04 EC */	bne lbl_803ECFA0
/* 803ECAB8  4B FF FD B5 */	bl mSC_Radio_time_check
/* 803ECABC  7C 7D 1B 78 */	mr r29, r3
/* 803ECAC0  4B FF FC C9 */	bl mSC_Radio_many_taisou_card
/* 803ECAC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ECAC8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ECACC  3C 84 00 02 */	addis r4, r4, 2
/* 803ECAD0  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 803ECAD4  28 00 00 04 */	cmplwi r0, 4
/* 803ECAD8  40 82 00 0C */	bne lbl_803ECAE4
/* 803ECADC  3B A0 34 3B */	li r29, 0x343b
/* 803ECAE0  48 00 05 C0 */	b lbl_803ED0A0
lbl_803ECAE4:
/* 803ECAE4  2C 1D 00 01 */	cmpwi r29, 1
/* 803ECAE8  40 82 00 38 */	bne lbl_803ECB20
/* 803ECAEC  3B A0 34 33 */	li r29, 0x3433
/* 803ECAF0  4B C7 02 05 */	bl fqrand
/* 803ECAF4  3C 60 80 64 */	lis r3, lit_778@ha /* 0x806431EC@ha */
/* 803ECAF8  38 00 00 06 */	li r0, 6
/* 803ECAFC  C0 03 31 EC */	lfs f0, lit_778@l(r3)  /* 0x806431EC@l */
/* 803ECB00  EC 00 00 72 */	fmuls f0, f0, f1
/* 803ECB04  FC 00 00 1E */	fctiwz f0, f0
/* 803ECB08  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803ECB0C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803ECB10  38 63 00 12 */	addi r3, r3, 0x12
/* 803ECB14  98 7C 09 B3 */	stb r3, 0x9b3(r28)
/* 803ECB18  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECB1C  48 00 05 84 */	b lbl_803ED0A0
lbl_803ECB20:
/* 803ECB20  2C 03 00 00 */	cmpwi r3, 0
/* 803ECB24  3B 60 00 00 */	li r27, 0
/* 803ECB28  41 81 00 84 */	bgt lbl_803ECBAC
/* 803ECB2C  4B FF FD D9 */	bl mSC_Radio_limit_check
/* 803ECB30  2C 03 00 00 */	cmpwi r3, 0
/* 803ECB34  40 82 00 20 */	bne lbl_803ECB54
/* 803ECB38  88 1F 23 C2 */	lbz r0, 0x23c2(r31)
/* 803ECB3C  28 00 00 0D */	cmplwi r0, 0xd
/* 803ECB40  41 82 00 0C */	beq lbl_803ECB4C
/* 803ECB44  2C 1D 00 00 */	cmpwi r29, 0
/* 803ECB48  40 82 00 0C */	bne lbl_803ECB54
lbl_803ECB4C:
/* 803ECB4C  3B 60 00 00 */	li r27, 0
/* 803ECB50  48 00 00 C8 */	b lbl_803ECC18
lbl_803ECB54:
/* 803ECB54  2C 1D 00 01 */	cmpwi r29, 1
/* 803ECB58  41 82 00 C0 */	beq lbl_803ECC18
/* 803ECB5C  40 80 00 10 */	bge lbl_803ECB6C
/* 803ECB60  2C 1D 00 00 */	cmpwi r29, 0
/* 803ECB64  40 80 00 14 */	bge lbl_803ECB78
/* 803ECB68  48 00 00 B0 */	b lbl_803ECC18
lbl_803ECB6C:
/* 803ECB6C  2C 1D 00 03 */	cmpwi r29, 3
/* 803ECB70  40 80 00 A8 */	bge lbl_803ECC18
/* 803ECB74  48 00 00 0C */	b lbl_803ECB80
lbl_803ECB78:
/* 803ECB78  3B 60 00 02 */	li r27, 2
/* 803ECB7C  48 00 00 9C */	b lbl_803ECC18
lbl_803ECB80:
/* 803ECB80  88 1F 23 C2 */	lbz r0, 0x23c2(r31)
/* 803ECB84  28 00 00 0C */	cmplwi r0, 0xc
/* 803ECB88  40 82 00 0C */	bne lbl_803ECB94
/* 803ECB8C  3B 60 00 06 */	li r27, 6
/* 803ECB90  48 00 00 88 */	b lbl_803ECC18
lbl_803ECB94:
/* 803ECB94  28 00 00 0D */	cmplwi r0, 0xd
/* 803ECB98  40 80 00 0C */	bge lbl_803ECBA4
/* 803ECB9C  3B 60 00 03 */	li r27, 3
/* 803ECBA0  48 00 00 78 */	b lbl_803ECC18
lbl_803ECBA4:
/* 803ECBA4  3B 60 00 02 */	li r27, 2
/* 803ECBA8  48 00 00 70 */	b lbl_803ECC18
lbl_803ECBAC:
/* 803ECBAC  2C 03 00 01 */	cmpwi r3, 1
/* 803ECBB0  40 81 00 0C */	ble lbl_803ECBBC
/* 803ECBB4  3B 60 00 01 */	li r27, 1
/* 803ECBB8  48 00 00 60 */	b lbl_803ECC18
lbl_803ECBBC:
/* 803ECBBC  4B FF FC 39 */	bl mSC_Radio_have_taisou_card
/* 803ECBC0  2C 1D 00 01 */	cmpwi r29, 1
/* 803ECBC4  41 82 00 54 */	beq lbl_803ECC18
/* 803ECBC8  40 80 00 10 */	bge lbl_803ECBD8
/* 803ECBCC  2C 1D 00 00 */	cmpwi r29, 0
/* 803ECBD0  40 80 00 14 */	bge lbl_803ECBE4
/* 803ECBD4  48 00 00 44 */	b lbl_803ECC18
lbl_803ECBD8:
/* 803ECBD8  2C 1D 00 03 */	cmpwi r29, 3
/* 803ECBDC  40 80 00 3C */	bge lbl_803ECC18
/* 803ECBE0  48 00 00 0C */	b lbl_803ECBEC
lbl_803ECBE4:
/* 803ECBE4  3B 60 00 01 */	li r27, 1
/* 803ECBE8  48 00 00 30 */	b lbl_803ECC18
lbl_803ECBEC:
/* 803ECBEC  38 03 DA DD */	addi r0, r3, -9507
/* 803ECBF0  98 1F 23 C2 */	stb r0, 0x23c2(r31)
/* 803ECBF4  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECBF8  38 03 00 01 */	addi r0, r3, 1
/* 803ECBFC  98 1F 23 C2 */	stb r0, 0x23c2(r31)
/* 803ECC00  88 1F 23 C2 */	lbz r0, 0x23c2(r31)
/* 803ECC04  28 00 00 0D */	cmplwi r0, 0xd
/* 803ECC08  41 80 00 0C */	blt lbl_803ECC14
/* 803ECC0C  3B 60 00 05 */	li r27, 5
/* 803ECC10  48 00 00 08 */	b lbl_803ECC18
lbl_803ECC14:
/* 803ECC14  3B 60 00 04 */	li r27, 4
lbl_803ECC18:
/* 803ECC18  28 1B 00 06 */	cmplwi r27, 6
/* 803ECC1C  41 81 03 50 */	bgt lbl_803ECF6C
/* 803ECC20  3C 60 80 66 */	lis r3, lit_780@ha /* 0x8065DC28@ha */
/* 803ECC24  57 60 10 3A */	slwi r0, r27, 2
/* 803ECC28  38 63 DC 28 */	addi r3, r3, lit_780@l /* 0x8065DC28@l */
/* 803ECC2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 803ECC30  7C 09 03 A6 */	mtctr r0
/* 803ECC34  4E 80 04 20 */	bctr 
lbl_803ECC38:
/* 803ECC38  3B A0 34 37 */	li r29, 0x3437
/* 803ECC3C  4B C7 00 B9 */	bl fqrand
/* 803ECC40  3C 60 80 64 */	lis r3, lit_778@ha /* 0x806431EC@ha */
/* 803ECC44  38 00 00 06 */	li r0, 6
/* 803ECC48  C0 03 31 EC */	lfs f0, lit_778@l(r3)  /* 0x806431EC@l */
/* 803ECC4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803ECC50  FC 00 00 1E */	fctiwz f0, f0
/* 803ECC54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803ECC58  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803ECC5C  38 63 00 16 */	addi r3, r3, 0x16
/* 803ECC60  98 7C 09 B3 */	stb r3, 0x9b3(r28)
/* 803ECC64  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECC68  48 00 04 38 */	b lbl_803ED0A0
lbl_803ECC6C:
/* 803ECC6C  38 00 00 00 */	li r0, 0
/* 803ECC70  3B A0 34 3C */	li r29, 0x343c
/* 803ECC74  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECC78  4B FF FC C1 */	bl mSC_Radio_delete_taisou_card
/* 803ECC7C  48 00 04 24 */	b lbl_803ED0A0
lbl_803ECC80:
/* 803ECC80  38 00 00 02 */	li r0, 2
/* 803ECC84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ECC88  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECC8C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ECC90  3C A3 00 02 */	addis r5, r3, 2
/* 803ECC94  3B A0 34 22 */	li r29, 0x3422
/* 803ECC98  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 803ECC9C  38 C0 FF FF */	li r6, -1
/* 803ECCA0  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 803ECCA4  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803ECCA8  88 FC 09 B4 */	lbz r7, 0x9b4(r28)
/* 803ECCAC  4B F9 0B 39 */	bl mCD_calendar_event_check
/* 803ECCB0  2C 03 00 00 */	cmpwi r3, 0
/* 803ECCB4  41 82 00 08 */	beq lbl_803ECCBC
/* 803ECCB8  3B A0 34 23 */	li r29, 0x3423
lbl_803ECCBC:
/* 803ECCBC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803ECCC0  38 80 00 00 */	li r4, 0
/* 803ECCC4  38 A0 00 00 */	li r5, 0
/* 803ECCC8  4B FF 3D 05 */	bl mPr_GetPossessionItemSumWithCond
/* 803ECCCC  28 03 00 00 */	cmplwi r3, 0
/* 803ECCD0  40 82 00 10 */	bne lbl_803ECCE0
/* 803ECCD4  38 00 00 06 */	li r0, 6
/* 803ECCD8  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECCDC  48 00 03 C4 */	b lbl_803ED0A0
lbl_803ECCE0:
/* 803ECCE0  38 60 00 02 */	li r3, 2
/* 803ECCE4  38 00 25 23 */	li r0, 0x2523
/* 803ECCE8  98 7C 09 B2 */	stb r3, 0x9b2(r28)
/* 803ECCEC  38 80 25 23 */	li r4, 0x2523
/* 803ECCF0  38 A0 00 00 */	li r5, 0
/* 803ECCF4  B0 1C 09 B0 */	sth r0, 0x9b0(r28)
/* 803ECCF8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803ECCFC  4B FF 42 0D */	bl mPr_SetFreePossessionItem
/* 803ECD00  38 60 00 00 */	li r3, 0
/* 803ECD04  4B FF FD 35 */	bl mSC_Radio_stamp_card
/* 803ECD08  88 7C 09 B3 */	lbz r3, 0x9b3(r28)
/* 803ECD0C  38 03 00 01 */	addi r0, r3, 1
/* 803ECD10  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECD14  48 00 03 8C */	b lbl_803ED0A0
lbl_803ECD18:
/* 803ECD18  38 00 00 0E */	li r0, 0xe
/* 803ECD1C  3B A0 34 2E */	li r29, 0x342e
/* 803ECD20  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECD24  38 60 00 00 */	li r3, 0
/* 803ECD28  88 9F 23 C2 */	lbz r4, 0x23c2(r31)
/* 803ECD2C  38 84 00 02 */	addi r4, r4, 2
/* 803ECD30  4B FF F9 D1 */	bl mSC_set_free_str_number
/* 803ECD34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ECD38  88 FC 09 B4 */	lbz r7, 0x9b4(r28)
/* 803ECD3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ECD40  38 C0 FF FF */	li r6, -1
/* 803ECD44  3C A3 00 02 */	addis r5, r3, 2
/* 803ECD48  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 803ECD4C  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 803ECD50  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803ECD54  4B F9 0A 91 */	bl mCD_calendar_event_check
/* 803ECD58  2C 03 00 00 */	cmpwi r3, 0
/* 803ECD5C  41 82 00 08 */	beq lbl_803ECD64
/* 803ECD60  3B A0 34 2F */	li r29, 0x342f
lbl_803ECD64:
/* 803ECD64  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803ECD68  38 80 00 00 */	li r4, 0
/* 803ECD6C  38 A0 00 00 */	li r5, 0
/* 803ECD70  4B FF 3C 5D */	bl mPr_GetPossessionItemSumWithCond
/* 803ECD74  28 03 00 00 */	cmplwi r3, 0
/* 803ECD78  40 82 00 10 */	bne lbl_803ECD88
/* 803ECD7C  38 00 00 06 */	li r0, 6
/* 803ECD80  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECD84  48 00 03 1C */	b lbl_803ED0A0
lbl_803ECD88:
/* 803ECD88  38 00 00 02 */	li r0, 2
/* 803ECD8C  38 A0 00 00 */	li r5, 0
/* 803ECD90  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECD94  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECD98  38 03 00 01 */	addi r0, r3, 1
/* 803ECD9C  98 1F 23 C2 */	stb r0, 0x23c2(r31)
/* 803ECDA0  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECDA4  38 03 25 23 */	addi r0, r3, 0x2523
/* 803ECDA8  B0 1C 09 B0 */	sth r0, 0x9b0(r28)
/* 803ECDAC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803ECDB0  A0 9C 09 B0 */	lhz r4, 0x9b0(r28)
/* 803ECDB4  4B FF 41 55 */	bl mPr_SetFreePossessionItem
/* 803ECDB8  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECDBC  4B FF FC 7D */	bl mSC_Radio_stamp_card
/* 803ECDC0  88 7C 09 B3 */	lbz r3, 0x9b3(r28)
/* 803ECDC4  38 03 00 01 */	addi r0, r3, 1
/* 803ECDC8  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECDCC  48 00 02 D4 */	b lbl_803ED0A0
lbl_803ECDD0:
/* 803ECDD0  38 00 00 01 */	li r0, 1
/* 803ECDD4  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECDD8  4B FF FA 1D */	bl mSC_Radio_have_taisou_card
/* 803ECDDC  7C 7D 1B 78 */	mr r29, r3
/* 803ECDE0  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECDE4  4B FF FC 55 */	bl mSC_Radio_stamp_card
/* 803ECDE8  88 9F 23 C2 */	lbz r4, 0x23c2(r31)
/* 803ECDEC  7F A3 EB 78 */	mr r3, r29
/* 803ECDF0  38 04 25 23 */	addi r0, r4, 0x2523
/* 803ECDF4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803ECDF8  4B FF FB D9 */	bl mSC_Radio_change_taisou_card
/* 803ECDFC  88 9F 23 C2 */	lbz r4, 0x23c2(r31)
/* 803ECE00  38 60 00 00 */	li r3, 0
/* 803ECE04  38 84 00 01 */	addi r4, r4, 1
/* 803ECE08  4B FF F8 F9 */	bl mSC_set_free_str_number
/* 803ECE0C  38 00 00 06 */	li r0, 6
/* 803ECE10  3B A0 34 27 */	li r29, 0x3427
/* 803ECE14  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECE18  48 00 02 88 */	b lbl_803ED0A0
lbl_803ECE1C:
/* 803ECE1C  38 00 00 01 */	li r0, 1
/* 803ECE20  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECE24  4B FF F9 D1 */	bl mSC_Radio_have_taisou_card
/* 803ECE28  7C 7D 1B 78 */	mr r29, r3
/* 803ECE2C  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECE30  4B FF FC 09 */	bl mSC_Radio_stamp_card
/* 803ECE34  38 00 1F CC */	li r0, 0x1fcc
/* 803ECE38  7F A3 EB 78 */	mr r3, r29
/* 803ECE3C  B0 1C 09 B0 */	sth r0, 0x9b0(r28)
/* 803ECE40  A0 9C 09 B0 */	lhz r4, 0x9b0(r28)
/* 803ECE44  4B FF FB 8D */	bl mSC_Radio_change_taisou_card
/* 803ECE48  A0 9C 09 B0 */	lhz r4, 0x9b0(r28)
/* 803ECE4C  38 61 00 08 */	addi r3, r1, 8
/* 803ECE50  4B FC 8B 55 */	bl mIN_copy_name_str
/* 803ECE54  A0 7C 09 B0 */	lhz r3, 0x9b0(r28)
/* 803ECE58  4B FC 8C C1 */	bl mIN_get_item_article
/* 803ECE5C  7C 7D 1B 78 */	mr r29, r3
/* 803ECE60  4B FD 28 49 */	bl func_803BF6A8
/* 803ECE64  7F A7 EB 78 */	mr r7, r29
/* 803ECE68  38 A1 00 08 */	addi r5, r1, 8
/* 803ECE6C  38 80 00 01 */	li r4, 1
/* 803ECE70  38 C0 00 10 */	li r6, 0x10
/* 803ECE74  4B FD 2E B9 */	bl mMsg_Set_free_str_art
/* 803ECE78  38 00 00 09 */	li r0, 9
/* 803ECE7C  3B A0 34 2A */	li r29, 0x342a
/* 803ECE80  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECE84  48 00 02 1C */	b lbl_803ED0A0
lbl_803ECE88:
/* 803ECE88  38 00 00 1C */	li r0, 0x1c
/* 803ECE8C  3B A0 34 2E */	li r29, 0x342e
/* 803ECE90  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECE94  38 60 00 00 */	li r3, 0
/* 803ECE98  88 9F 23 C2 */	lbz r4, 0x23c2(r31)
/* 803ECE9C  38 84 00 02 */	addi r4, r4, 2
/* 803ECEA0  4B FF F8 61 */	bl mSC_set_free_str_number
/* 803ECEA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ECEA8  88 FC 09 B4 */	lbz r7, 0x9b4(r28)
/* 803ECEAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ECEB0  38 C0 FF FF */	li r6, -1
/* 803ECEB4  3C A3 00 02 */	addis r5, r3, 2
/* 803ECEB8  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 803ECEBC  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 803ECEC0  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803ECEC4  4B F9 09 21 */	bl mCD_calendar_event_check
/* 803ECEC8  2C 03 00 00 */	cmpwi r3, 0
/* 803ECECC  41 82 00 08 */	beq lbl_803ECED4
/* 803ECED0  3B A0 34 2F */	li r29, 0x342f
lbl_803ECED4:
/* 803ECED4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803ECED8  38 80 00 00 */	li r4, 0
/* 803ECEDC  38 A0 00 00 */	li r5, 0
/* 803ECEE0  4B FF 3A ED */	bl mPr_GetPossessionItemSumWithCond
/* 803ECEE4  28 03 00 00 */	cmplwi r3, 0
/* 803ECEE8  40 82 00 10 */	bne lbl_803ECEF8
/* 803ECEEC  38 00 00 06 */	li r0, 6
/* 803ECEF0  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECEF4  48 00 01 AC */	b lbl_803ED0A0
lbl_803ECEF8:
/* 803ECEF8  38 60 00 02 */	li r3, 2
/* 803ECEFC  38 00 1F CC */	li r0, 0x1fcc
/* 803ECF00  98 7C 09 B2 */	stb r3, 0x9b2(r28)
/* 803ECF04  38 A0 00 00 */	li r5, 0
/* 803ECF08  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECF0C  38 63 00 01 */	addi r3, r3, 1
/* 803ECF10  98 7F 23 C2 */	stb r3, 0x23c2(r31)
/* 803ECF14  B0 1C 09 B0 */	sth r0, 0x9b0(r28)
/* 803ECF18  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803ECF1C  A0 9C 09 B0 */	lhz r4, 0x9b0(r28)
/* 803ECF20  4B FF 3F E9 */	bl mPr_SetFreePossessionItem
/* 803ECF24  A0 9C 09 B0 */	lhz r4, 0x9b0(r28)
/* 803ECF28  38 61 00 08 */	addi r3, r1, 8
/* 803ECF2C  4B FC 8A 79 */	bl mIN_copy_name_str
/* 803ECF30  A0 7C 09 B0 */	lhz r3, 0x9b0(r28)
/* 803ECF34  4B FC 8B E5 */	bl mIN_get_item_article
/* 803ECF38  7C 7E 1B 78 */	mr r30, r3
/* 803ECF3C  4B FD 27 6D */	bl func_803BF6A8
/* 803ECF40  7F C7 F3 78 */	mr r7, r30
/* 803ECF44  38 A1 00 08 */	addi r5, r1, 8
/* 803ECF48  38 80 00 01 */	li r4, 1
/* 803ECF4C  38 C0 00 10 */	li r6, 0x10
/* 803ECF50  4B FD 2D DD */	bl mMsg_Set_free_str_art
/* 803ECF54  88 7F 23 C2 */	lbz r3, 0x23c2(r31)
/* 803ECF58  4B FF FA E1 */	bl mSC_Radio_stamp_card
/* 803ECF5C  88 7C 09 B3 */	lbz r3, 0x9b3(r28)
/* 803ECF60  38 03 FF FF */	addi r0, r3, -1
/* 803ECF64  98 1C 09 B3 */	stb r0, 0x9b3(r28)
/* 803ECF68  48 00 01 38 */	b lbl_803ED0A0
lbl_803ECF6C:
/* 803ECF6C  3B A0 34 37 */	li r29, 0x3437
/* 803ECF70  4B C6 FD 85 */	bl fqrand
/* 803ECF74  3C 60 80 64 */	lis r3, lit_778@ha /* 0x806431EC@ha */
/* 803ECF78  38 00 00 06 */	li r0, 6
/* 803ECF7C  C0 03 31 EC */	lfs f0, lit_778@l(r3)  /* 0x806431EC@l */
/* 803ECF80  EC 00 00 72 */	fmuls f0, f0, f1
/* 803ECF84  FC 00 00 1E */	fctiwz f0, f0
/* 803ECF88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803ECF8C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803ECF90  38 63 00 16 */	addi r3, r3, 0x16
/* 803ECF94  98 7C 09 B3 */	stb r3, 0x9b3(r28)
/* 803ECF98  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECF9C  48 00 01 04 */	b lbl_803ED0A0
lbl_803ECFA0:
/* 803ECFA0  88 1E 60 03 */	lbz r0, 0x6003(r30)
/* 803ECFA4  28 00 00 04 */	cmplwi r0, 4
/* 803ECFA8  40 82 00 1C */	bne lbl_803ECFC4
/* 803ECFAC  38 80 00 09 */	li r4, 9
/* 803ECFB0  4B FF FA B9 */	bl mSC_Radio_msg
/* 803ECFB4  38 00 00 08 */	li r0, 8
/* 803ECFB8  7C 7D 1B 78 */	mr r29, r3
/* 803ECFBC  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ECFC0  48 00 00 E0 */	b lbl_803ED0A0
lbl_803ECFC4:
/* 803ECFC4  7C 83 23 78 */	mr r3, r4
/* 803ECFC8  4B FF F4 2D */	bl mSC_trophy_get
/* 803ECFCC  2C 03 00 00 */	cmpwi r3, 0
/* 803ECFD0  41 82 00 78 */	beq lbl_803ED048
/* 803ECFD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ECFD8  88 FC 09 B4 */	lbz r7, 0x9b4(r28)
/* 803ECFDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ECFE0  38 C0 FF FF */	li r6, -1
/* 803ECFE4  3C A3 00 02 */	addis r5, r3, 2
/* 803ECFE8  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 803ECFEC  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 803ECFF0  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803ECFF4  4B F9 07 F1 */	bl mCD_calendar_event_check
/* 803ECFF8  2C 03 00 00 */	cmpwi r3, 0
/* 803ECFFC  41 82 00 30 */	beq lbl_803ED02C
/* 803ED000  4B C6 FC F5 */	bl fqrand
/* 803ED004  3C 80 80 64 */	lis r4, lit_778@ha /* 0x806431EC@ha */
/* 803ED008  7F 83 E3 78 */	mr r3, r28
/* 803ED00C  C0 04 31 EC */	lfs f0, lit_778@l(r4)  /* 0x806431EC@l */
/* 803ED010  EC 00 00 72 */	fmuls f0, f0, f1
/* 803ED014  FC 00 00 1E */	fctiwz f0, f0
/* 803ED018  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803ED01C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803ED020  38 84 00 06 */	addi r4, r4, 6
/* 803ED024  4B FF FA 45 */	bl mSC_Radio_msg
/* 803ED028  48 00 00 10 */	b lbl_803ED038
lbl_803ED02C:
/* 803ED02C  7F 83 E3 78 */	mr r3, r28
/* 803ED030  38 80 00 05 */	li r4, 5
/* 803ED034  4B FF FA 35 */	bl mSC_Radio_msg
lbl_803ED038:
/* 803ED038  38 00 00 07 */	li r0, 7
/* 803ED03C  7C 7D 1B 78 */	mr r29, r3
/* 803ED040  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ED044  48 00 00 5C */	b lbl_803ED0A0
lbl_803ED048:
/* 803ED048  38 00 00 04 */	li r0, 4
/* 803ED04C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED050  98 1C 09 B2 */	stb r0, 0x9b2(r28)
/* 803ED054  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED058  3C A3 00 02 */	addis r5, r3, 2
/* 803ED05C  38 C0 FF FF */	li r6, -1
/* 803ED060  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 803ED064  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 803ED068  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803ED06C  88 FC 09 B4 */	lbz r7, 0x9b4(r28)
/* 803ED070  4B F9 07 75 */	bl mCD_calendar_event_check
/* 803ED074  2C 03 00 00 */	cmpwi r3, 0
/* 803ED078  41 82 00 18 */	beq lbl_803ED090
/* 803ED07C  7F 83 E3 78 */	mr r3, r28
/* 803ED080  38 80 00 01 */	li r4, 1
/* 803ED084  4B FF F9 E5 */	bl mSC_Radio_msg
/* 803ED088  7C 7D 1B 78 */	mr r29, r3
/* 803ED08C  48 00 00 14 */	b lbl_803ED0A0
lbl_803ED090:
/* 803ED090  7F 83 E3 78 */	mr r3, r28
/* 803ED094  38 80 00 00 */	li r4, 0
/* 803ED098  4B FF F9 D1 */	bl mSC_Radio_msg
/* 803ED09C  7C 7D 1B 78 */	mr r29, r3
lbl_803ED0A0:
/* 803ED0A0  7F A3 EB 78 */	mr r3, r29
/* 803ED0A4  39 61 00 40 */	addi r11, r1, 0x40
/* 803ED0A8  4B CA DE 71 */	bl func_8009AF18
/* 803ED0AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803ED0B0  7C 08 03 A6 */	mtlr r0
/* 803ED0B4  38 21 00 40 */	addi r1, r1, 0x40
/* 803ED0B8  4E 80 00 20 */	blr 
