lbl_8048DC38:
/* 8048DC38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048DC3C  7C 08 02 A6 */	mflr r0
/* 8048DC40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048DC44  39 61 00 30 */	addi r11, r1, 0x30
/* 8048DC48  4B C0 D2 85 */	bl func_8009AECC
/* 8048DC4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048DC50  7C 7E 1B 78 */	mr r30, r3
/* 8048DC54  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8048DC58  3B E0 FF FF */	li r31, -1
/* 8048DC5C  3F 83 00 02 */	addis r28, r3, 2
/* 8048DC60  38 80 2D 00 */	li r4, 0x2d00
/* 8048DC64  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8048DC68  38 A0 2D 28 */	li r5, 0x2d28
/* 8048DC6C  38 C0 00 00 */	li r6, 0
/* 8048DC70  3B 63 00 68 */	addi r27, r3, 0x68
/* 8048DC74  4B F5 2E F5 */	bl mPr_GetPossessionItemSumKindWithCond
/* 8048DC78  7C 7D 1B 78 */	mr r29, r3
/* 8048DC7C  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8048DC80  38 80 23 00 */	li r4, 0x2300
/* 8048DC84  38 A0 23 28 */	li r5, 0x2328
/* 8048DC88  38 C0 00 00 */	li r6, 0
/* 8048DC8C  4B F5 2E DD */	bl mPr_GetPossessionItemSumKindWithCond
/* 8048DC90  7F BD 1A 15 */	add. r29, r29, r3
/* 8048DC94  41 82 00 A4 */	beq lbl_8048DD38
/* 8048DC98  4B BC F0 5D */	bl fqrand
/* 8048DC9C  3C 60 43 30 */	lis r3, 0x4330
/* 8048DCA0  3C 80 80 64 */	lis r4, lit_555@ha /* 0x80644C34@ha */
/* 8048DCA4  90 61 00 08 */	stw r3, 8(r1)
/* 8048DCA8  38 00 00 0F */	li r0, 0xf
/* 8048DCAC  C8 44 4C 34 */	lfd f2, lit_555@l(r4)  /* 0x80644C34@l */
/* 8048DCB0  38 C0 00 00 */	li r6, 0
/* 8048DCB4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8048DCB8  38 60 00 00 */	li r3, 0
/* 8048DCBC  80 9C 61 3C */	lwz r4, 0x613c(r28)
/* 8048DCC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048DCC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048DCC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DCCC  FC 00 00 1E */	fctiwz f0, f0
/* 8048DCD0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8048DCD4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8048DCD8  7C 09 03 A6 */	mtctr r0
lbl_8048DCDC:
/* 8048DCDC  80 04 00 88 */	lwz r0, 0x88(r4)
/* 8048DCE0  7C 00 1C 30 */	srw r0, r0, r3
/* 8048DCE4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8048DCE8  40 82 00 40 */	bne lbl_8048DD28
/* 8048DCEC  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8048DCF0  28 00 23 00 */	cmplwi r0, 0x2300
/* 8048DCF4  41 80 00 0C */	blt lbl_8048DD00
/* 8048DCF8  28 00 23 28 */	cmplwi r0, 0x2328
/* 8048DCFC  40 81 00 14 */	ble lbl_8048DD10
lbl_8048DD00:
/* 8048DD00  28 00 2D 00 */	cmplwi r0, 0x2d00
/* 8048DD04  41 80 00 24 */	blt lbl_8048DD28
/* 8048DD08  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 8048DD0C  40 80 00 1C */	bge lbl_8048DD28
lbl_8048DD10:
/* 8048DD10  2C 05 00 00 */	cmpwi r5, 0
/* 8048DD14  41 81 00 10 */	bgt lbl_8048DD24
/* 8048DD18  B0 1E 00 00 */	sth r0, 0(r30)
/* 8048DD1C  7C DF 33 78 */	mr r31, r6
/* 8048DD20  48 00 00 18 */	b lbl_8048DD38
lbl_8048DD24:
/* 8048DD24  38 A5 FF FF */	addi r5, r5, -1
lbl_8048DD28:
/* 8048DD28  3B 7B 00 02 */	addi r27, r27, 2
/* 8048DD2C  38 C6 00 01 */	addi r6, r6, 1
/* 8048DD30  38 63 00 02 */	addi r3, r3, 2
/* 8048DD34  42 00 FF A8 */	bdnz lbl_8048DCDC
lbl_8048DD38:
/* 8048DD38  7F E3 FB 78 */	mr r3, r31
/* 8048DD3C  39 61 00 30 */	addi r11, r1, 0x30
/* 8048DD40  4B C0 D1 D9 */	bl func_8009AF18
/* 8048DD44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048DD48  7C 08 03 A6 */	mtlr r0
/* 8048DD4C  38 21 00 30 */	addi r1, r1, 0x30
/* 8048DD50  4E 80 00 20 */	blr 
