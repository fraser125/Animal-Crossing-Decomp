lbl_803D7A00:
/* 803D7A00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D7A04  7C 08 02 A6 */	mflr r0
/* 803D7A08  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D7A0C  39 61 00 40 */	addi r11, r1, 0x40
/* 803D7A10  4B CC 34 AD */	bl func_8009AEBC
/* 803D7A14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D7A18  7C 7E 1B 78 */	mr r30, r3
/* 803D7A1C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803D7A20  54 9C 04 3E */	clrlwi r28, r4, 0x10
/* 803D7A24  3C 63 00 02 */	addis r3, r3, 2
/* 803D7A28  3B 60 00 00 */	li r27, 0
/* 803D7A2C  83 03 61 1C */	lwz r24, 0x611c(r3)
/* 803D7A30  3B 40 00 00 */	li r26, 0
/* 803D7A34  3B 20 00 00 */	li r25, 0
/* 803D7A38  3B E0 FF FF */	li r31, -1
/* 803D7A3C  3A E0 00 00 */	li r23, 0
lbl_803D7A40:
/* 803D7A40  7F C3 F3 78 */	mr r3, r30
/* 803D7A44  4B FF 39 99 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D7A48  2C 03 00 00 */	cmpwi r3, 0
/* 803D7A4C  40 82 00 4C */	bne lbl_803D7A98
/* 803D7A50  38 00 00 01 */	li r0, 1
/* 803D7A54  88 7E 00 0D */	lbz r3, 0xd(r30)
/* 803D7A58  7C 1D B8 30 */	slw r29, r0, r23
/* 803D7A5C  7F 04 C3 78 */	mr r4, r24
/* 803D7A60  7F 60 EB 78 */	or r0, r27, r29
/* 803D7A64  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 803D7A68  4B FF FD 41 */	bl func_803D77A8
/* 803D7A6C  28 03 00 00 */	cmplwi r3, 0
/* 803D7A70  41 82 00 28 */	beq lbl_803D7A98
/* 803D7A74  88 03 00 04 */	lbz r0, 4(r3)
/* 803D7A78  28 00 00 00 */	cmplwi r0, 0
/* 803D7A7C  41 82 00 1C */	beq lbl_803D7A98
/* 803D7A80  7F 80 BE 30 */	sraw r0, r28, r23
/* 803D7A84  7F 43 EB 78 */	or r3, r26, r29
/* 803D7A88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7A8C  54 7A 04 3E */	clrlwi r26, r3, 0x10
/* 803D7A90  40 82 00 08 */	bne lbl_803D7A98
/* 803D7A94  3B 39 00 01 */	addi r25, r25, 1
lbl_803D7A98:
/* 803D7A98  3A F7 00 01 */	addi r23, r23, 1
/* 803D7A9C  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D7AA0  2C 17 00 0F */	cmpwi r23, 0xf
/* 803D7AA4  41 80 FF 9C */	blt lbl_803D7A40
/* 803D7AA8  2C 19 00 00 */	cmpwi r25, 0
/* 803D7AAC  40 81 00 70 */	ble lbl_803D7B1C
/* 803D7AB0  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 803D7AB4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 803D7AB8  7C 00 E0 78 */	andc r0, r0, r28
/* 803D7ABC  7C 77 00 38 */	and r23, r3, r0
/* 803D7AC0  4B C8 52 35 */	bl fqrand
/* 803D7AC4  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 803D7AC8  3C 00 43 30 */	lis r0, 0x4330
/* 803D7ACC  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D7AD0  3C 80 80 64 */	lis r4, data_80642904@ha /* 0x80642904@ha */
/* 803D7AD4  C8 44 29 04 */	lfd f2, data_80642904@l(r4)  /* 0x80642904@l */
/* 803D7AD8  90 01 00 08 */	stw r0, 8(r1)
/* 803D7ADC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D7AE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D7AE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D7AE8  FC 00 00 1E */	fctiwz f0, f0
/* 803D7AEC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D7AF0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803D7AF4  38 63 00 01 */	addi r3, r3, 1
/* 803D7AF8  48 00 00 1C */	b lbl_803D7B14
lbl_803D7AFC:
/* 803D7AFC  56 E0 07 FE */	clrlwi r0, r23, 0x1f
/* 803D7B00  28 00 00 01 */	cmplwi r0, 1
/* 803D7B04  40 82 00 08 */	bne lbl_803D7B0C
/* 803D7B08  38 63 FF FF */	addi r3, r3, -1
lbl_803D7B0C:
/* 803D7B0C  56 F7 F8 7E */	srwi r23, r23, 1
/* 803D7B10  3B FF 00 01 */	addi r31, r31, 1
lbl_803D7B14:
/* 803D7B14  2C 03 00 00 */	cmpwi r3, 0
/* 803D7B18  40 82 FF E4 */	bne lbl_803D7AFC
lbl_803D7B1C:
/* 803D7B1C  7F E3 FB 78 */	mr r3, r31
/* 803D7B20  39 61 00 40 */	addi r11, r1, 0x40
/* 803D7B24  4B CC 33 E5 */	bl func_8009AF08
/* 803D7B28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D7B2C  7C 08 03 A6 */	mtlr r0
/* 803D7B30  38 21 00 40 */	addi r1, r1, 0x40
/* 803D7B34  4E 80 00 20 */	blr 
