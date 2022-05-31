lbl_803F0BA4:
/* 803F0BA4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F0BA8  7C 08 02 A6 */	mflr r0
/* 803F0BAC  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F0BB0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803F0BB4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 803F0BB8  39 61 00 50 */	addi r11, r1, 0x50
/* 803F0BBC  4B CA A2 F9 */	bl func_8009AEB4
/* 803F0BC0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F0BC4  7C 7C 1B 78 */	mr r28, r3
/* 803F0BC8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803F0BCC  7C 9D 23 78 */	mr r29, r4
/* 803F0BD0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803F0BD4  7C 00 E0 00 */	cmpw r0, r28
/* 803F0BD8  40 82 01 BC */	bne lbl_803F0D94
/* 803F0BDC  3F E3 00 01 */	addis r31, r3, 1
/* 803F0BE0  3B C0 00 00 */	li r30, 0
/* 803F0BE4  7F FB FB 78 */	mr r27, r31
/* 803F0BE8  3B 20 00 00 */	li r25, 0
/* 803F0BEC  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803F0BF0  3A C0 00 00 */	li r22, 0
/* 803F0BF4  7F F8 FB 78 */	mr r24, r31
/* 803F0BF8  3B 5B 91 20 */	addi r26, r27, -28384
lbl_803F0BFC:
/* 803F0BFC  7F 03 C3 78 */	mr r3, r24
/* 803F0C00  4B FD A7 DD */	bl mNpc_CheckFreeAnimalPersonalID
/* 803F0C04  2C 03 00 00 */	cmpwi r3, 0
/* 803F0C08  40 82 00 54 */	bne lbl_803F0C5C
/* 803F0C0C  3A F8 00 10 */	addi r23, r24, 0x10
/* 803F0C10  3A A0 00 00 */	li r21, 0
lbl_803F0C14:
/* 803F0C14  A0 77 00 12 */	lhz r3, 0x12(r23)
/* 803F0C18  A0 1B 91 2A */	lhz r0, -0x6ed6(r27)
/* 803F0C1C  7C 03 00 40 */	cmplw r3, r0
/* 803F0C20  40 82 00 2C */	bne lbl_803F0C4C
/* 803F0C24  7F 44 D3 78 */	mr r4, r26
/* 803F0C28  38 77 00 08 */	addi r3, r23, 8
/* 803F0C2C  4B FC 2B E1 */	bl mLd_CheckCmpLandName
/* 803F0C30  2C 03 00 01 */	cmpwi r3, 1
/* 803F0C34  40 82 00 18 */	bne lbl_803F0C4C
/* 803F0C38  38 00 00 01 */	li r0, 1
/* 803F0C3C  3B 39 00 01 */	addi r25, r25, 1
/* 803F0C40  7C 00 B0 30 */	slw r0, r0, r22
/* 803F0C44  7F DE 03 78 */	or r30, r30, r0
/* 803F0C48  48 00 00 14 */	b lbl_803F0C5C
lbl_803F0C4C:
/* 803F0C4C  3A B5 00 01 */	addi r21, r21, 1
/* 803F0C50  3A F7 01 38 */	addi r23, r23, 0x138
/* 803F0C54  2C 15 00 07 */	cmpwi r21, 7
/* 803F0C58  41 80 FF BC */	blt lbl_803F0C14
lbl_803F0C5C:
/* 803F0C5C  3A D6 00 01 */	addi r22, r22, 1
/* 803F0C60  3B 18 09 88 */	addi r24, r24, 0x988
/* 803F0C64  2C 16 00 0F */	cmpwi r22, 0xf
/* 803F0C68  41 80 FF 94 */	blt lbl_803F0BFC
/* 803F0C6C  2C 19 00 00 */	cmpwi r25, 0
/* 803F0C70  40 82 00 6C */	bne lbl_803F0CDC
/* 803F0C74  3C 80 80 64 */	lis r4, data_8064320C@ha /* 0x8064320C@ha */
/* 803F0C78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0C7C  C3 E4 32 0C */	lfs f31, data_8064320C@l(r4)  /* 0x8064320C@l */
/* 803F0C80  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
lbl_803F0C84:
/* 803F0C84  4B C6 C0 71 */	bl fqrand
/* 803F0C88  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803F0C8C  FC 00 00 1E */	fctiwz f0, f0
/* 803F0C90  D8 01 00 08 */	stfd f0, 8(r1)
/* 803F0C94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F0C98  1F 40 09 88 */	mulli r26, r0, 0x988
/* 803F0C9C  7C 7E D2 14 */	add r3, r30, r26
/* 803F0CA0  3C 63 00 01 */	addis r3, r3, 1
/* 803F0CA4  38 63 74 38 */	addi r3, r3, 0x7438
/* 803F0CA8  4B FD A7 35 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803F0CAC  2C 03 00 00 */	cmpwi r3, 0
/* 803F0CB0  40 82 FF D4 */	bne lbl_803F0C84
/* 803F0CB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F0CB8  7F E3 FB 78 */	mr r3, r31
/* 803F0CBC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F0CC0  38 A0 00 0F */	li r5, 0xf
/* 803F0CC4  3C 04 00 01 */	addis r0, r4, 1
/* 803F0CC8  7C 80 D2 14 */	add r4, r0, r26
/* 803F0CCC  A3 24 74 38 */	lhz r25, 0x7438(r4)
/* 803F0CD0  7F 24 CB 78 */	mr r4, r25
/* 803F0CD4  4B FD BA 09 */	bl mNpc_SearchAnimalinfo
/* 803F0CD8  48 00 00 7C */	b lbl_803F0D54
lbl_803F0CDC:
/* 803F0CDC  4B C6 C0 19 */	bl fqrand
/* 803F0CE0  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 803F0CE4  3C 60 43 30 */	lis r3, 0x4330
/* 803F0CE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F0CEC  3C 80 80 64 */	lis r4, lit_620@ha /* 0x80643214@ha */
/* 803F0CF0  C8 44 32 14 */	lfd f2, lit_620@l(r4)  /* 0x80643214@l */
/* 803F0CF4  38 00 00 0F */	li r0, 0xf
/* 803F0CF8  90 61 00 08 */	stw r3, 8(r1)
/* 803F0CFC  38 60 00 00 */	li r3, 0
/* 803F0D00  C8 01 00 08 */	lfd f0, 8(r1)
/* 803F0D04  EC 00 10 28 */	fsubs f0, f0, f2
/* 803F0D08  EC 00 00 72 */	fmuls f0, f0, f1
/* 803F0D0C  FC 00 00 1E */	fctiwz f0, f0
/* 803F0D10  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803F0D14  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803F0D18  7C 09 03 A6 */	mtctr r0
lbl_803F0D1C:
/* 803F0D1C  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 803F0D20  41 82 00 10 */	beq lbl_803F0D30
/* 803F0D24  2C 04 00 00 */	cmpwi r4, 0
/* 803F0D28  41 82 00 14 */	beq lbl_803F0D3C
/* 803F0D2C  38 84 FF FF */	addi r4, r4, -1
lbl_803F0D30:
/* 803F0D30  7F DE 0E 70 */	srawi r30, r30, 1
/* 803F0D34  38 63 00 01 */	addi r3, r3, 1
/* 803F0D38  42 00 FF E4 */	bdnz lbl_803F0D1C
lbl_803F0D3C:
/* 803F0D3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F0D40  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F0D44  1C 03 09 88 */	mulli r0, r3, 0x988
/* 803F0D48  3C 84 00 01 */	addis r4, r4, 1
/* 803F0D4C  7C 84 02 14 */	add r4, r4, r0
/* 803F0D50  A3 24 74 38 */	lhz r25, 0x7438(r4)
lbl_803F0D54:
/* 803F0D54  2C 1C 00 1B */	cmpwi r28, 0x1b
/* 803F0D58  40 82 00 14 */	bne lbl_803F0D6C
/* 803F0D5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F0D60  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F0D64  3C 84 00 02 */	addis r4, r4, 2
/* 803F0D68  98 64 61 47 */	stb r3, 0x6147(r4)
lbl_803F0D6C:
/* 803F0D6C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F0D70  7F 24 CB 78 */	mr r4, r25
/* 803F0D74  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 803F0D78  7F 25 CB 78 */	mr r5, r25
/* 803F0D7C  1C 03 09 88 */	mulli r0, r3, 0x988
/* 803F0D80  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 803F0D84  3C C6 00 01 */	addis r6, r6, 1
/* 803F0D88  7C C6 02 14 */	add r6, r6, r0
/* 803F0D8C  A0 C6 7D 1C */	lhz r6, 0x7d1c(r6)
/* 803F0D90  4B FD DD 15 */	bl mNpc_RegistEventNpc
lbl_803F0D94:
/* 803F0D94  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 803F0D98  39 61 00 50 */	addi r11, r1, 0x50
/* 803F0D9C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803F0DA0  4B CA A1 61 */	bl func_8009AF00
/* 803F0DA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F0DA8  7C 08 03 A6 */	mtlr r0
/* 803F0DAC  38 21 00 60 */	addi r1, r1, 0x60
/* 803F0DB0  4E 80 00 20 */	blr 
