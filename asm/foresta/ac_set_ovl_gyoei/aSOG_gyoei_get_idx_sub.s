lbl_80499734:
/* 80499734  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80499738  7C 08 02 A6 */	mflr r0
/* 8049973C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80499740  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80499744  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80499748  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8049974C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80499750  39 61 00 20 */	addi r11, r1, 0x20
/* 80499754  4B C0 17 79 */	bl func_8009AECC
/* 80499758  7C DD 33 79 */	or. r29, r6, r6
/* 8049975C  3C E0 80 64 */	lis r7, lit_513@ha /* 0x80644CF4@ha */
/* 80499760  7C 7B 1B 78 */	mr r27, r3
/* 80499764  7C 9F 23 78 */	mr r31, r4
/* 80499768  FF C0 08 90 */	fmr f30, f1
/* 8049976C  7C BC 2B 78 */	mr r28, r5
/* 80499770  7F 64 DB 78 */	mr r4, r27
/* 80499774  7F E5 FB 78 */	mr r5, r31
/* 80499778  C3 E7 4C F4 */	lfs f31, lit_513@l(r7)  /* 0x80644CF4@l */
/* 8049977C  3B C0 FF FF */	li r30, -1
/* 80499780  7F A9 03 A6 */	mtctr r29
/* 80499784  40 81 00 24 */	ble lbl_804997A8
lbl_80499788:
/* 80499788  80 05 00 00 */	lwz r0, 0(r5)
/* 8049978C  2C 00 00 00 */	cmpwi r0, 0
/* 80499790  40 82 00 0C */	bne lbl_8049979C
/* 80499794  C0 04 00 04 */	lfs f0, 4(r4)
/* 80499798  EF FF 00 2A */	fadds f31, f31, f0
lbl_8049979C:
/* 8049979C  38 84 00 08 */	addi r4, r4, 8
/* 804997A0  38 A5 00 04 */	addi r5, r5, 4
/* 804997A4  42 00 FF E4 */	bdnz lbl_80499788
lbl_804997A8:
/* 804997A8  4B BC 35 4D */	bl fqrand
/* 804997AC  3C 60 80 64 */	lis r3, lit_513@ha /* 0x80644CF4@ha */
/* 804997B0  7F E6 FB 78 */	mr r6, r31
/* 804997B4  FC 60 F8 90 */	fmr f3, f31
/* 804997B8  7F 65 DB 78 */	mr r5, r27
/* 804997BC  EC 5F 00 72 */	fmuls f2, f31, f1
/* 804997C0  C0 03 4C F4 */	lfs f0, lit_513@l(r3)  /* 0x80644CF4@l */
/* 804997C4  3B E0 00 00 */	li r31, 0
/* 804997C8  7F A9 03 A6 */	mtctr r29
/* 804997CC  2C 1D 00 00 */	cmpwi r29, 0
/* 804997D0  40 81 00 6C */	ble lbl_8049983C
lbl_804997D4:
/* 804997D4  80 06 00 00 */	lwz r0, 0(r6)
/* 804997D8  2C 00 00 00 */	cmpwi r0, 0
/* 804997DC  40 82 00 50 */	bne lbl_8049982C
/* 804997E0  C0 25 00 04 */	lfs f1, 4(r5)
/* 804997E4  EC 21 07 B2 */	fmuls f1, f1, f30
/* 804997E8  EC 63 08 28 */	fsubs f3, f3, f1
/* 804997EC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804997F0  41 80 00 4C */	blt lbl_8049983C
/* 804997F4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804997F8  4C 41 13 82 */	cror 2, 1, 2
/* 804997FC  40 82 00 30 */	bne lbl_8049982C
/* 80499800  38 00 00 01 */	li r0, 1
/* 80499804  7F 84 E3 78 */	mr r4, r28
/* 80499808  90 06 00 00 */	stw r0, 0(r6)
/* 8049980C  88 65 00 02 */	lbz r3, 2(r5)
/* 80499810  4B FF FE BD */	bl aSOG_gyoei_place_check
/* 80499814  2C 03 00 00 */	cmpwi r3, 0
/* 80499818  40 82 00 0C */	bne lbl_80499824
/* 8049981C  3B C0 00 28 */	li r30, 0x28
/* 80499820  48 00 00 1C */	b lbl_8049983C
lbl_80499824:
/* 80499824  7F FE FB 78 */	mr r30, r31
/* 80499828  48 00 00 14 */	b lbl_8049983C
lbl_8049982C:
/* 8049982C  38 A5 00 08 */	addi r5, r5, 8
/* 80499830  38 C6 00 04 */	addi r6, r6, 4
/* 80499834  3B FF 00 01 */	addi r31, r31, 1
/* 80499838  42 00 FF 9C */	bdnz lbl_804997D4
lbl_8049983C:
/* 8049983C  7F C3 F3 78 */	mr r3, r30
/* 80499840  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80499844  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80499848  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8049984C  39 61 00 20 */	addi r11, r1, 0x20
/* 80499850  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80499854  4B C0 16 C5 */	bl func_8009AF18
/* 80499858  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049985C  7C 08 03 A6 */	mtlr r0
/* 80499860  38 21 00 40 */	addi r1, r1, 0x40
/* 80499864  4E 80 00 20 */	blr 