lbl_803BEE94:
/* 803BEE94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BEE98  7C 08 02 A6 */	mflr r0
/* 803BEE9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BEEA0  39 61 00 30 */	addi r11, r1, 0x30
/* 803BEEA4  4B CD C0 2D */	bl func_8009AED0
/* 803BEEA8  7C 7D 1B 78 */	mr r29, r3
/* 803BEEAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BEEB0  1C BD 26 B0 */	mulli r5, r29, 0x26b0
/* 803BEEB4  7C 9E 23 78 */	mr r30, r4
/* 803BEEB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BEEBC  38 00 00 13 */	li r0, 0x13
/* 803BEEC0  7C 63 2A 14 */	add r3, r3, r5
/* 803BEEC4  3B 80 00 00 */	li r28, 0
/* 803BEEC8  3F E3 00 01 */	addis r31, r3, 1
/* 803BEECC  38 A0 00 00 */	li r5, 0
/* 803BEED0  38 80 00 00 */	li r4, 0
/* 803BEED4  38 60 00 01 */	li r3, 1
/* 803BEED8  7C 09 03 A6 */	mtctr r0
/* 803BEEDC  3B FF 9D 08 */	addi r31, r31, -25336
lbl_803BEEE0:
/* 803BEEE0  7C 60 20 30 */	slw r0, r3, r4
/* 803BEEE4  38 84 00 01 */	addi r4, r4, 1
/* 803BEEE8  7C A5 03 78 */	or r5, r5, r0
/* 803BEEEC  42 00 FF F4 */	bdnz lbl_803BEEE0
/* 803BEEF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 803BEEF4  7C 03 28 40 */	cmplw r3, r5
/* 803BEEF8  40 82 00 14 */	bne lbl_803BEF0C
/* 803BEEFC  38 00 00 00 */	li r0, 0
/* 803BEF00  3B 80 00 13 */	li r28, 0x13
/* 803BEF04  90 1F 00 00 */	stw r0, 0(r31)
/* 803BEF08  48 00 00 28 */	b lbl_803BEF30
lbl_803BEF0C:
/* 803BEF0C  38 00 00 13 */	li r0, 0x13
/* 803BEF10  38 80 00 00 */	li r4, 0
/* 803BEF14  7C 09 03 A6 */	mtctr r0
lbl_803BEF18:
/* 803BEF18  7C 60 24 30 */	srw r0, r3, r4
/* 803BEF1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803BEF20  40 82 00 08 */	bne lbl_803BEF28
/* 803BEF24  3B 9C 00 01 */	addi r28, r28, 1
lbl_803BEF28:
/* 803BEF28  38 84 00 01 */	addi r4, r4, 1
/* 803BEF2C  42 00 FF EC */	bdnz lbl_803BEF18
lbl_803BEF30:
/* 803BEF30  2C 1C 00 00 */	cmpwi r28, 0
/* 803BEF34  41 82 00 A0 */	beq lbl_803BEFD4
/* 803BEF38  4B C9 DD BD */	bl fqrand
/* 803BEF3C  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 803BEF40  3C 60 43 30 */	lis r3, 0x4330
/* 803BEF44  90 01 00 0C */	stw r0, 0xc(r1)
/* 803BEF48  3C 80 80 64 */	lis r4, data_806425EC@ha /* 0x806425EC@ha */
/* 803BEF4C  C8 44 25 EC */	lfd f2, data_806425EC@l(r4)  /* 0x806425EC@l */
/* 803BEF50  38 00 00 13 */	li r0, 0x13
/* 803BEF54  90 61 00 08 */	stw r3, 8(r1)
/* 803BEF58  38 A0 00 00 */	li r5, 0
/* 803BEF5C  3B 80 00 00 */	li r28, 0
/* 803BEF60  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BEF64  EC 00 10 28 */	fsubs f0, f0, f2
/* 803BEF68  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BEF6C  FC 00 00 1E */	fctiwz f0, f0
/* 803BEF70  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BEF74  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803BEF78  7C 09 03 A6 */	mtctr r0
lbl_803BEF7C:
/* 803BEF7C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803BEF80  7C 00 E4 30 */	srw r0, r0, r28
/* 803BEF84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803BEF88  40 82 00 44 */	bne lbl_803BEFCC
/* 803BEF8C  7C 05 18 00 */	cmpw r5, r3
/* 803BEF90  40 82 00 38 */	bne lbl_803BEFC8
/* 803BEF94  7F A3 EB 78 */	mr r3, r29
/* 803BEF98  38 9C 01 DC */	addi r4, r28, 0x1dc
/* 803BEF9C  4B FF FE 25 */	bl mMkRm_NoMarkLetter
/* 803BEFA0  2C 03 00 00 */	cmpwi r3, 0
/* 803BEFA4  41 82 00 30 */	beq lbl_803BEFD4
/* 803BEFA8  38 00 00 01 */	li r0, 1
/* 803BEFAC  80 9F 00 00 */	lwz r4, 0(r31)
/* 803BEFB0  7C 00 E0 30 */	slw r0, r0, r28
/* 803BEFB4  7F C3 F3 78 */	mr r3, r30
/* 803BEFB8  7C 80 03 78 */	or r0, r4, r0
/* 803BEFBC  90 1F 00 00 */	stw r0, 0(r31)
/* 803BEFC0  4B FF FC 9D */	bl mMkRm_ReportMarkEnd
/* 803BEFC4  48 00 00 10 */	b lbl_803BEFD4
lbl_803BEFC8:
/* 803BEFC8  38 A5 00 01 */	addi r5, r5, 1
lbl_803BEFCC:
/* 803BEFCC  3B 9C 00 01 */	addi r28, r28, 1
/* 803BEFD0  42 00 FF AC */	bdnz lbl_803BEF7C
lbl_803BEFD4:
/* 803BEFD4  39 61 00 30 */	addi r11, r1, 0x30
/* 803BEFD8  4B CD BF 45 */	bl func_8009AF1C
/* 803BEFDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BEFE0  7C 08 03 A6 */	mtlr r0
/* 803BEFE4  38 21 00 30 */	addi r1, r1, 0x30
/* 803BEFE8  4E 80 00 20 */	blr 
