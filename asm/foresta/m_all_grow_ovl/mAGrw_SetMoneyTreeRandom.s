lbl_8051122C:
/* 8051122C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80511230  7C 08 02 A6 */	mflr r0
/* 80511234  90 01 00 34 */	stw r0, 0x34(r1)
/* 80511238  39 61 00 30 */	addi r11, r1, 0x30
/* 8051123C  4B B8 9C 99 */	bl func_8009AED4
/* 80511240  7C 7D 1B 78 */	mr r29, r3
/* 80511244  7C 9E 23 78 */	mr r30, r4
/* 80511248  7C BF 2B 78 */	mr r31, r5
/* 8051124C  4B B4 BA A9 */	bl fqrand
/* 80511250  88 9F 00 00 */	lbz r4, 0(r31)
/* 80511254  3C 00 43 30 */	lis r0, 0x4330
/* 80511258  90 01 00 08 */	stw r0, 8(r1)
/* 8051125C  3C 60 80 65 */	lis r3, lit_1154@ha /* 0x80648FB4@ha */
/* 80511260  C8 43 8F B4 */	lfd f2, lit_1154@l(r3)  /* 0x80648FB4@l */
/* 80511264  38 00 00 1E */	li r0, 0x1e
/* 80511268  90 81 00 0C */	stw r4, 0xc(r1)
/* 8051126C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80511270  EC 00 10 28 */	fsubs f0, f0, f2
/* 80511274  EC 00 00 72 */	fmuls f0, f0, f1
/* 80511278  FC 00 00 1E */	fctiwz f0, f0
/* 8051127C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80511280  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80511284  7C 09 03 A6 */	mtctr r0
lbl_80511288:
/* 80511288  88 9E 00 00 */	lbz r4, 0(r30)
/* 8051128C  28 04 00 00 */	cmplwi r4, 0
/* 80511290  41 82 00 54 */	beq lbl_805112E4
/* 80511294  2C 03 00 00 */	cmpwi r3, 0
/* 80511298  41 81 00 48 */	bgt lbl_805112E0
/* 8051129C  3C 60 80 6A */	lis r3, l_magrw_smn_table@ha /* 0x8069FA7C@ha */
/* 805112A0  3C C0 80 6A */	lis r6, l_magrw_change_tree@ha /* 0x8069FA64@ha */
/* 805112A4  38 A3 FA 7C */	addi r5, r3, l_magrw_smn_table@l /* 0x8069FA7C@l */
/* 805112A8  38 E0 00 03 */	li r7, 3
/* 805112AC  7F A3 EB 78 */	mr r3, r29
/* 805112B0  38 C6 FA 64 */	addi r6, r6, l_magrw_change_tree@l /* 0x8069FA64@l */
/* 805112B4  4B FF FB FD */	bl mAGrw_ChangeItemBlock2
/* 805112B8  88 7E 00 00 */	lbz r3, 0(r30)
/* 805112BC  38 03 FF FF */	addi r0, r3, -1
/* 805112C0  98 1E 00 00 */	stb r0, 0(r30)
/* 805112C4  88 1E 00 00 */	lbz r0, 0(r30)
/* 805112C8  28 00 00 00 */	cmplwi r0, 0
/* 805112CC  40 82 00 24 */	bne lbl_805112F0
/* 805112D0  88 7F 00 00 */	lbz r3, 0(r31)
/* 805112D4  38 03 FF FF */	addi r0, r3, -1
/* 805112D8  98 1F 00 00 */	stb r0, 0(r31)
/* 805112DC  48 00 00 14 */	b lbl_805112F0
lbl_805112E0:
/* 805112E0  38 63 FF FF */	addi r3, r3, -1
lbl_805112E4:
/* 805112E4  3B BD 02 00 */	addi r29, r29, 0x200
/* 805112E8  3B DE 00 01 */	addi r30, r30, 1
/* 805112EC  42 00 FF 9C */	bdnz lbl_80511288
lbl_805112F0:
/* 805112F0  39 61 00 30 */	addi r11, r1, 0x30
/* 805112F4  4B B8 9C 2D */	bl func_8009AF20
/* 805112F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805112FC  7C 08 03 A6 */	mtlr r0
/* 80511300  38 21 00 30 */	addi r1, r1, 0x30
/* 80511304  4E 80 00 20 */	blr 
