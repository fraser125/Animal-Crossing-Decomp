lbl_805139B0:
/* 805139B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805139B4  7C 08 02 A6 */	mflr r0
/* 805139B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805139BC  39 61 00 40 */	addi r11, r1, 0x40
/* 805139C0  4B B8 75 05 */	bl func_8009AEC4
/* 805139C4  7C 9B 23 78 */	mr r27, r4
/* 805139C8  7C 7A 1B 78 */	mr r26, r3
/* 805139CC  88 04 00 00 */	lbz r0, 0(r4)
/* 805139D0  7C BC 2B 78 */	mr r28, r5
/* 805139D4  7C DD 33 78 */	mr r29, r6
/* 805139D8  7C FE 3B 78 */	mr r30, r7
/* 805139DC  28 00 00 00 */	cmplwi r0, 0
/* 805139E0  7D 1F 43 78 */	mr r31, r8
/* 805139E4  41 82 01 0C */	beq lbl_80513AF0
/* 805139E8  4B B4 93 0D */	bl fqrand
/* 805139EC  88 BB 00 00 */	lbz r5, 0(r27)
/* 805139F0  3C 00 43 30 */	lis r0, 0x4330
/* 805139F4  90 01 00 08 */	stw r0, 8(r1)
/* 805139F8  3C 80 80 65 */	lis r4, lit_1154@ha /* 0x80648FB4@ha */
/* 805139FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80513A00  C8 44 8F B4 */	lfd f2, lit_1154@l(r4)  /* 0x80648FB4@l */
/* 80513A04  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80513A08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80513A0C  38 00 00 1E */	li r0, 0x1e
/* 80513A10  38 A0 00 00 */	li r5, 0
/* 80513A14  C8 01 00 08 */	lfd f0, 8(r1)
/* 80513A18  3F 23 00 01 */	addis r25, r3, 1
/* 80513A1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80513A20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80513A24  FC 00 00 1E */	fctiwz f0, f0
/* 80513A28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80513A2C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80513A30  7C 09 03 A6 */	mtctr r0
/* 80513A34  3B 39 37 A8 */	addi r25, r25, 0x37a8
lbl_80513A38:
/* 80513A38  88 1C 00 00 */	lbz r0, 0(r28)
/* 80513A3C  28 00 00 00 */	cmplwi r0, 0
/* 80513A40  41 82 00 98 */	beq lbl_80513AD8
/* 80513A44  2C 03 00 00 */	cmpwi r3, 0
/* 80513A48  40 82 00 8C */	bne lbl_80513AD4
/* 80513A4C  38 00 00 05 */	li r0, 5
/* 80513A50  7C 65 03 D6 */	divw r3, r5, r0
/* 80513A54  7C 03 01 D6 */	mullw r0, r3, r0
/* 80513A58  38 83 00 01 */	addi r4, r3, 1
/* 80513A5C  7C 60 28 50 */	subf r3, r0, r5
/* 80513A60  38 63 00 01 */	addi r3, r3, 1
/* 80513A64  98 7A 00 00 */	stb r3, 0(r26)
/* 80513A68  98 9A 00 01 */	stb r4, 1(r26)
/* 80513A6C  4B E9 2B 01 */	bl mFI_GetBkNum2ColTop
/* 80513A70  88 DC 00 00 */	lbz r6, 0(r28)
/* 80513A74  7C 65 1B 78 */	mr r5, r3
/* 80513A78  7F 43 D3 78 */	mr r3, r26
/* 80513A7C  7F 24 CB 78 */	mr r4, r25
/* 80513A80  7F E7 FB 78 */	mr r7, r31
/* 80513A84  4B FF FD CD */	bl mAGrw_SetShineGroundBlock
/* 80513A88  88 7C 00 00 */	lbz r3, 0(r28)
/* 80513A8C  38 03 FF FF */	addi r0, r3, -1
/* 80513A90  98 1C 00 00 */	stb r0, 0(r28)
/* 80513A94  88 1C 00 00 */	lbz r0, 0(r28)
/* 80513A98  28 00 00 00 */	cmplwi r0, 0
/* 80513A9C  40 82 00 10 */	bne lbl_80513AAC
/* 80513AA0  88 7B 00 00 */	lbz r3, 0(r27)
/* 80513AA4  38 03 FF FF */	addi r0, r3, -1
/* 80513AA8  98 1B 00 00 */	stb r0, 0(r27)
lbl_80513AAC:
/* 80513AAC  88 7E 00 00 */	lbz r3, 0(r30)
/* 80513AB0  38 03 FF FF */	addi r0, r3, -1
/* 80513AB4  98 1E 00 00 */	stb r0, 0(r30)
/* 80513AB8  88 1E 00 00 */	lbz r0, 0(r30)
/* 80513ABC  28 00 00 00 */	cmplwi r0, 0
/* 80513AC0  40 82 00 30 */	bne lbl_80513AF0
/* 80513AC4  88 7D 00 00 */	lbz r3, 0(r29)
/* 80513AC8  38 03 FF FF */	addi r0, r3, -1
/* 80513ACC  98 1D 00 00 */	stb r0, 0(r29)
/* 80513AD0  48 00 00 20 */	b lbl_80513AF0
lbl_80513AD4:
/* 80513AD4  38 63 FF FF */	addi r3, r3, -1
lbl_80513AD8:
/* 80513AD8  3B 9C 00 01 */	addi r28, r28, 1
/* 80513ADC  3B DE 00 01 */	addi r30, r30, 1
/* 80513AE0  3B 39 02 00 */	addi r25, r25, 0x200
/* 80513AE4  3B FF 00 20 */	addi r31, r31, 0x20
/* 80513AE8  38 A5 00 01 */	addi r5, r5, 1
/* 80513AEC  42 00 FF 4C */	bdnz lbl_80513A38
lbl_80513AF0:
/* 80513AF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80513AF4  4B B8 74 1D */	bl func_8009AF10
/* 80513AF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80513AFC  7C 08 03 A6 */	mtlr r0
/* 80513B00  38 21 00 40 */	addi r1, r1, 0x40
/* 80513B04  4E 80 00 20 */	blr 
