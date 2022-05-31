lbl_803BD8B4:
/* 803BD8B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BD8B8  7C 08 02 A6 */	mflr r0
/* 803BD8BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BD8C0  38 81 00 0C */	addi r4, r1, 0xc
/* 803BD8C4  38 A1 00 14 */	addi r5, r1, 0x14
/* 803BD8C8  38 C1 00 08 */	addi r6, r1, 8
/* 803BD8CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BD8D0  7C 7F 1B 78 */	mr r31, r3
/* 803BD8D4  38 61 00 10 */	addi r3, r1, 0x10
/* 803BD8D8  7F E7 FB 78 */	mr r7, r31
/* 803BD8DC  4B FF FE 69 */	bl mMpswd_get_RSA_key_code
/* 803BD8E0  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803BD8E4  39 00 00 01 */	li r8, 1
/* 803BD8E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803BD8EC  38 65 FF FF */	addi r3, r5, -1
/* 803BD8F0  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 803BD8F4  38 04 FF FF */	addi r0, r4, -1
/* 803BD8F8  7C E5 21 D6 */	mullw r7, r5, r4
/* 803BD8FC  7C A3 01 D6 */	mullw r5, r3, r0
lbl_803BD900:
/* 803BD900  7C 68 29 D6 */	mullw r3, r8, r5
/* 803BD904  38 83 00 01 */	addi r4, r3, 1
/* 803BD908  7C 64 33 D6 */	divw r3, r4, r6
/* 803BD90C  7C 03 31 D6 */	mullw r0, r3, r6
/* 803BD910  7C 00 20 51 */	subf. r0, r0, r4
/* 803BD914  40 82 00 0C */	bne lbl_803BD920
/* 803BD918  90 61 00 14 */	stw r3, 0x14(r1)
/* 803BD91C  48 00 00 0C */	b lbl_803BD928
lbl_803BD920:
/* 803BD920  39 08 00 01 */	addi r8, r8, 1
/* 803BD924  4B FF FF DC */	b lbl_803BD900
lbl_803BD928:
/* 803BD928  89 1F 00 14 */	lbz r8, 0x14(r31)
/* 803BD92C  38 A0 00 00 */	li r5, 0
lbl_803BD930:
/* 803BD930  80 81 00 08 */	lwz r4, 8(r1)
/* 803BD934  7D 00 2E 30 */	sraw r0, r8, r5
/* 803BD938  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803BD93C  80 84 00 00 */	lwz r4, 0(r4)
/* 803BD940  35 23 FF FF */	addic. r9, r3, -1
/* 803BD944  7C DF 20 AE */	lbzx r6, r31, r4
/* 803BD948  50 06 45 EE */	rlwimi r6, r0, 8, 0x17, 0x17
/* 803BD94C  7C C0 33 78 */	mr r0, r6
/* 803BD950  7D 29 03 A6 */	mtctr r9
/* 803BD954  40 81 00 1C */	ble lbl_803BD970
lbl_803BD958:
/* 803BD958  7C 60 31 D6 */	mullw r3, r0, r6
/* 803BD95C  39 29 FF FF */	addi r9, r9, -1
/* 803BD960  7C 03 3B D6 */	divw r0, r3, r7
/* 803BD964  7C 00 39 D6 */	mullw r0, r0, r7
/* 803BD968  7C 00 18 50 */	subf r0, r0, r3
/* 803BD96C  42 00 FF EC */	bdnz lbl_803BD958
lbl_803BD970:
/* 803BD970  7C 1F 21 AE */	stbx r0, r31, r4
/* 803BD974  38 A5 00 01 */	addi r5, r5, 1
/* 803BD978  2C 05 00 08 */	cmpwi r5, 8
/* 803BD97C  80 61 00 08 */	lwz r3, 8(r1)
/* 803BD980  38 03 00 04 */	addi r0, r3, 4
/* 803BD984  90 01 00 08 */	stw r0, 8(r1)
/* 803BD988  41 80 FF A8 */	blt lbl_803BD930
/* 803BD98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BD990  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BD994  7C 08 03 A6 */	mtlr r0
/* 803BD998  38 21 00 20 */	addi r1, r1, 0x20
/* 803BD99C  4E 80 00 20 */	blr 
