lbl_803C8B3C:
/* 803C8B3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C8B40  7C 08 02 A6 */	mflr r0
/* 803C8B44  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C8B48  39 61 00 30 */	addi r11, r1, 0x30
/* 803C8B4C  4B CD 23 89 */	bl func_8009AED4
/* 803C8B50  38 00 00 06 */	li r0, 6
/* 803C8B54  7C 7D 1B 78 */	mr r29, r3
/* 803C8B58  3B C0 00 00 */	li r30, 0
/* 803C8B5C  7C 9F 23 78 */	mr r31, r4
/* 803C8B60  7C 09 03 A6 */	mtctr r0
lbl_803C8B64:
/* 803C8B64  88 04 00 00 */	lbz r0, 0(r4)
/* 803C8B68  28 00 00 00 */	cmplwi r0, 0
/* 803C8B6C  41 82 00 08 */	beq lbl_803C8B74
/* 803C8B70  3B DE 00 01 */	addi r30, r30, 1
lbl_803C8B74:
/* 803C8B74  38 84 00 05 */	addi r4, r4, 5
/* 803C8B78  42 00 FF EC */	bdnz lbl_803C8B64
/* 803C8B7C  2C 1E 00 00 */	cmpwi r30, 0
/* 803C8B80  40 81 00 7C */	ble lbl_803C8BFC
/* 803C8B84  4B C9 41 71 */	bl fqrand
/* 803C8B88  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 803C8B8C  3C 60 43 30 */	lis r3, 0x4330
/* 803C8B90  3C 80 80 64 */	lis r4, data_80642864@ha /* 0x80642864@ha */
/* 803C8B94  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C8B98  38 A4 28 64 */	addi r5, r4, data_80642864@l /* 0x80642864@l */
/* 803C8B9C  38 00 00 06 */	li r0, 6
/* 803C8BA0  90 61 00 08 */	stw r3, 8(r1)
/* 803C8BA4  7F E4 FB 78 */	mr r4, r31
/* 803C8BA8  C8 45 00 00 */	lfd f2, 0(r5)
/* 803C8BAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C8BB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 803C8BB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C8BB8  FC 00 00 1E */	fctiwz f0, f0
/* 803C8BBC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C8BC0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803C8BC4  7C 09 03 A6 */	mtctr r0
lbl_803C8BC8:
/* 803C8BC8  88 04 00 00 */	lbz r0, 0(r4)
/* 803C8BCC  28 00 00 00 */	cmplwi r0, 0
/* 803C8BD0  41 82 00 20 */	beq lbl_803C8BF0
/* 803C8BD4  2C 03 00 00 */	cmpwi r3, 0
/* 803C8BD8  41 81 00 14 */	bgt lbl_803C8BEC
/* 803C8BDC  7F A3 EB 78 */	mr r3, r29
/* 803C8BE0  7C 04 03 78 */	mr r4, r0
/* 803C8BE4  4B FF FE 89 */	bl mMsr_SetBlockMashroom
/* 803C8BE8  48 00 00 14 */	b lbl_803C8BFC
lbl_803C8BEC:
/* 803C8BEC  38 63 FF FF */	addi r3, r3, -1
lbl_803C8BF0:
/* 803C8BF0  38 84 00 05 */	addi r4, r4, 5
/* 803C8BF4  3B BD 0A 00 */	addi r29, r29, 0xa00
/* 803C8BF8  42 00 FF D0 */	bdnz lbl_803C8BC8
lbl_803C8BFC:
/* 803C8BFC  39 61 00 30 */	addi r11, r1, 0x30
/* 803C8C00  4B CD 23 21 */	bl func_8009AF20
/* 803C8C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C8C08  7C 08 03 A6 */	mtlr r0
/* 803C8C0C  38 21 00 30 */	addi r1, r1, 0x30
/* 803C8C10  4E 80 00 20 */	blr 
