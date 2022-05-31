lbl_805D09FC:
/* 805D09FC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805D0A00  7C 08 02 A6 */	mflr r0
/* 805D0A04  90 01 00 84 */	stw r0, 0x84(r1)
/* 805D0A08  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805D0A0C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805D0A10  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805D0A14  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805D0A18  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805D0A1C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805D0A20  39 61 00 50 */	addi r11, r1, 0x50
/* 805D0A24  4B AC A4 99 */	bl func_8009AEBC
/* 805D0A28  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805D0A2C  3C 60 80 65 */	lis r3, lit_862@ha /* 0x8064B0EC@ha */
/* 805D0A30  C3 A3 B0 EC */	lfs f29, lit_862@l(r3)  /* 0x8064B0EC@l */
/* 805D0A34  FF C0 08 90 */	fmr f30, f1
/* 805D0A38  83 E9 09 E8 */	lwz r31, 0x9e8(r9)
/* 805D0A3C  FF E0 10 90 */	fmr f31, f2
/* 805D0A40  7C 97 23 78 */	mr r23, r4
/* 805D0A44  7C B8 2B 78 */	mr r24, r5
/* 805D0A48  80 7F 00 08 */	lwz r3, 8(r31)
/* 805D0A4C  7C D9 33 78 */	mr r25, r6
/* 805D0A50  7C FA 3B 78 */	mr r26, r7
/* 805D0A54  90 61 00 18 */	stw r3, 0x18(r1)
/* 805D0A58  7D 1B 43 78 */	mr r27, r8
/* 805D0A5C  3B A0 00 00 */	li r29, 0
/* 805D0A60  A8 1F 00 06 */	lha r0, 6(r31)
/* 805D0A64  7F C3 02 14 */	add r30, r3, r0
lbl_805D0A68:
/* 805D0A68  38 00 00 00 */	li r0, 0
/* 805D0A6C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 805D0A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D0A74  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805D0A78:
/* 805D0A78  7F C4 F3 78 */	mr r4, r30
/* 805D0A7C  38 61 00 18 */	addi r3, r1, 0x18
/* 805D0A80  38 A1 00 14 */	addi r5, r1, 0x14
/* 805D0A84  38 C1 00 10 */	addi r6, r1, 0x10
/* 805D0A88  4B FF FE B9 */	bl mDI_strLineCheck
/* 805D0A8C  2C 03 00 03 */	cmpwi r3, 3
/* 805D0A90  40 82 01 60 */	bne lbl_805D0BF0
/* 805D0A94  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 805D0A98  41 82 00 78 */	beq lbl_805D0B10
/* 805D0A9C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805D0AA0  7C 03 E0 40 */	cmplw r3, r28
/* 805D0AA4  41 82 00 10 */	beq lbl_805D0AB4
/* 805D0AA8  88 03 FF FF */	lbz r0, -1(r3)
/* 805D0AAC  28 00 00 CD */	cmplwi r0, 0xcd
/* 805D0AB0  41 82 00 20 */	beq lbl_805D0AD0
lbl_805D0AB4:
/* 805D0AB4  88 63 00 00 */	lbz r3, 0(r3)
/* 805D0AB8  38 80 00 01 */	li r4, 1
/* 805D0ABC  4B DD EB E1 */	bl mFont_GetCodeWidth
/* 805D0AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D0AC4  7C 00 1A 14 */	add r0, r0, r3
/* 805D0AC8  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805D0ACC  40 81 00 44 */	ble lbl_805D0B10
lbl_805D0AD0:
/* 805D0AD0  3C 80 80 65 */	lis r4, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0AD4  3C 60 80 65 */	lis r3, lit_862@ha /* 0x8064B0EC@ha */
/* 805D0AD8  38 A4 B0 B0 */	addi r5, r4, lit_615@l /* 0x8064B0B0@l */
/* 805D0ADC  C0 03 B0 EC */	lfs f0, lit_862@l(r3)  /* 0x8064B0EC@l */
/* 805D0AE0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D0AE4  3C 80 80 65 */	lis r4, lit_966@ha /* 0x8064B0FC@ha */
/* 805D0AE8  3C 60 80 65 */	lis r3, lit_967@ha /* 0x8064B100@ha */
/* 805D0AEC  EC 00 F8 2A */	fadds f0, f0, f31
/* 805D0AF0  EC 41 F0 2A */	fadds f2, f1, f30
/* 805D0AF4  C0 24 B0 FC */	lfs f1, lit_966@l(r4)  /* 0x8064B0FC@l */
/* 805D0AF8  EC 42 08 28 */	fsubs f2, f2, f1
/* 805D0AFC  C0 23 B1 00 */	lfs f1, lit_967@l(r3)  /* 0x8064B100@l */
/* 805D0B00  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D0B04  D0 59 00 00 */	stfs f2, 0(r25)
/* 805D0B08  D0 1A 00 00 */	stfs f0, 0(r26)
/* 805D0B0C  48 00 00 5C */	b lbl_805D0B68
lbl_805D0B10:
/* 805D0B10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805D0B14  3C 00 43 30 */	lis r0, 0x4330
/* 805D0B18  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064B0DC@ha */
/* 805D0B1C  3C C0 80 65 */	lis r6, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0B20  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805D0B24  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D0B28  C8 45 B0 DC */	lfd f2, lit_626@l(r5)  /* 0x8064B0DC@l */
/* 805D0B2C  3C 60 80 65 */	lis r3, lit_966@ha /* 0x8064B0FC@ha */
/* 805D0B30  90 81 00 24 */	stw r4, 0x24(r1)
/* 805D0B34  38 83 B0 FC */	addi r4, r3, lit_966@l /* 0x8064B0FC@l */
/* 805D0B38  3C 60 80 65 */	lis r3, lit_967@ha /* 0x8064B100@ha */
/* 805D0B3C  C0 66 B0 B0 */	lfs f3, lit_615@l(r6)  /* 0x8064B0B0@l */
/* 805D0B40  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 805D0B44  C0 03 B1 00 */	lfs f0, lit_967@l(r3)  /* 0x8064B100@l */
/* 805D0B48  EC 41 10 28 */	fsubs f2, f1, f2
/* 805D0B4C  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D0B50  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805D0B54  EC 5E 10 2A */	fadds f2, f30, f2
/* 805D0B58  EC 43 10 2A */	fadds f2, f3, f2
/* 805D0B5C  EC 22 08 28 */	fsubs f1, f2, f1
/* 805D0B60  D0 39 00 00 */	stfs f1, 0(r25)
/* 805D0B64  D0 1A 00 00 */	stfs f0, 0(r26)
lbl_805D0B68:
/* 805D0B68  80 17 00 04 */	lwz r0, 4(r23)
/* 805D0B6C  2C 00 00 01 */	cmpwi r0, 1
/* 805D0B70  40 82 00 10 */	bne lbl_805D0B80
/* 805D0B74  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D0B78  2C 00 00 03 */	cmpwi r0, 3
/* 805D0B7C  41 82 00 20 */	beq lbl_805D0B9C
lbl_805D0B80:
/* 805D0B80  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805D0B84  88 03 FF FF */	lbz r0, -1(r3)
/* 805D0B88  28 00 00 CD */	cmplwi r0, 0xcd
/* 805D0B8C  40 82 00 10 */	bne lbl_805D0B9C
/* 805D0B90  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805D0B94  38 03 FF FF */	addi r0, r3, -1
/* 805D0B98  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805D0B9C:
/* 805D0B9C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805D0BA0  2C 05 00 00 */	cmpwi r5, 0
/* 805D0BA4  41 82 01 10 */	beq lbl_805D0CB4
/* 805D0BA8  38 00 00 01 */	li r0, 1
/* 805D0BAC  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0BB0  90 01 00 08 */	stw r0, 8(r1)
/* 805D0BB4  38 00 00 00 */	li r0, 0
/* 805D0BB8  C0 63 B0 B0 */	lfs f3, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805D0BBC  FC 20 F0 90 */	fmr f1, f30
/* 805D0BC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D0BC4  FC 40 F8 90 */	fmr f2, f31
/* 805D0BC8  FC 80 18 90 */	fmr f4, f3
/* 805D0BCC  7F 03 C3 78 */	mr r3, r24
/* 805D0BD0  88 DB 00 00 */	lbz r6, 0(r27)
/* 805D0BD4  88 FB 00 01 */	lbz r7, 1(r27)
/* 805D0BD8  7F 84 E3 78 */	mr r4, r28
/* 805D0BDC  89 1B 00 02 */	lbz r8, 2(r27)
/* 805D0BE0  39 20 00 FF */	li r9, 0xff
/* 805D0BE4  39 40 00 00 */	li r10, 0
/* 805D0BE8  4B DD F4 C1 */	bl mFont_SetLineStrings
/* 805D0BEC  48 00 00 C8 */	b lbl_805D0CB4
lbl_805D0BF0:
/* 805D0BF0  2C 03 00 00 */	cmpwi r3, 0
/* 805D0BF4  41 82 FE 84 */	beq lbl_805D0A78
/* 805D0BF8  2C 03 00 01 */	cmpwi r3, 1
/* 805D0BFC  40 82 00 28 */	bne lbl_805D0C24
/* 805D0C00  80 17 00 04 */	lwz r0, 4(r23)
/* 805D0C04  2C 00 00 01 */	cmpwi r0, 1
/* 805D0C08  40 82 00 10 */	bne lbl_805D0C18
/* 805D0C0C  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D0C10  2C 00 00 03 */	cmpwi r0, 3
/* 805D0C14  41 82 00 10 */	beq lbl_805D0C24
lbl_805D0C18:
/* 805D0C18  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805D0C1C  38 03 FF FF */	addi r0, r3, -1
/* 805D0C20  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805D0C24:
/* 805D0C24  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805D0C28  2C 05 00 00 */	cmpwi r5, 0
/* 805D0C2C  41 82 00 78 */	beq lbl_805D0CA4
/* 805D0C30  3C 80 80 65 */	lis r4, lit_968@ha /* 0x8064B104@ha */
/* 805D0C34  3C 60 80 65 */	lis r3, lit_969@ha /* 0x8064B108@ha */
/* 805D0C38  C0 24 B1 04 */	lfs f1, lit_968@l(r4)  /* 0x8064B104@l */
/* 805D0C3C  C0 03 B1 08 */	lfs f0, lit_969@l(r3)  /* 0x8064B108@l */
/* 805D0C40  EC 3F 08 28 */	fsubs f1, f31, f1
/* 805D0C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D0C48  4C 41 13 82 */	cror 2, 1, 2
/* 805D0C4C  40 82 00 58 */	bne lbl_805D0CA4
/* 805D0C50  3C 60 80 65 */	lis r3, lit_970@ha /* 0x8064B10C@ha */
/* 805D0C54  C0 03 B1 0C */	lfs f0, lit_970@l(r3)  /* 0x8064B10C@l */
/* 805D0C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D0C5C  40 80 00 48 */	bge lbl_805D0CA4
/* 805D0C60  38 00 00 01 */	li r0, 1
/* 805D0C64  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0C68  90 01 00 08 */	stw r0, 8(r1)
/* 805D0C6C  38 00 00 00 */	li r0, 0
/* 805D0C70  C0 63 B0 B0 */	lfs f3, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805D0C74  FC 20 F0 90 */	fmr f1, f30
/* 805D0C78  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D0C7C  FC 40 F8 90 */	fmr f2, f31
/* 805D0C80  FC 80 18 90 */	fmr f4, f3
/* 805D0C84  7F 03 C3 78 */	mr r3, r24
/* 805D0C88  88 DB 00 00 */	lbz r6, 0(r27)
/* 805D0C8C  88 FB 00 01 */	lbz r7, 1(r27)
/* 805D0C90  7F 84 E3 78 */	mr r4, r28
/* 805D0C94  89 1B 00 02 */	lbz r8, 2(r27)
/* 805D0C98  39 20 00 FF */	li r9, 0xff
/* 805D0C9C  39 40 00 00 */	li r10, 0
/* 805D0CA0  4B DD F4 09 */	bl mFont_SetLineStrings
lbl_805D0CA4:
/* 805D0CA4  3B BD 00 01 */	addi r29, r29, 1
/* 805D0CA8  EF FF E8 2A */	fadds f31, f31, f29
/* 805D0CAC  2C 1D 00 1F */	cmpwi r29, 0x1f
/* 805D0CB0  41 80 FD B8 */	blt lbl_805D0A68
lbl_805D0CB4:
/* 805D0CB4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805D0CB8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805D0CBC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805D0CC0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805D0CC4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805D0CC8  39 61 00 50 */	addi r11, r1, 0x50
/* 805D0CCC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805D0CD0  4B AC A2 39 */	bl func_8009AF08
/* 805D0CD4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805D0CD8  7C 08 03 A6 */	mtlr r0
/* 805D0CDC  38 21 00 80 */	addi r1, r1, 0x80
/* 805D0CE0  4E 80 00 20 */	blr 
