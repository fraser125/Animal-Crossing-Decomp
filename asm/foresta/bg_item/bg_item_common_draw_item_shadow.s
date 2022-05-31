lbl_804BDBE4:
/* 804BDBE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BDBE8  7C 08 02 A6 */	mflr r0
/* 804BDBEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BDBF0  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDBF4  4B BD D2 D1 */	bl func_8009AEC4
/* 804BDBF8  7C BD 2B 78 */	mr r29, r5
/* 804BDBFC  7C 79 1B 78 */	mr r25, r3
/* 804BDC00  83 E5 00 1C */	lwz r31, 0x1c(r5)
/* 804BDC04  7C 9C 23 78 */	mr r28, r4
/* 804BDC08  7C DA 33 78 */	mr r26, r6
/* 804BDC0C  7C FE 3B 78 */	mr r30, r7
/* 804BDC10  28 1F 00 00 */	cmplwi r31, 0
/* 804BDC14  41 82 00 D4 */	beq lbl_804BDCE8
/* 804BDC18  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804BDC1C  80 19 02 D4 */	lwz r0, 0x2d4(r25)
/* 804BDC20  54 63 20 36 */	slwi r3, r3, 4
/* 804BDC24  7C 63 00 51 */	subf. r3, r3, r0
/* 804BDC28  90 79 02 D4 */	stw r3, 0x2d4(r25)
/* 804BDC2C  7C 7B 1B 78 */	mr r27, r3
/* 804BDC30  41 82 00 2C */	beq lbl_804BDC5C
/* 804BDC34  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804BDC38  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804BDC3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BDC40  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804BDC44  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804BDC48  FC 00 00 1E */	fctiwz f0, f0
/* 804BDC4C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804BDC50  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804BDC54  4B FF 94 BD */	bl func_804B7110
/* 804BDC58  48 00 00 08 */	b lbl_804BDC60
lbl_804BDC5C:
/* 804BDC5C  83 7D 00 10 */	lwz r27, 0x10(r29)
lbl_804BDC60:
/* 804BDC60  81 3C 00 00 */	lwz r9, 0(r28)
/* 804BDC64  3C 00 DE 00 */	lis r0, 0xde00
/* 804BDC68  7F 23 CB 78 */	mr r3, r25
/* 804BDC6C  7F 84 E3 78 */	mr r4, r28
/* 804BDC70  38 C9 00 08 */	addi r6, r9, 8
/* 804BDC74  7F E5 FB 78 */	mr r5, r31
/* 804BDC78  90 DC 00 00 */	stw r6, 0(r28)
/* 804BDC7C  7F 67 DB 78 */	mr r7, r27
/* 804BDC80  7F 48 D3 78 */	mr r8, r26
/* 804BDC84  90 09 00 00 */	stw r0, 0(r9)
/* 804BDC88  88 1F 00 04 */	lbz r0, 4(r31)
/* 804BDC8C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BDC90  54 00 10 3A */	slwi r0, r0, 2
/* 804BDC94  7C 06 00 2E */	lwzx r0, r6, r0
/* 804BDC98  90 09 00 04 */	stw r0, 4(r9)
/* 804BDC9C  81 5C 00 00 */	lwz r10, 0(r28)
/* 804BDCA0  38 0A 00 08 */	addi r0, r10, 8
/* 804BDCA4  90 1C 00 00 */	stw r0, 0(r28)
/* 804BDCA8  88 1E 00 03 */	lbz r0, 3(r30)
/* 804BDCAC  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804BDCB0  90 0A 00 00 */	stw r0, 0(r10)
/* 804BDCB4  88 1E 00 01 */	lbz r0, 1(r30)
/* 804BDCB8  88 DE 00 00 */	lbz r6, 0(r30)
/* 804BDCBC  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804BDCC0  89 3E 00 02 */	lbz r9, 2(r30)
/* 804BDCC4  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804BDCC8  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804BDCCC  60 00 00 FF */	ori r0, r0, 0xff
/* 804BDCD0  90 0A 00 04 */	stw r0, 4(r10)
/* 804BDCD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 804BDCD8  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804BDCDC  81 3D 00 00 */	lwz r9, 0(r29)
/* 804BDCE0  7D 89 03 A6 */	mtctr r12
/* 804BDCE4  4E 80 04 21 */	bctrl 
lbl_804BDCE8:
/* 804BDCE8  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDCEC  4B BD D2 25 */	bl func_8009AF10
/* 804BDCF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BDCF4  7C 08 03 A6 */	mtlr r0
/* 804BDCF8  38 21 00 30 */	addi r1, r1, 0x30
/* 804BDCFC  4E 80 00 20 */	blr 
