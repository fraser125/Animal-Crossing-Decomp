lbl_805ABA00:
/* 805ABA00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805ABA04  7C 08 02 A6 */	mflr r0
/* 805ABA08  90 01 00 34 */	stw r0, 0x34(r1)
/* 805ABA0C  39 61 00 30 */	addi r11, r1, 0x30
/* 805ABA10  4B AE F4 BD */	bl func_8009AECC
/* 805ABA14  7C 7B 1B 78 */	mr r27, r3
/* 805ABA18  3B A0 00 0F */	li r29, 0xf
/* 805ABA1C  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 805ABA20  FC 00 00 1E */	fctiwz f0, f0
/* 805ABA24  D8 01 00 08 */	stfd f0, 8(r1)
/* 805ABA28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805ABA2C  2C 00 00 00 */	cmpwi r0, 0
/* 805ABA30  40 82 00 D4 */	bne lbl_805ABB04
/* 805ABA34  4B FF FE 91 */	bl func_805AB8C4
/* 805ABA38  48 00 00 08 */	b lbl_805ABA40
/* 805ABA3C  48 00 00 C8 */	b lbl_805ABB04
lbl_805ABA40:
/* 805ABA40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805ABA44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805ABA48  3C 63 00 02 */	addis r3, r3, 2
/* 805ABA4C  80 63 60 DC */	lwz r3, 0x60dc(r3)
/* 805ABA50  28 03 00 00 */	cmplwi r3, 0
/* 805ABA54  41 82 00 28 */	beq lbl_805ABA7C
/* 805ABA58  80 03 00 04 */	lwz r0, 4(r3)
/* 805ABA5C  2C 00 00 00 */	cmpwi r0, 0
/* 805ABA60  40 82 00 1C */	bne lbl_805ABA7C
/* 805ABA64  80 1B 02 B8 */	lwz r0, 0x2b8(r27)
/* 805ABA68  2C 00 00 02 */	cmpwi r0, 2
/* 805ABA6C  41 81 00 10 */	bgt lbl_805ABA7C
/* 805ABA70  81 83 00 00 */	lwz r12, 0(r3)
/* 805ABA74  7D 89 03 A6 */	mtctr r12
/* 805ABA78  4E 80 04 21 */	bctrl 
lbl_805ABA7C:
/* 805ABA7C  80 7B 02 BC */	lwz r3, 0x2bc(r27)
/* 805ABA80  80 1B 02 B8 */	lwz r0, 0x2b8(r27)
/* 805ABA84  7C 03 00 00 */	cmpw r3, r0
/* 805ABA88  41 82 00 7C */	beq lbl_805ABB04
/* 805ABA8C  C0 1B 02 D0 */	lfs f0, 0x2d0(r27)
/* 805ABA90  FC 00 00 1E */	fctiwz f0, f0
/* 805ABA94  D8 01 00 08 */	stfd f0, 8(r1)
/* 805ABA98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805ABA9C  2C 00 00 00 */	cmpwi r0, 0
/* 805ABAA0  40 82 00 24 */	bne lbl_805ABAC4
/* 805ABAA4  38 60 00 40 */	li r3, 0x40
/* 805ABAA8  38 80 00 08 */	li r4, 8
/* 805ABAAC  4B DF 20 55 */	bl mEv_check_status
/* 805ABAB0  2C 03 00 00 */	cmpwi r3, 0
/* 805ABAB4  41 82 00 10 */	beq lbl_805ABAC4
/* 805ABAB8  3C 60 80 65 */	lis r3, data_8064A664@ha /* 0x8064A664@ha */
/* 805ABABC  C0 03 A6 64 */	lfs f0, data_8064A664@l(r3)  /* 0x8064A664@l */
/* 805ABAC0  D0 1B 02 D0 */	stfs f0, 0x2d0(r27)
lbl_805ABAC4:
/* 805ABAC4  3B 80 00 00 */	li r28, 0
lbl_805ABAC8:
/* 805ABAC8  23 DC 00 03 */	subfic r30, r28, 3
/* 805ABACC  80 7B 02 BC */	lwz r3, 0x2bc(r27)
/* 805ABAD0  7F C4 F3 78 */	mr r4, r30
/* 805ABAD4  4B FF FE 51 */	bl aCOU_getTime
/* 805ABAD8  7C 7F 1B 78 */	mr r31, r3
/* 805ABADC  80 7B 02 B8 */	lwz r3, 0x2b8(r27)
/* 805ABAE0  7F C4 F3 78 */	mr r4, r30
/* 805ABAE4  4B FF FE 41 */	bl aCOU_getTime
/* 805ABAE8  7C 03 F8 00 */	cmpw r3, r31
/* 805ABAEC  40 82 00 14 */	bne lbl_805ABB00
/* 805ABAF0  3B 9C 00 01 */	addi r28, r28, 1
/* 805ABAF4  7F BD 0E 70 */	srawi r29, r29, 1
/* 805ABAF8  2C 1C 00 04 */	cmpwi r28, 4
/* 805ABAFC  41 80 FF CC */	blt lbl_805ABAC8
lbl_805ABB00:
/* 805ABB00  93 BB 02 C0 */	stw r29, 0x2c0(r27)
lbl_805ABB04:
/* 805ABB04  39 61 00 30 */	addi r11, r1, 0x30
/* 805ABB08  4B AE F4 11 */	bl func_8009AF18
/* 805ABB0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805ABB10  7C 08 03 A6 */	mtlr r0
/* 805ABB14  38 21 00 30 */	addi r1, r1, 0x30
/* 805ABB18  4E 80 00 20 */	blr 
