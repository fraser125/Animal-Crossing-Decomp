lbl_80497AD0:
/* 80497AD0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80497AD4  7C 08 02 A6 */	mflr r0
/* 80497AD8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80497ADC  39 61 00 50 */	addi r11, r1, 0x50
/* 80497AE0  4B C0 33 D5 */	bl func_8009AEB4
/* 80497AE4  3C E0 81 1D */	lis r7, candidate_ut@ha /* 0x811CEE18@ha */
/* 80497AE8  7C BC 2B 78 */	mr r28, r5
/* 80497AEC  38 07 EE 18 */	addi r0, r7, candidate_ut@l /* 0x811CEE18@l */
/* 80497AF0  7C DD 33 78 */	mr r29, r6
/* 80497AF4  7C 7A 1B 78 */	mr r26, r3
/* 80497AF8  7C 9B 23 78 */	mr r27, r4
/* 80497AFC  7C 19 03 78 */	mr r25, r0
/* 80497B00  7F 83 E3 78 */	mr r3, r28
/* 80497B04  7F A4 EB 78 */	mr r4, r29
/* 80497B08  3B E0 00 00 */	li r31, 0
/* 80497B0C  4B F0 EA 61 */	bl mFI_GetBkNum2ColTop
/* 80497B10  7C 60 1B 78 */	mr r0, r3
/* 80497B14  7F 83 E3 78 */	mr r3, r28
/* 80497B18  7C 18 03 78 */	mr r24, r0
/* 80497B1C  7F A4 EB 78 */	mr r4, r29
/* 80497B20  4B F0 F6 35 */	bl mFI_BkNumtoUtFGTop
/* 80497B24  28 18 00 00 */	cmplwi r24, 0
/* 80497B28  7C 77 1B 78 */	mr r23, r3
/* 80497B2C  3B C0 00 00 */	li r30, 0
/* 80497B30  41 82 01 4C */	beq lbl_80497C7C
/* 80497B34  28 17 00 00 */	cmplwi r23, 0
/* 80497B38  41 82 01 44 */	beq lbl_80497C7C
/* 80497B3C  3C 60 81 1D */	lis r3, candidate_ut@ha /* 0x811CEE18@ha */
/* 80497B40  38 80 00 20 */	li r4, 0x20
/* 80497B44  38 63 EE 18 */	addi r3, r3, candidate_ut@l /* 0x811CEE18@l */
/* 80497B48  4B BC 55 21 */	bl bzero
/* 80497B4C  3A C0 00 00 */	li r22, 0
lbl_80497B50:
/* 80497B50  3A A0 00 00 */	li r21, 0
lbl_80497B54:
/* 80497B54  2C 15 00 01 */	cmpwi r21, 1
/* 80497B58  41 80 00 58 */	blt lbl_80497BB0
/* 80497B5C  2C 15 00 0F */	cmpwi r21, 0xf
/* 80497B60  40 80 00 50 */	bge lbl_80497BB0
/* 80497B64  2C 16 00 01 */	cmpwi r22, 1
/* 80497B68  41 80 00 48 */	blt lbl_80497BB0
/* 80497B6C  2C 16 00 0F */	cmpwi r22, 0xf
/* 80497B70  40 80 00 40 */	bge lbl_80497BB0
/* 80497B74  A0 F7 00 00 */	lhz r7, 0(r23)
/* 80497B78  7F 83 E3 78 */	mr r3, r28
/* 80497B7C  7F A4 EB 78 */	mr r4, r29
/* 80497B80  7E A5 AB 78 */	mr r5, r21
/* 80497B84  7E C6 B3 78 */	mr r6, r22
/* 80497B88  7F 08 C3 78 */	mr r8, r24
/* 80497B8C  4B FF FC 71 */	bl aSNMgr_check_safe_ut
/* 80497B90  2C 03 00 01 */	cmpwi r3, 1
/* 80497B94  40 82 00 1C */	bne lbl_80497BB0
/* 80497B98  38 00 00 01 */	li r0, 1
/* 80497B9C  A0 79 00 00 */	lhz r3, 0(r25)
/* 80497BA0  7C 00 A8 30 */	slw r0, r0, r21
/* 80497BA4  3B FF 00 01 */	addi r31, r31, 1
/* 80497BA8  7C 60 03 78 */	or r0, r3, r0
/* 80497BAC  B0 19 00 00 */	sth r0, 0(r25)
lbl_80497BB0:
/* 80497BB0  3A B5 00 01 */	addi r21, r21, 1
/* 80497BB4  3B 18 00 04 */	addi r24, r24, 4
/* 80497BB8  2C 15 00 10 */	cmpwi r21, 0x10
/* 80497BBC  3A F7 00 02 */	addi r23, r23, 2
/* 80497BC0  41 80 FF 94 */	blt lbl_80497B54
/* 80497BC4  3A D6 00 01 */	addi r22, r22, 1
/* 80497BC8  3B 39 00 02 */	addi r25, r25, 2
/* 80497BCC  2C 16 00 10 */	cmpwi r22, 0x10
/* 80497BD0  41 80 FF 80 */	blt lbl_80497B50
/* 80497BD4  2C 1F 00 00 */	cmpwi r31, 0
/* 80497BD8  40 81 00 A4 */	ble lbl_80497C7C
/* 80497BDC  3C 60 81 1D */	lis r3, candidate_ut@ha /* 0x811CEE18@ha */
/* 80497BE0  3B 83 EE 18 */	addi r28, r3, candidate_ut@l /* 0x811CEE18@l */
/* 80497BE4  4B BC 51 11 */	bl fqrand
/* 80497BE8  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80497BEC  3C 00 43 30 */	lis r0, 0x4330
/* 80497BF0  3C 80 80 64 */	lis r4, data_80644CDC@ha /* 0x80644CDC@ha */
/* 80497BF4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80497BF8  38 64 4C DC */	addi r3, r4, data_80644CDC@l /* 0x80644CDC@l */
/* 80497BFC  38 80 00 00 */	li r4, 0
/* 80497C00  90 01 00 08 */	stw r0, 8(r1)
/* 80497C04  38 00 00 10 */	li r0, 0x10
/* 80497C08  C8 43 00 00 */	lfd f2, 0(r3)
/* 80497C0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80497C10  EC 00 10 28 */	fsubs f0, f0, f2
/* 80497C14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80497C18  FC 00 00 1E */	fctiwz f0, f0
/* 80497C1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80497C20  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80497C24  48 00 00 50 */	b lbl_80497C74
lbl_80497C28:
/* 80497C28  38 A0 00 00 */	li r5, 0
/* 80497C2C  7C 09 03 A6 */	mtctr r0
lbl_80497C30:
/* 80497C30  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80497C34  7C 63 2E 30 */	sraw r3, r3, r5
/* 80497C38  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 80497C3C  2C 03 00 01 */	cmpwi r3, 1
/* 80497C40  40 82 00 24 */	bne lbl_80497C64
/* 80497C44  2C 06 00 00 */	cmpwi r6, 0
/* 80497C48  41 81 00 18 */	bgt lbl_80497C60
/* 80497C4C  90 BA 00 00 */	stw r5, 0(r26)
/* 80497C50  3B C0 00 01 */	li r30, 1
/* 80497C54  90 9B 00 00 */	stw r4, 0(r27)
/* 80497C58  38 80 00 10 */	li r4, 0x10
/* 80497C5C  48 00 00 10 */	b lbl_80497C6C
lbl_80497C60:
/* 80497C60  38 C6 FF FF */	addi r6, r6, -1
lbl_80497C64:
/* 80497C64  38 A5 00 01 */	addi r5, r5, 1
/* 80497C68  42 00 FF C8 */	bdnz lbl_80497C30
lbl_80497C6C:
/* 80497C6C  3B 9C 00 02 */	addi r28, r28, 2
/* 80497C70  38 84 00 01 */	addi r4, r4, 1
lbl_80497C74:
/* 80497C74  2C 04 00 10 */	cmpwi r4, 0x10
/* 80497C78  41 80 FF B0 */	blt lbl_80497C28
lbl_80497C7C:
/* 80497C7C  7F C3 F3 78 */	mr r3, r30
/* 80497C80  39 61 00 50 */	addi r11, r1, 0x50
/* 80497C84  4B C0 32 7D */	bl func_8009AF00
/* 80497C88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80497C8C  7C 08 03 A6 */	mtlr r0
/* 80497C90  38 21 00 50 */	addi r1, r1, 0x50
/* 80497C94  4E 80 00 20 */	blr 
