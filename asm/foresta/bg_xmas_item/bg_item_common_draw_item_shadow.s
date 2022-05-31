lbl_804CCAF4:
/* 804CCAF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CCAF8  7C 08 02 A6 */	mflr r0
/* 804CCAFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CCB00  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCB04  4B BC E3 C1 */	bl func_8009AEC4
/* 804CCB08  7C BD 2B 78 */	mr r29, r5
/* 804CCB0C  7C 79 1B 78 */	mr r25, r3
/* 804CCB10  83 E5 00 1C */	lwz r31, 0x1c(r5)
/* 804CCB14  7C 9C 23 78 */	mr r28, r4
/* 804CCB18  7C DA 33 78 */	mr r26, r6
/* 804CCB1C  7C FE 3B 78 */	mr r30, r7
/* 804CCB20  28 1F 00 00 */	cmplwi r31, 0
/* 804CCB24  41 82 00 D4 */	beq lbl_804CCBF8
/* 804CCB28  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804CCB2C  80 19 02 D4 */	lwz r0, 0x2d4(r25)
/* 804CCB30  54 63 20 36 */	slwi r3, r3, 4
/* 804CCB34  7C 63 00 51 */	subf. r3, r3, r0
/* 804CCB38  90 79 02 D4 */	stw r3, 0x2d4(r25)
/* 804CCB3C  7C 7B 1B 78 */	mr r27, r3
/* 804CCB40  41 82 00 2C */	beq lbl_804CCB6C
/* 804CCB44  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804CCB48  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804CCB4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CCB50  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804CCB54  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804CCB58  FC 00 00 1E */	fctiwz f0, f0
/* 804CCB5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804CCB60  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804CCB64  4B FF 94 BD */	bl func_804C6020
/* 804CCB68  48 00 00 08 */	b lbl_804CCB70
lbl_804CCB6C:
/* 804CCB6C  83 7D 00 10 */	lwz r27, 0x10(r29)
lbl_804CCB70:
/* 804CCB70  81 3C 00 00 */	lwz r9, 0(r28)
/* 804CCB74  3C 00 DE 00 */	lis r0, 0xde00
/* 804CCB78  7F 23 CB 78 */	mr r3, r25
/* 804CCB7C  7F 84 E3 78 */	mr r4, r28
/* 804CCB80  38 C9 00 08 */	addi r6, r9, 8
/* 804CCB84  7F E5 FB 78 */	mr r5, r31
/* 804CCB88  90 DC 00 00 */	stw r6, 0(r28)
/* 804CCB8C  7F 67 DB 78 */	mr r7, r27
/* 804CCB90  7F 48 D3 78 */	mr r8, r26
/* 804CCB94  90 09 00 00 */	stw r0, 0(r9)
/* 804CCB98  88 1F 00 04 */	lbz r0, 4(r31)
/* 804CCB9C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CCBA0  54 00 10 3A */	slwi r0, r0, 2
/* 804CCBA4  7C 06 00 2E */	lwzx r0, r6, r0
/* 804CCBA8  90 09 00 04 */	stw r0, 4(r9)
/* 804CCBAC  81 5C 00 00 */	lwz r10, 0(r28)
/* 804CCBB0  38 0A 00 08 */	addi r0, r10, 8
/* 804CCBB4  90 1C 00 00 */	stw r0, 0(r28)
/* 804CCBB8  88 1E 00 03 */	lbz r0, 3(r30)
/* 804CCBBC  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804CCBC0  90 0A 00 00 */	stw r0, 0(r10)
/* 804CCBC4  88 1E 00 01 */	lbz r0, 1(r30)
/* 804CCBC8  88 DE 00 00 */	lbz r6, 0(r30)
/* 804CCBCC  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804CCBD0  89 3E 00 02 */	lbz r9, 2(r30)
/* 804CCBD4  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804CCBD8  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804CCBDC  60 00 00 FF */	ori r0, r0, 0xff
/* 804CCBE0  90 0A 00 04 */	stw r0, 4(r10)
/* 804CCBE4  81 9F 00 00 */	lwz r12, 0(r31)
/* 804CCBE8  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804CCBEC  81 3D 00 00 */	lwz r9, 0(r29)
/* 804CCBF0  7D 89 03 A6 */	mtctr r12
/* 804CCBF4  4E 80 04 21 */	bctrl 
lbl_804CCBF8:
/* 804CCBF8  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCBFC  4B BC E3 15 */	bl func_8009AF10
/* 804CCC00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CCC04  7C 08 03 A6 */	mtlr r0
/* 804CCC08  38 21 00 30 */	addi r1, r1, 0x30
/* 804CCC0C  4E 80 00 20 */	blr 
