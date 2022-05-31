lbl_803E030C:
/* 803E030C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E0310  7C 08 02 A6 */	mflr r0
/* 803E0314  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E0318  39 61 00 30 */	addi r11, r1, 0x30
/* 803E031C  4B CB AB B1 */	bl func_8009AECC
/* 803E0320  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E0324  3B 80 00 00 */	li r28, 0
/* 803E0328  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E032C  3B 60 00 00 */	li r27, 0
/* 803E0330  3B E3 00 20 */	addi r31, r3, 0x20
/* 803E0334  7F FD FB 78 */	mr r29, r31
lbl_803E0338:
/* 803E0338  28 1D 00 00 */	cmplwi r29, 0
/* 803E033C  41 82 00 18 */	beq lbl_803E0354
/* 803E0340  7F A3 EB 78 */	mr r3, r29
/* 803E0344  4B FF FD 01 */	bl mPr_NullCheckPersonalID
/* 803E0348  2C 03 00 00 */	cmpwi r3, 0
/* 803E034C  40 82 00 08 */	bne lbl_803E0354
/* 803E0350  3B 9C 00 01 */	addi r28, r28, 1
lbl_803E0354:
/* 803E0354  3B 7B 00 01 */	addi r27, r27, 1
/* 803E0358  3B BD 24 40 */	addi r29, r29, 0x2440
/* 803E035C  2C 1B 00 04 */	cmpwi r27, 4
/* 803E0360  41 80 FF D8 */	blt lbl_803E0338
/* 803E0364  4B C7 C9 91 */	bl fqrand
/* 803E0368  20 7C 00 08 */	subfic r3, r28, 8
/* 803E036C  3C 00 43 30 */	lis r0, 0x4330
/* 803E0370  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803E0374  3C 80 80 64 */	lis r4, lit_571@ha /* 0x806430F4@ha */
/* 803E0378  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E037C  C8 44 30 F4 */	lfd f2, lit_571@l(r4)  /* 0x806430F4@l */
/* 803E0380  90 01 00 08 */	stw r0, 8(r1)
/* 803E0384  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E0388  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E038C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E0390  FC 00 00 1E */	fctiwz f0, f0
/* 803E0394  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E0398  83 61 00 14 */	lwz r27, 0x14(r1)
/* 803E039C  48 00 00 5C */	b lbl_803E03F8
lbl_803E03A0:
/* 803E03A0  7F FE FB 78 */	mr r30, r31
/* 803E03A4  3B A0 00 00 */	li r29, 0
lbl_803E03A8:
/* 803E03A8  28 1E 00 00 */	cmplwi r30, 0
/* 803E03AC  41 82 00 38 */	beq lbl_803E03E4
/* 803E03B0  7F C3 F3 78 */	mr r3, r30
/* 803E03B4  4B FF FC 91 */	bl mPr_NullCheckPersonalID
/* 803E03B8  2C 03 00 00 */	cmpwi r3, 0
/* 803E03BC  40 82 00 28 */	bne lbl_803E03E4
/* 803E03C0  88 1E 00 15 */	lbz r0, 0x15(r30)
/* 803E03C4  7C 00 07 74 */	extsb r0, r0
/* 803E03C8  7C 00 D8 00 */	cmpw r0, r27
/* 803E03CC  40 82 00 18 */	bne lbl_803E03E4
/* 803E03D0  3B 7B 00 01 */	addi r27, r27, 1
/* 803E03D4  2C 1B 00 08 */	cmpwi r27, 8
/* 803E03D8  41 80 00 1C */	blt lbl_803E03F4
/* 803E03DC  3B 60 00 00 */	li r27, 0
/* 803E03E0  48 00 00 14 */	b lbl_803E03F4
lbl_803E03E4:
/* 803E03E4  3B BD 00 01 */	addi r29, r29, 1
/* 803E03E8  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803E03EC  2C 1D 00 04 */	cmpwi r29, 4
/* 803E03F0  41 80 FF B8 */	blt lbl_803E03A8
lbl_803E03F4:
/* 803E03F4  3B 9C FF FF */	addi r28, r28, -1
lbl_803E03F8:
/* 803E03F8  2C 1C 00 00 */	cmpwi r28, 0
/* 803E03FC  41 81 FF A4 */	bgt lbl_803E03A0
/* 803E0400  7F 63 DB 78 */	mr r3, r27
/* 803E0404  39 61 00 30 */	addi r11, r1, 0x30
/* 803E0408  4B CB AB 11 */	bl func_8009AF18
/* 803E040C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E0410  7C 08 03 A6 */	mtlr r0
/* 803E0414  38 21 00 30 */	addi r1, r1, 0x30
/* 803E0418  4E 80 00 20 */	blr 
