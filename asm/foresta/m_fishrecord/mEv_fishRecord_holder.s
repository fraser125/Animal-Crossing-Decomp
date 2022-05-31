lbl_803ABD04:
/* 803ABD04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ABD08  7C 08 02 A6 */	mflr r0
/* 803ABD0C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803ABD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ABD14  38 00 00 05 */	li r0, 5
/* 803ABD18  39 06 85 38 */	addi r8, r6, common_data@l /* 0x81138538@l */
/* 803ABD1C  38 C0 00 00 */	li r6, 0
/* 803ABD20  7C 09 03 A6 */	mtctr r0
lbl_803ABD24:
/* 803ABD24  7C E8 32 14 */	add r7, r8, r6
/* 803ABD28  A0 05 00 00 */	lhz r0, 0(r5)
/* 803ABD2C  3D 27 00 02 */	addis r9, r7, 2
/* 803ABD30  A0 E9 3E 82 */	lhz r7, 0x3e82(r9)
/* 803ABD34  39 29 3E 68 */	addi r9, r9, 0x3e68
/* 803ABD38  7C 07 00 40 */	cmplw r7, r0
/* 803ABD3C  40 82 00 30 */	bne lbl_803ABD6C
/* 803ABD40  88 E9 00 19 */	lbz r7, 0x19(r9)
/* 803ABD44  88 05 00 02 */	lbz r0, 2(r5)
/* 803ABD48  7C 07 00 40 */	cmplw r7, r0
/* 803ABD4C  40 82 00 20 */	bne lbl_803ABD6C
/* 803ABD50  88 E9 00 17 */	lbz r7, 0x17(r9)
/* 803ABD54  88 05 00 03 */	lbz r0, 3(r5)
/* 803ABD58  7C 07 00 40 */	cmplw r7, r0
/* 803ABD5C  40 82 00 10 */	bne lbl_803ABD6C
/* 803ABD60  7D 25 4B 78 */	mr r5, r9
/* 803ABD64  4B FF FE 81 */	bl mEv_fishRecord_holder1
/* 803ABD68  48 00 00 10 */	b lbl_803ABD78
lbl_803ABD6C:
/* 803ABD6C  38 C6 00 20 */	addi r6, r6, 0x20
/* 803ABD70  42 00 FF B4 */	bdnz lbl_803ABD24
/* 803ABD74  4B FF FF 1D */	bl mEv_fishRecord_holder2
lbl_803ABD78:
/* 803ABD78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ABD7C  7C 08 03 A6 */	mtlr r0
/* 803ABD80  38 21 00 10 */	addi r1, r1, 0x10
/* 803ABD84  4E 80 00 20 */	blr 
