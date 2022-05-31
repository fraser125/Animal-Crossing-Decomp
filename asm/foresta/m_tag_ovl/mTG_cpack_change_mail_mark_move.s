lbl_805F88F0:
/* 805F88F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F88F4  7C 08 02 A6 */	mflr r0
/* 805F88F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F88FC  39 61 00 30 */	addi r11, r1, 0x30
/* 805F8900  4B AA 25 CD */	bl func_8009AECC
/* 805F8904  7C 7B 1B 78 */	mr r27, r3
/* 805F8908  7C 9C 23 78 */	mr r28, r4
/* 805F890C  1C 66 00 4C */	mulli r3, r6, 0x4c
/* 805F8910  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 805F8914  7C BD 2B 78 */	mr r29, r5
/* 805F8918  83 E4 09 7C */	lwz r31, 0x97c(r4)
/* 805F891C  3B C3 03 24 */	addi r30, r3, 0x324
/* 805F8920  7F DF F2 14 */	add r30, r31, r30
/* 805F8924  A8 1E 00 4A */	lha r0, 0x4a(r30)
/* 805F8928  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F892C  2C 00 00 03 */	cmpwi r0, 3
/* 805F8930  40 82 01 44 */	bne lbl_805F8A74
/* 805F8934  38 00 00 00 */	li r0, 0
/* 805F8938  90 1F 02 F4 */	stw r0, 0x2f4(r31)
/* 805F893C  90 1F 03 00 */	stw r0, 0x300(r31)
/* 805F8940  A8 7E 00 40 */	lha r3, 0x40(r30)
/* 805F8944  A8 9E 00 42 */	lha r4, 0x42(r30)
/* 805F8948  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 805F894C  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 805F8950  A8 FE 00 44 */	lha r7, 0x44(r30)
/* 805F8954  A9 1E 00 46 */	lha r8, 0x46(r30)
/* 805F8958  81 3E 00 18 */	lwz r9, 0x18(r30)
/* 805F895C  81 5E 00 1C */	lwz r10, 0x1c(r30)
/* 805F8960  4B FF FE 65 */	bl mTG_change_mail3
/* 805F8964  A8 9E 00 40 */	lha r4, 0x40(r30)
/* 805F8968  2C 04 7F FF */	cmpwi r4, 0x7fff
/* 805F896C  41 82 00 18 */	beq lbl_805F8984
/* 805F8970  38 00 00 01 */	li r0, 1
/* 805F8974  A0 7C 05 E8 */	lhz r3, 0x5e8(r28)
/* 805F8978  7C 00 20 30 */	slw r0, r0, r4
/* 805F897C  7C 60 00 78 */	andc r0, r3, r0
/* 805F8980  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
lbl_805F8984:
/* 805F8984  A8 9E 00 42 */	lha r4, 0x42(r30)
/* 805F8988  2C 04 7F FF */	cmpwi r4, 0x7fff
/* 805F898C  41 82 00 18 */	beq lbl_805F89A4
/* 805F8990  38 00 00 01 */	li r0, 1
/* 805F8994  A0 7C 05 E8 */	lhz r3, 0x5e8(r28)
/* 805F8998  7C 00 20 30 */	slw r0, r0, r4
/* 805F899C  7C 60 00 78 */	andc r0, r3, r0
/* 805F89A0  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
lbl_805F89A4:
/* 805F89A4  A8 9E 00 44 */	lha r4, 0x44(r30)
/* 805F89A8  2C 04 7F FF */	cmpwi r4, 0x7fff
/* 805F89AC  41 82 00 18 */	beq lbl_805F89C4
/* 805F89B0  38 00 00 01 */	li r0, 1
/* 805F89B4  80 7D 0B C0 */	lwz r3, 0xbc0(r29)
/* 805F89B8  7C 00 20 30 */	slw r0, r0, r4
/* 805F89BC  7C 60 00 78 */	andc r0, r3, r0
/* 805F89C0  90 1D 0B C0 */	stw r0, 0xbc0(r29)
lbl_805F89C4:
/* 805F89C4  A8 9E 00 46 */	lha r4, 0x46(r30)
/* 805F89C8  2C 04 7F FF */	cmpwi r4, 0x7fff
/* 805F89CC  41 82 00 18 */	beq lbl_805F89E4
/* 805F89D0  38 00 00 01 */	li r0, 1
/* 805F89D4  80 7D 0B C0 */	lwz r3, 0xbc0(r29)
/* 805F89D8  7C 00 20 30 */	slw r0, r0, r4
/* 805F89DC  7C 60 00 78 */	andc r0, r3, r0
/* 805F89E0  90 1D 0B C0 */	stw r0, 0xbc0(r29)
lbl_805F89E4:
/* 805F89E4  A8 9E 00 40 */	lha r4, 0x40(r30)
/* 805F89E8  2C 04 7F FF */	cmpwi r4, 0x7fff
/* 805F89EC  41 82 00 18 */	beq lbl_805F8A04
/* 805F89F0  38 00 00 01 */	li r0, 1
/* 805F89F4  A0 7C 05 E2 */	lhz r3, 0x5e2(r28)
/* 805F89F8  7C 00 20 30 */	slw r0, r0, r4
/* 805F89FC  7C 60 00 78 */	andc r0, r3, r0
/* 805F8A00  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
lbl_805F8A04:
/* 805F8A04  A8 9E 00 44 */	lha r4, 0x44(r30)
/* 805F8A08  2C 04 7F FF */	cmpwi r4, 0x7fff
/* 805F8A0C  41 82 00 18 */	beq lbl_805F8A24
/* 805F8A10  38 00 00 01 */	li r0, 1
/* 805F8A14  80 7D 0B B4 */	lwz r3, 0xbb4(r29)
/* 805F8A18  7C 00 20 30 */	slw r0, r0, r4
/* 805F8A1C  7C 60 00 78 */	andc r0, r3, r0
/* 805F8A20  90 1D 0B B4 */	stw r0, 0xbb4(r29)
lbl_805F8A24:
/* 805F8A24  38 80 00 00 */	li r4, 0
/* 805F8A28  38 00 00 04 */	li r0, 4
/* 805F8A2C  7C 85 23 78 */	mr r5, r4
/* 805F8A30  38 60 00 00 */	li r3, 0
/* 805F8A34  38 E0 7F FF */	li r7, 0x7fff
/* 805F8A38  7C 09 03 A6 */	mtctr r0
lbl_805F8A3C:
/* 805F8A3C  38 C4 00 40 */	addi r6, r4, 0x40
/* 805F8A40  38 03 00 10 */	addi r0, r3, 0x10
/* 805F8A44  7C FE 33 2E */	sthx r7, r30, r6
/* 805F8A48  38 63 00 04 */	addi r3, r3, 4
/* 805F8A4C  38 84 00 02 */	addi r4, r4, 2
/* 805F8A50  7C BE 01 2E */	stwx r5, r30, r0
/* 805F8A54  42 00 FF E8 */	bdnz lbl_805F8A3C
/* 805F8A58  38 60 04 46 */	li r3, 0x446
/* 805F8A5C  48 03 52 A9 */	bl sAdo_SysTrgStart
/* 805F8A60  38 00 00 00 */	li r0, 0
/* 805F8A64  7F 63 DB 78 */	mr r3, r27
/* 805F8A68  B0 1E 00 48 */	sth r0, 0x48(r30)
/* 805F8A6C  4B FF 8B 31 */	bl mTG_init_tag_data_item_win
/* 805F8A70  48 00 01 7C */	b lbl_805F8BEC
lbl_805F8A74:
/* 805F8A74  3C 60 80 65 */	lis r3, lit_3308@ha /* 0x8064B8D4@ha */
/* 805F8A78  3C 80 80 65 */	lis r4, lit_3309@ha /* 0x8064B8DC@ha */
/* 805F8A7C  38 A3 B8 D4 */	addi r5, r3, lit_3308@l /* 0x8064B8D4@l */
/* 805F8A80  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805F8A84  C8 E5 00 00 */	lfd f7, 0(r5)
/* 805F8A88  38 E4 B8 DC */	addi r7, r4, lit_3309@l /* 0x8064B8DC@l */
/* 805F8A8C  38 C3 B8 38 */	addi r6, r3, lit_630@l /* 0x8064B838@l */
/* 805F8A90  3C 80 80 65 */	lis r4, lit_3310@ha /* 0x8064B8E4@ha */
/* 805F8A94  FC 40 38 34 */	frsqrte f2, f7
/* 805F8A98  C8 C5 00 00 */	lfd f6, 0(r5)
/* 805F8A9C  3C 60 80 65 */	lis r3, lit_3311@ha /* 0x8064B8E8@ha */
/* 805F8AA0  38 A4 B8 E4 */	addi r5, r4, lit_3310@l /* 0x8064B8E4@l */
/* 805F8AA4  38 83 B8 E8 */	addi r4, r3, lit_3311@l /* 0x8064B8E8@l */
/* 805F8AA8  C8 A7 00 00 */	lfd f5, 0(r7)
/* 805F8AAC  FC 02 00 B2 */	fmul f0, f2, f2
/* 805F8AB0  C0 26 00 00 */	lfs f1, 0(r6)
/* 805F8AB4  C0 65 00 00 */	lfs f3, 0(r5)
/* 805F8AB8  38 7F 03 70 */	addi r3, r31, 0x370
/* 805F8ABC  FC 46 00 B2 */	fmul f2, f6, f2
/* 805F8AC0  C0 84 00 00 */	lfs f4, 0(r4)
/* 805F8AC4  FC 07 00 32 */	fmul f0, f7, f0
/* 805F8AC8  FC 05 00 28 */	fsub f0, f5, f0
/* 805F8ACC  FC 42 00 32 */	fmul f2, f2, f0
/* 805F8AD0  FC 02 00 B2 */	fmul f0, f2, f2
/* 805F8AD4  FC 46 00 B2 */	fmul f2, f6, f2
/* 805F8AD8  FC 07 00 32 */	fmul f0, f7, f0
/* 805F8ADC  FC 05 00 28 */	fsub f0, f5, f0
/* 805F8AE0  FC 42 00 32 */	fmul f2, f2, f0
/* 805F8AE4  FC 02 00 B2 */	fmul f0, f2, f2
/* 805F8AE8  FC 46 00 B2 */	fmul f2, f6, f2
/* 805F8AEC  FC 07 00 32 */	fmul f0, f7, f0
/* 805F8AF0  FC 05 00 28 */	fsub f0, f5, f0
/* 805F8AF4  FC 02 00 32 */	fmul f0, f2, f0
/* 805F8AF8  FC 07 00 32 */	fmul f0, f7, f0
/* 805F8AFC  FC 00 00 18 */	frsp f0, f0
/* 805F8B00  D0 01 00 08 */	stfs f0, 8(r1)
/* 805F8B04  C0 01 00 08 */	lfs f0, 8(r1)
/* 805F8B08  EC 41 00 28 */	fsubs f2, f1, f0
/* 805F8B0C  4B DC 26 A5 */	bl add_calc
/* 805F8B10  38 00 00 02 */	li r0, 2
/* 805F8B14  39 60 00 00 */	li r11, 0
/* 805F8B18  38 60 00 00 */	li r3, 0
/* 805F8B1C  38 80 00 00 */	li r4, 0
/* 805F8B20  38 A0 00 00 */	li r5, 0
/* 805F8B24  7C 09 03 A6 */	mtctr r0
lbl_805F8B28:
/* 805F8B28  38 00 00 01 */	li r0, 1
/* 805F8B2C  A8 DE 00 4A */	lha r6, 0x4a(r30)
/* 805F8B30  7C 09 58 30 */	slw r9, r0, r11
/* 805F8B34  39 45 02 F4 */	addi r10, r5, 0x2f4
/* 805F8B38  7C C0 48 39 */	and. r0, r6, r9
/* 805F8B3C  7D 5F 52 14 */	add r10, r31, r10
/* 805F8B40  41 82 00 10 */	beq lbl_805F8B50
/* 805F8B44  38 00 00 00 */	li r0, 0
/* 805F8B48  90 0A 00 00 */	stw r0, 0(r10)
/* 805F8B4C  48 00 00 84 */	b lbl_805F8BD0
lbl_805F8B50:
/* 805F8B50  3C C0 80 65 */	lis r6, lit_630@ha /* 0x8064B838@ha */
/* 805F8B54  7D 1E 22 14 */	add r8, r30, r4
/* 805F8B58  38 E6 B8 38 */	addi r7, r6, lit_630@l /* 0x8064B838@l */
/* 805F8B5C  C0 BF 03 70 */	lfs f5, 0x370(r31)
/* 805F8B60  C0 27 00 00 */	lfs f1, 0(r7)
/* 805F8B64  3C C0 80 65 */	lis r6, lit_3312@ha /* 0x8064B8EC@ha */
/* 805F8B68  C0 06 B8 EC */	lfs f0, lit_3312@l(r6)  /* 0x8064B8EC@l */
/* 805F8B6C  EC 21 28 28 */	fsubs f1, f1, f5
/* 805F8B70  C0 48 00 20 */	lfs f2, 0x20(r8)
/* 805F8B74  C0 68 00 24 */	lfs f3, 0x24(r8)
/* 805F8B78  C0 88 00 30 */	lfs f4, 0x30(r8)
/* 805F8B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8B80  C0 08 00 34 */	lfs f0, 0x34(r8)
/* 805F8B84  4C 40 13 82 */	cror 2, 0, 2
/* 805F8B88  40 82 00 1C */	bne lbl_805F8BA4
/* 805F8B8C  D0 8A 00 04 */	stfs f4, 4(r10)
/* 805F8B90  D0 0A 00 08 */	stfs f0, 8(r10)
/* 805F8B94  A8 1E 00 4A */	lha r0, 0x4a(r30)
/* 805F8B98  7C 00 4B 78 */	or r0, r0, r9
/* 805F8B9C  B0 1E 00 4A */	sth r0, 0x4a(r30)
/* 805F8BA0  48 00 00 30 */	b lbl_805F8BD0
lbl_805F8BA4:
/* 805F8BA4  EC 24 10 28 */	fsubs f1, f4, f2
/* 805F8BA8  EC 00 18 28 */	fsubs f0, f0, f3
/* 805F8BAC  EC 25 00 72 */	fmuls f1, f5, f1
/* 805F8BB0  EC 22 08 2A */	fadds f1, f2, f1
/* 805F8BB4  D0 2A 00 04 */	stfs f1, 4(r10)
/* 805F8BB8  C0 3F 03 70 */	lfs f1, 0x370(r31)
/* 805F8BBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F8BC0  EC 03 00 2A */	fadds f0, f3, f0
/* 805F8BC4  D0 0A 00 08 */	stfs f0, 8(r10)
/* 805F8BC8  7C 1E 18 2E */	lwzx r0, r30, r3
/* 805F8BCC  90 0A 00 00 */	stw r0, 0(r10)
lbl_805F8BD0:
/* 805F8BD0  39 6B 00 01 */	addi r11, r11, 1
/* 805F8BD4  38 63 00 04 */	addi r3, r3, 4
/* 805F8BD8  38 84 00 08 */	addi r4, r4, 8
/* 805F8BDC  38 A5 00 0C */	addi r5, r5, 0xc
/* 805F8BE0  42 00 FF 48 */	bdnz lbl_805F8B28
/* 805F8BE4  7F 63 DB 78 */	mr r3, r27
/* 805F8BE8  4B FF 89 B5 */	bl mTG_init_tag_data_item_win
lbl_805F8BEC:
/* 805F8BEC  39 61 00 30 */	addi r11, r1, 0x30
/* 805F8BF0  4B AA 23 29 */	bl func_8009AF18
/* 805F8BF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F8BF8  7C 08 03 A6 */	mtlr r0
/* 805F8BFC  38 21 00 30 */	addi r1, r1, 0x30
/* 805F8C00  4E 80 00 20 */	blr 
