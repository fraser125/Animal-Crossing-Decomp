lbl_805FD480:
/* 805FD480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FD484  7C 08 02 A6 */	mflr r0
/* 805FD488  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FD48C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FD490  4B A9 DA 3D */	bl func_8009AECC
/* 805FD494  7C 9D 23 78 */	mr r29, r4
/* 805FD498  7C 7C 1B 78 */	mr r28, r3
/* 805FD49C  80 04 00 00 */	lwz r0, 0(r4)
/* 805FD4A0  7C BE 2B 78 */	mr r30, r5
/* 805FD4A4  7C DF 33 78 */	mr r31, r6
/* 805FD4A8  7C FB 3B 78 */	mr r27, r7
/* 805FD4AC  2C 00 00 01 */	cmpwi r0, 1
/* 805FD4B0  40 82 00 30 */	bne lbl_805FD4E0
/* 805FD4B4  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FD4B8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805FD4BC  40 82 00 24 */	bne lbl_805FD4E0
/* 805FD4C0  4B FF 21 25 */	bl func_805EF5E4
/* 805FD4C4  2C 03 00 00 */	cmpwi r3, 0
/* 805FD4C8  41 82 00 18 */	beq lbl_805FD4E0
/* 805FD4CC  7F 83 E3 78 */	mr r3, r28
/* 805FD4D0  7F A4 EB 78 */	mr r4, r29
/* 805FD4D4  4B FF A5 09 */	bl mTG_exchange_proc
/* 805FD4D8  38 60 00 01 */	li r3, 1
/* 805FD4DC  48 00 02 20 */	b lbl_805FD6FC
lbl_805FD4E0:
/* 805FD4E0  80 9E 00 00 */	lwz r4, 0(r30)
/* 805FD4E4  80 1E 00 04 */	lwz r0, 4(r30)
/* 805FD4E8  7C 04 00 00 */	cmpw r4, r0
/* 805FD4EC  40 81 00 18 */	ble lbl_805FD504
/* 805FD4F0  7F 83 E3 78 */	mr r3, r28
/* 805FD4F4  7F C4 F3 78 */	mr r4, r30
/* 805FD4F8  7F E5 FB 78 */	mr r5, r31
/* 805FD4FC  4B FF 23 99 */	bl mTG_return_tag_func
/* 805FD500  48 00 01 F8 */	b lbl_805FD6F8
lbl_805FD504:
/* 805FD504  80 7D 00 00 */	lwz r3, 0(r29)
/* 805FD508  80 1C 00 08 */	lwz r0, 8(r28)
/* 805FD50C  7C 03 00 00 */	cmpw r3, r0
/* 805FD510  41 82 00 0C */	beq lbl_805FD51C
/* 805FD514  38 60 00 01 */	li r3, 1
/* 805FD518  48 00 01 E4 */	b lbl_805FD6FC
lbl_805FD51C:
/* 805FD51C  88 1F 00 00 */	lbz r0, 0(r31)
/* 805FD520  28 00 00 00 */	cmplwi r0, 0
/* 805FD524  40 82 00 D8 */	bne lbl_805FD5FC
/* 805FD528  28 1B 00 00 */	cmplwi r27, 0
/* 805FD52C  41 82 00 20 */	beq lbl_805FD54C
/* 805FD530  A8 1B 03 F8 */	lha r0, 0x3f8(r27)
/* 805FD534  2C 00 00 00 */	cmpwi r0, 0
/* 805FD538  40 81 00 14 */	ble lbl_805FD54C
/* 805FD53C  7F 83 E3 78 */	mr r3, r28
/* 805FD540  7F E4 FB 78 */	mr r4, r31
/* 805FD544  4B FF FB 41 */	bl mTG_move_delete
/* 805FD548  48 00 01 B0 */	b lbl_805FD6F8
lbl_805FD54C:
/* 805FD54C  A8 7E 02 F0 */	lha r3, 0x2f0(r30)
/* 805FD550  2C 03 00 00 */	cmpwi r3, 0
/* 805FD554  40 81 00 10 */	ble lbl_805FD564
/* 805FD558  38 03 FF FF */	addi r0, r3, -1
/* 805FD55C  B0 1E 02 F0 */	sth r0, 0x2f0(r30)
/* 805FD560  48 00 00 30 */	b lbl_805FD590
lbl_805FD564:
/* 805FD564  3C 80 80 65 */	lis r4, lit_577@ha /* 0x8064B82C@ha */
/* 805FD568  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FD56C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 805FD570  C0 24 B8 2C */	lfs f1, lit_577@l(r4)  /* 0x8064B82C@l */
/* 805FD574  C0 03 B8 38 */	lfs f0, lit_630@l(r3)  /* 0x8064B838@l */
/* 805FD578  EC 22 08 2A */	fadds f1, f2, f1
/* 805FD57C  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 805FD580  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805FD584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FD588  40 81 00 08 */	ble lbl_805FD590
/* 805FD58C  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_805FD590:
/* 805FD590  80 1D 00 00 */	lwz r0, 0(r29)
/* 805FD594  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FD598  40 82 00 18 */	bne lbl_805FD5B0
/* 805FD59C  7F 83 E3 78 */	mr r3, r28
/* 805FD5A0  7F A4 EB 78 */	mr r4, r29
/* 805FD5A4  7F E5 FB 78 */	mr r5, r31
/* 805FD5A8  4B FF F5 19 */	bl mTG_move_base_mailbox
/* 805FD5AC  48 00 01 4C */	b lbl_805FD6F8
lbl_805FD5B0:
/* 805FD5B0  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FD5B4  40 82 00 18 */	bne lbl_805FD5CC
/* 805FD5B8  7F 83 E3 78 */	mr r3, r28
/* 805FD5BC  7F A4 EB 78 */	mr r4, r29
/* 805FD5C0  7F E5 FB 78 */	mr r5, r31
/* 805FD5C4  4B FF F5 95 */	bl mTG_move_cpmail
/* 805FD5C8  48 00 01 30 */	b lbl_805FD6F8
lbl_805FD5CC:
/* 805FD5CC  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FD5D0  40 82 00 18 */	bne lbl_805FD5E8
/* 805FD5D4  7F 83 E3 78 */	mr r3, r28
/* 805FD5D8  7F A4 EB 78 */	mr r4, r29
/* 805FD5DC  7F E5 FB 78 */	mr r5, r31
/* 805FD5E0  4B FF FA 69 */	bl mTG_move_base_cporiginal
/* 805FD5E4  48 00 01 14 */	b lbl_805FD6F8
lbl_805FD5E8:
/* 805FD5E8  7F 83 E3 78 */	mr r3, r28
/* 805FD5EC  7F A4 EB 78 */	mr r4, r29
/* 805FD5F0  7F E5 FB 78 */	mr r5, r31
/* 805FD5F4  4B FF F4 55 */	bl mTG_move_base
/* 805FD5F8  48 00 01 00 */	b lbl_805FD6F8
lbl_805FD5FC:
/* 805FD5FC  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FD600  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805FD604  C0 43 B8 38 */	lfs f2, lit_630@l(r3)  /* 0x8064B838@l */
/* 805FD608  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805FD60C  4C 41 13 82 */	cror 2, 1, 2
/* 805FD610  40 82 00 34 */	bne lbl_805FD644
/* 805FD614  28 00 00 27 */	cmplwi r0, 0x27
/* 805FD618  40 82 00 18 */	bne lbl_805FD630
/* 805FD61C  7F 83 E3 78 */	mr r3, r28
/* 805FD620  7F A4 EB 78 */	mr r4, r29
/* 805FD624  7F E5 FB 78 */	mr r5, r31
/* 805FD628  4B FF AF 8D */	bl mTG_mv_priceSet
/* 805FD62C  48 00 00 CC */	b lbl_805FD6F8
lbl_805FD630:
/* 805FD630  7F 83 E3 78 */	mr r3, r28
/* 805FD634  7F A4 EB 78 */	mr r4, r29
/* 805FD638  7F E5 FB 78 */	mr r5, r31
/* 805FD63C  4B FF FD 29 */	bl mTG_select_tag_base
/* 805FD640  48 00 00 B8 */	b lbl_805FD6F8
lbl_805FD644:
/* 805FD644  2C 04 00 01 */	cmpwi r4, 1
/* 805FD648  40 82 00 58 */	bne lbl_805FD6A0
/* 805FD64C  88 1E 00 09 */	lbz r0, 9(r30)
/* 805FD650  28 00 00 00 */	cmplwi r0, 0
/* 805FD654  41 82 00 4C */	beq lbl_805FD6A0
/* 805FD658  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805FD65C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 805FD660  40 80 00 40 */	bge lbl_805FD6A0
/* 805FD664  3C 60 80 65 */	lis r3, lit_577@ha /* 0x8064B82C@ha */
/* 805FD668  C0 03 B8 2C */	lfs f0, lit_577@l(r3)  /* 0x8064B82C@l */
/* 805FD66C  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD670  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 805FD674  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805FD678  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805FD67C  40 81 00 08 */	ble lbl_805FD684
/* 805FD680  D0 5E 00 4C */	stfs f2, 0x4c(r30)
lbl_805FD684:
/* 805FD684  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805FD688  7F 83 E3 78 */	mr r3, r28
/* 805FD68C  81 84 09 14 */	lwz r12, 0x914(r4)
/* 805FD690  7D 89 03 A6 */	mtctr r12
/* 805FD694  4E 80 04 21 */	bctrl 
/* 805FD698  38 60 00 01 */	li r3, 1
/* 805FD69C  48 00 00 60 */	b lbl_805FD6FC
lbl_805FD6A0:
/* 805FD6A0  2C 04 00 01 */	cmpwi r4, 1
/* 805FD6A4  40 82 00 28 */	bne lbl_805FD6CC
/* 805FD6A8  88 1E 00 09 */	lbz r0, 9(r30)
/* 805FD6AC  28 00 00 00 */	cmplwi r0, 0
/* 805FD6B0  41 82 00 1C */	beq lbl_805FD6CC
/* 805FD6B4  3C 60 80 65 */	lis r3, lit_5086@ha /* 0x8064B8F4@ha */
/* 805FD6B8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805FD6BC  C0 03 B8 F4 */	lfs f0, lit_5086@l(r3)  /* 0x8064B8F4@l */
/* 805FD6C0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD6C4  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 805FD6C8  48 00 00 18 */	b lbl_805FD6E0
lbl_805FD6CC:
/* 805FD6CC  3C 60 80 65 */	lis r3, lit_577@ha /* 0x8064B82C@ha */
/* 805FD6D0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805FD6D4  C0 03 B8 2C */	lfs f0, lit_577@l(r3)  /* 0x8064B82C@l */
/* 805FD6D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD6DC  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_805FD6E0:
/* 805FD6E0  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FD6E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805FD6E8  C0 03 B8 38 */	lfs f0, lit_630@l(r3)  /* 0x8064B838@l */
/* 805FD6EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FD6F0  40 81 00 08 */	ble lbl_805FD6F8
/* 805FD6F4  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_805FD6F8:
/* 805FD6F8  38 60 00 00 */	li r3, 0
lbl_805FD6FC:
/* 805FD6FC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FD700  4B A9 D8 19 */	bl func_8009AF18
/* 805FD704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FD708  7C 08 03 A6 */	mtlr r0
/* 805FD70C  38 21 00 20 */	addi r1, r1, 0x20
/* 805FD710  4E 80 00 20 */	blr 
