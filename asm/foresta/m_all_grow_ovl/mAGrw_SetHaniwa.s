lbl_80513BA4:
/* 80513BA4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80513BA8  7C 08 02 A6 */	mflr r0
/* 80513BAC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80513BB0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80513BB4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80513BB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80513BBC  4B B8 72 F5 */	bl func_8009AEB0
/* 80513BC0  7C 97 23 78 */	mr r23, r4
/* 80513BC4  7C B8 2B 78 */	mr r24, r5
/* 80513BC8  7C 76 1B 78 */	mr r22, r3
/* 80513BCC  38 61 00 08 */	addi r3, r1, 8
/* 80513BD0  7E FD BB 78 */	mr r29, r23
/* 80513BD4  7F 1C C3 78 */	mr r28, r24
/* 80513BD8  38 80 00 03 */	li r4, 3
/* 80513BDC  4B ED 6D 19 */	bl mSP_RandomHaniwaSelect
/* 80513BE0  3C 60 80 65 */	lis r3, lit_1154@ha /* 0x80648FB4@ha */
/* 80513BE4  3B 40 00 00 */	li r26, 0
/* 80513BE8  CB E3 8F B4 */	lfd f31, lit_1154@l(r3)  /* 0x80648FB4@l */
/* 80513BEC  3A A0 00 00 */	li r21, 0
/* 80513BF0  3F E0 43 30 */	lis r31, 0x4330
lbl_80513BF4:
/* 80513BF4  88 16 00 00 */	lbz r0, 0(r22)
/* 80513BF8  7F B7 EB 78 */	mr r23, r29
/* 80513BFC  7F 98 E3 78 */	mr r24, r28
/* 80513C00  28 00 00 00 */	cmplwi r0, 0
/* 80513C04  41 82 00 F4 */	beq lbl_80513CF8
/* 80513C08  4B B4 90 ED */	bl fqrand
/* 80513C0C  88 76 00 00 */	lbz r3, 0(r22)
/* 80513C10  38 00 00 1E */	li r0, 0x1e
/* 80513C14  93 E1 00 10 */	stw r31, 0x10(r1)
/* 80513C18  3B 20 00 00 */	li r25, 0
/* 80513C1C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80513C20  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80513C24  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80513C28  EC 00 00 72 */	fmuls f0, f0, f1
/* 80513C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80513C30  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80513C34  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80513C38  7C 09 03 A6 */	mtctr r0
lbl_80513C3C:
/* 80513C3C  8B D7 00 00 */	lbz r30, 0(r23)
/* 80513C40  28 1E 00 00 */	cmplwi r30, 0
/* 80513C44  41 82 00 94 */	beq lbl_80513CD8
/* 80513C48  2C 03 00 00 */	cmpwi r3, 0
/* 80513C4C  41 81 00 88 */	bgt lbl_80513CD4
/* 80513C50  38 00 00 05 */	li r0, 5
/* 80513C54  7E 99 03 D6 */	divw r20, r25, r0
/* 80513C58  7C 14 01 D6 */	mullw r0, r20, r0
/* 80513C5C  38 94 00 01 */	addi r4, r20, 1
/* 80513C60  7F 60 C8 50 */	subf r27, r0, r25
/* 80513C64  38 7B 00 01 */	addi r3, r27, 1
/* 80513C68  4B E9 29 05 */	bl mFI_GetBkNum2ColTop
/* 80513C6C  1C F4 0A 00 */	mulli r7, r20, 0xa00
/* 80513C70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80513C74  38 81 00 08 */	addi r4, r1, 8
/* 80513C78  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80513C7C  7C 84 AA 2E */	lhzx r4, r4, r21
/* 80513C80  57 20 28 34 */	slwi r0, r25, 5
/* 80513C84  7C C5 02 14 */	add r6, r5, r0
/* 80513C88  7C E5 3A 14 */	add r7, r5, r7
/* 80513C8C  3C C6 00 02 */	addis r6, r6, 2
/* 80513C90  57 60 48 2C */	slwi r0, r27, 9
/* 80513C94  7C 65 1B 78 */	mr r5, r3
/* 80513C98  7F C8 F3 78 */	mr r8, r30
/* 80513C9C  7C 67 02 14 */	add r3, r7, r0
/* 80513CA0  7F 07 C3 78 */	mr r7, r24
/* 80513CA4  3C 63 00 01 */	addis r3, r3, 1
/* 80513CA8  38 C6 0F 1C */	addi r6, r6, 0xf1c
/* 80513CAC  38 63 37 A8 */	addi r3, r3, 0x37a8
/* 80513CB0  4B FF FE D5 */	bl mAGrw_SetHaniwaBlock
/* 80513CB4  88 76 00 00 */	lbz r3, 0(r22)
/* 80513CB8  28 03 00 01 */	cmplwi r3, 1
/* 80513CBC  40 81 00 2C */	ble lbl_80513CE8
/* 80513CC0  38 63 FF FF */	addi r3, r3, -1
/* 80513CC4  38 00 00 00 */	li r0, 0
/* 80513CC8  98 76 00 00 */	stb r3, 0(r22)
/* 80513CCC  98 17 00 00 */	stb r0, 0(r23)
/* 80513CD0  48 00 00 18 */	b lbl_80513CE8
lbl_80513CD4:
/* 80513CD4  38 63 FF FF */	addi r3, r3, -1
lbl_80513CD8:
/* 80513CD8  3A F7 00 01 */	addi r23, r23, 1
/* 80513CDC  3B 18 00 20 */	addi r24, r24, 0x20
/* 80513CE0  3B 39 00 01 */	addi r25, r25, 1
/* 80513CE4  42 00 FF 58 */	bdnz lbl_80513C3C
lbl_80513CE8:
/* 80513CE8  3B 5A 00 01 */	addi r26, r26, 1
/* 80513CEC  3A B5 00 02 */	addi r21, r21, 2
/* 80513CF0  2C 1A 00 03 */	cmpwi r26, 3
/* 80513CF4  41 80 FF 00 */	blt lbl_80513BF4
lbl_80513CF8:
/* 80513CF8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80513CFC  39 61 00 50 */	addi r11, r1, 0x50
/* 80513D00  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80513D04  4B B8 71 F9 */	bl func_8009AEFC
/* 80513D08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80513D0C  7C 08 03 A6 */	mtlr r0
/* 80513D10  38 21 00 60 */	addi r1, r1, 0x60
/* 80513D14  4E 80 00 20 */	blr 
