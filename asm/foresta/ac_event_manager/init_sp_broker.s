lbl_8041A490:
/* 8041A490  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041A494  7C 08 02 A6 */	mflr r0
/* 8041A498  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041A49C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8041A4A0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8041A4A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8041A4A8  4B C8 0A 29 */	bl func_8009AED0
/* 8041A4AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041A4B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041A4B4  3C A3 00 02 */	addis r5, r3, 2
/* 8041A4B8  88 65 61 25 */	lbz r3, 0x6125(r5)
/* 8041A4BC  3B C5 04 A4 */	addi r30, r5, 0x4a4
/* 8041A4C0  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 8041A4C4  3B E5 04 98 */	addi r31, r5, 0x498
/* 8041A4C8  98 61 00 0C */	stb r3, 0xc(r1)
/* 8041A4CC  A0 85 05 62 */	lhz r4, 0x562(r5)
/* 8041A4D0  98 01 00 0D */	stb r0, 0xd(r1)
/* 8041A4D4  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 8041A4D8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8041A4DC  B0 81 00 08 */	sth r4, 8(r1)
/* 8041A4E0  7C 00 20 40 */	cmplw r0, r4
/* 8041A4E4  B0 65 04 D2 */	sth r3, 0x4d2(r5)
/* 8041A4E8  40 81 00 0C */	ble lbl_8041A4F4
/* 8041A4EC  38 03 00 01 */	addi r0, r3, 1
/* 8041A4F0  B0 1E 00 2E */	sth r0, 0x2e(r30)
lbl_8041A4F4:
/* 8041A4F4  88 81 00 08 */	lbz r4, 8(r1)
/* 8041A4F8  3B A0 00 00 */	li r29, 0
/* 8041A4FC  88 61 00 09 */	lbz r3, 9(r1)
/* 8041A500  38 00 00 12 */	li r0, 0x12
/* 8041A504  98 9E 00 2D */	stb r4, 0x2d(r30)
/* 8041A508  3B 80 00 00 */	li r28, 0
/* 8041A50C  98 7E 00 2B */	stb r3, 0x2b(r30)
/* 8041A510  98 1E 00 2A */	stb r0, 0x2a(r30)
/* 8041A514  9B BE 00 28 */	stb r29, 0x28(r30)
/* 8041A518  9B BE 00 29 */	stb r29, 0x29(r30)
lbl_8041A51C:
/* 8041A51C  7C 7E EA 14 */	add r3, r30, r29
/* 8041A520  4B FC 5B 6D */	bl mPr_ClearPersonalID
/* 8041A524  3B 9C 00 01 */	addi r28, r28, 1
/* 8041A528  3B BD 00 14 */	addi r29, r29, 0x14
/* 8041A52C  2C 1C 00 02 */	cmpwi r28, 2
/* 8041A530  41 80 FF EC */	blt lbl_8041A51C
/* 8041A534  38 00 00 03 */	li r0, 3
/* 8041A538  38 60 00 00 */	li r3, 0
/* 8041A53C  38 80 00 00 */	li r4, 0
/* 8041A540  7C 09 03 A6 */	mtctr r0
lbl_8041A544:
/* 8041A544  38 03 00 38 */	addi r0, r3, 0x38
/* 8041A548  38 63 00 02 */	addi r3, r3, 2
/* 8041A54C  7C 9E 03 2E */	sthx r4, r30, r0
/* 8041A550  42 00 FF F4 */	bdnz lbl_8041A544
/* 8041A554  4B FC 6A B1 */	bl mPr_GetGoodsPower
/* 8041A558  7C 63 07 35 */	extsh. r3, r3
/* 8041A55C  38 83 00 32 */	addi r4, r3, 0x32
/* 8041A560  40 80 00 18 */	bge lbl_8041A578
/* 8041A564  38 A3 00 23 */	addi r5, r3, 0x23
/* 8041A568  38 60 00 05 */	li r3, 5
/* 8041A56C  38 05 00 05 */	addi r0, r5, 5
/* 8041A570  20 00 00 64 */	subfic r0, r0, 0x64
/* 8041A574  48 00 00 14 */	b lbl_8041A588
lbl_8041A578:
/* 8041A578  38 63 00 05 */	addi r3, r3, 5
/* 8041A57C  38 A0 00 23 */	li r5, 0x23
/* 8041A580  38 03 00 23 */	addi r0, r3, 0x23
/* 8041A584  20 00 00 64 */	subfic r0, r0, 0x64
lbl_8041A588:
/* 8041A588  7C 03 28 00 */	cmpw r3, r5
/* 8041A58C  41 80 00 14 */	blt lbl_8041A5A0
/* 8041A590  7C 03 00 00 */	cmpw r3, r0
/* 8041A594  41 80 00 0C */	blt lbl_8041A5A0
/* 8041A598  3B 80 00 02 */	li r28, 2
/* 8041A59C  48 00 00 20 */	b lbl_8041A5BC
lbl_8041A5A0:
/* 8041A5A0  7C 05 18 00 */	cmpw r5, r3
/* 8041A5A4  41 80 00 14 */	blt lbl_8041A5B8
/* 8041A5A8  7C 05 00 00 */	cmpw r5, r0
/* 8041A5AC  41 80 00 0C */	blt lbl_8041A5B8
/* 8041A5B0  3B 80 00 01 */	li r28, 1
/* 8041A5B4  48 00 00 08 */	b lbl_8041A5BC
lbl_8041A5B8:
/* 8041A5B8  3B 80 00 00 */	li r28, 0
lbl_8041A5BC:
/* 8041A5BC  2C 04 00 32 */	cmpwi r4, 0x32
/* 8041A5C0  40 80 00 0C */	bge lbl_8041A5CC
/* 8041A5C4  38 80 00 32 */	li r4, 0x32
/* 8041A5C8  48 00 00 10 */	b lbl_8041A5D8
lbl_8041A5CC:
/* 8041A5CC  2C 04 00 46 */	cmpwi r4, 0x46
/* 8041A5D0  40 81 00 08 */	ble lbl_8041A5D8
/* 8041A5D4  38 80 00 46 */	li r4, 0x46
lbl_8041A5D8:
/* 8041A5D8  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 8041A5DC  3C 00 43 30 */	lis r0, 0x4330
/* 8041A5E0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8041A5E4  3C 80 80 64 */	lis r4, lit_685@ha /* 0x80643DAC@ha */
/* 8041A5E8  C8 24 3D AC */	lfd f1, lit_685@l(r4)  /* 0x80643DAC@l */
/* 8041A5EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041A5F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8041A5F4  EF E0 08 28 */	fsubs f31, f0, f1
/* 8041A5F8  4B C4 26 FD */	bl fqrand
/* 8041A5FC  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80643DA8@ha */
/* 8041A600  C0 03 3D A8 */	lfs f0, lit_683@l(r3)  /* 0x80643DA8@l */
/* 8041A604  EC 00 00 72 */	fmuls f0, f0, f1
/* 8041A608  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8041A60C  4C 40 13 82 */	cror 2, 0, 2
/* 8041A610  40 82 00 0C */	bne lbl_8041A61C
/* 8041A614  39 20 00 03 */	li r9, 3
/* 8041A618  48 00 00 08 */	b lbl_8041A620
lbl_8041A61C:
/* 8041A61C  7F 89 E3 78 */	mr r9, r28
lbl_8041A620:
/* 8041A620  38 9E 00 38 */	addi r4, r30, 0x38
/* 8041A624  38 60 00 00 */	li r3, 0
/* 8041A628  38 A0 00 01 */	li r5, 1
/* 8041A62C  38 C0 00 00 */	li r6, 0
/* 8041A630  38 E0 00 00 */	li r7, 0
/* 8041A634  39 00 00 00 */	li r8, 0
/* 8041A638  39 40 00 00 */	li r10, 0
/* 8041A63C  4B FC DD A1 */	bl mSP_SelectRandomItem_New
/* 8041A640  4B C4 26 B5 */	bl fqrand
/* 8041A644  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80643DA8@ha */
/* 8041A648  C0 03 3D A8 */	lfs f0, lit_683@l(r3)  /* 0x80643DA8@l */
/* 8041A64C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8041A650  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8041A654  4C 40 13 82 */	cror 2, 0, 2
/* 8041A658  40 82 00 0C */	bne lbl_8041A664
/* 8041A65C  39 20 00 03 */	li r9, 3
/* 8041A660  48 00 00 08 */	b lbl_8041A668
lbl_8041A664:
/* 8041A664  7F 89 E3 78 */	mr r9, r28
lbl_8041A668:
/* 8041A668  38 9E 00 3A */	addi r4, r30, 0x3a
/* 8041A66C  38 DE 00 38 */	addi r6, r30, 0x38
/* 8041A670  38 60 00 00 */	li r3, 0
/* 8041A674  38 A0 00 01 */	li r5, 1
/* 8041A678  38 E0 00 01 */	li r7, 1
/* 8041A67C  39 00 00 00 */	li r8, 0
/* 8041A680  39 40 00 00 */	li r10, 0
/* 8041A684  4B FC DD 59 */	bl mSP_SelectRandomItem_New
/* 8041A688  4B C4 26 6D */	bl fqrand
/* 8041A68C  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80643DA8@ha */
/* 8041A690  C0 03 3D A8 */	lfs f0, lit_683@l(r3)  /* 0x80643DA8@l */
/* 8041A694  EC 00 00 72 */	fmuls f0, f0, f1
/* 8041A698  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8041A69C  4C 40 13 82 */	cror 2, 0, 2
/* 8041A6A0  40 82 00 0C */	bne lbl_8041A6AC
/* 8041A6A4  39 20 00 03 */	li r9, 3
/* 8041A6A8  48 00 00 08 */	b lbl_8041A6B0
lbl_8041A6AC:
/* 8041A6AC  7F 89 E3 78 */	mr r9, r28
lbl_8041A6B0:
/* 8041A6B0  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8041A6B4  38 DE 00 38 */	addi r6, r30, 0x38
/* 8041A6B8  38 60 00 00 */	li r3, 0
/* 8041A6BC  38 A0 00 01 */	li r5, 1
/* 8041A6C0  38 E0 00 02 */	li r7, 2
/* 8041A6C4  39 00 00 00 */	li r8, 0
/* 8041A6C8  39 40 00 00 */	li r10, 0
/* 8041A6CC  4B FC DD 11 */	bl mSP_SelectRandomItem_New
/* 8041A6D0  7F E3 FB 78 */	mr r3, r31
/* 8041A6D4  4B FF F1 61 */	bl aEvMgr_actor_regist_broker_handbill
/* 8041A6D8  38 60 00 01 */	li r3, 1
/* 8041A6DC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8041A6E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8041A6E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8041A6E8  4B C8 08 35 */	bl func_8009AF1C
/* 8041A6EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041A6F0  7C 08 03 A6 */	mtlr r0
/* 8041A6F4  38 21 00 40 */	addi r1, r1, 0x40
/* 8041A6F8  4E 80 00 20 */	blr 
