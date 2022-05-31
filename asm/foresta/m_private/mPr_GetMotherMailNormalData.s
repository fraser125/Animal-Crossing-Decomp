lbl_803E1AA0:
/* 803E1AA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E1AA4  7C 08 02 A6 */	mflr r0
/* 803E1AA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E1AAC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E1AB0  4B CB 94 19 */	bl func_8009AEC8
/* 803E1AB4  7C DC 33 78 */	mr r28, r6
/* 803E1AB8  38 00 FF FF */	li r0, -1
/* 803E1ABC  90 06 00 00 */	stw r0, 0(r6)
/* 803E1AC0  7C 7A 1B 78 */	mr r26, r3
/* 803E1AC4  7C 9B 23 78 */	mr r27, r4
/* 803E1AC8  7C BF 2B 78 */	mr r31, r5
/* 803E1ACC  7C FD 3B 78 */	mr r29, r7
/* 803E1AD0  4B C7 B2 25 */	bl fqrand
/* 803E1AD4  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 803E1AD8  3C 00 43 30 */	lis r0, 0x4330
/* 803E1ADC  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E1AE0  3C 80 80 64 */	lis r4, lit_571@ha /* 0x806430F4@ha */
/* 803E1AE4  C8 44 30 F4 */	lfd f2, lit_571@l(r4)  /* 0x806430F4@l */
/* 803E1AE8  3B A0 00 00 */	li r29, 0
/* 803E1AEC  90 01 00 08 */	stw r0, 8(r1)
/* 803E1AF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E1AF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E1AF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E1AFC  FC 00 00 1E */	fctiwz f0, f0
/* 803E1B00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E1B04  83 C1 00 14 */	lwz r30, 0x14(r1)
lbl_803E1B08:
/* 803E1B08  7F 43 D3 78 */	mr r3, r26
/* 803E1B0C  7F A4 EB 78 */	mr r4, r29
/* 803E1B10  4B FF FF 71 */	bl mPr_CheckMotherMailNormal
/* 803E1B14  2C 03 00 00 */	cmpwi r3, 0
/* 803E1B18  40 82 00 18 */	bne lbl_803E1B30
/* 803E1B1C  2C 1E 00 00 */	cmpwi r30, 0
/* 803E1B20  41 81 00 0C */	bgt lbl_803E1B2C
/* 803E1B24  93 BC 00 00 */	stw r29, 0(r28)
/* 803E1B28  48 00 00 14 */	b lbl_803E1B3C
lbl_803E1B2C:
/* 803E1B2C  3B DE FF FF */	addi r30, r30, -1
lbl_803E1B30:
/* 803E1B30  3B BD 00 01 */	addi r29, r29, 1
/* 803E1B34  2C 1D 00 38 */	cmpwi r29, 0x38
/* 803E1B38  41 80 FF D0 */	blt lbl_803E1B08
lbl_803E1B3C:
/* 803E1B3C  80 7C 00 00 */	lwz r3, 0(r28)
/* 803E1B40  38 03 01 2C */	addi r0, r3, 0x12c
/* 803E1B44  90 1B 00 00 */	stw r0, 0(r27)
/* 803E1B48  80 1C 00 00 */	lwz r0, 0(r28)
/* 803E1B4C  28 00 00 2F */	cmplwi r0, 0x2f
/* 803E1B50  41 81 00 84 */	bgt lbl_803E1BD4
/* 803E1B54  3C 60 80 66 */	lis r3, lit_1295@ha /* 0x8065BE5C@ha */
/* 803E1B58  54 00 10 3A */	slwi r0, r0, 2
/* 803E1B5C  38 63 BE 5C */	addi r3, r3, lit_1295@l /* 0x8065BE5C@l */
/* 803E1B60  7C 03 00 2E */	lwzx r0, r3, r0
/* 803E1B64  7C 09 03 A6 */	mtctr r0
/* 803E1B68  4E 80 04 20 */	bctr 
lbl_803E1B6C:
/* 803E1B6C  7F E4 FB 78 */	mr r4, r31
/* 803E1B70  38 60 00 00 */	li r3, 0
/* 803E1B74  38 A0 00 01 */	li r5, 1
/* 803E1B78  38 C0 00 00 */	li r6, 0
/* 803E1B7C  38 E0 00 00 */	li r7, 0
/* 803E1B80  39 00 00 02 */	li r8, 2
/* 803E1B84  39 20 00 08 */	li r9, 8
/* 803E1B88  39 40 00 00 */	li r10, 0
/* 803E1B8C  48 00 68 51 */	bl mSP_SelectRandomItem_New
/* 803E1B90  48 00 00 4C */	b lbl_803E1BDC
lbl_803E1B94:
/* 803E1B94  4B FC 83 55 */	bl mFI_GetOtherFruit
/* 803E1B98  B0 7F 00 00 */	sth r3, 0(r31)
/* 803E1B9C  48 00 00 40 */	b lbl_803E1BDC
lbl_803E1BA0:
/* 803E1BA0  38 00 21 00 */	li r0, 0x2100
/* 803E1BA4  B0 1F 00 00 */	sth r0, 0(r31)
/* 803E1BA8  48 00 00 34 */	b lbl_803E1BDC
lbl_803E1BAC:
/* 803E1BAC  38 00 10 E8 */	li r0, 0x10e8
/* 803E1BB0  B0 1F 00 00 */	sth r0, 0(r31)
/* 803E1BB4  48 00 00 28 */	b lbl_803E1BDC
lbl_803E1BB8:
/* 803E1BB8  38 00 13 B0 */	li r0, 0x13b0
/* 803E1BBC  B0 1F 00 00 */	sth r0, 0(r31)
/* 803E1BC0  48 00 00 1C */	b lbl_803E1BDC
lbl_803E1BC4:
/* 803E1BC4  7F E3 FB 78 */	mr r3, r31
/* 803E1BC8  38 80 00 01 */	li r4, 1
/* 803E1BCC  48 00 8E F5 */	bl mSP_RandomUmbSelect
/* 803E1BD0  48 00 00 0C */	b lbl_803E1BDC
lbl_803E1BD4:
/* 803E1BD4  38 00 00 00 */	li r0, 0
/* 803E1BD8  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803E1BDC:
/* 803E1BDC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E1BE0  4B CB 93 35 */	bl func_8009AF14
/* 803E1BE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E1BE8  7C 08 03 A6 */	mtlr r0
/* 803E1BEC  38 21 00 30 */	addi r1, r1, 0x30
/* 803E1BF0  4E 80 00 20 */	blr 
