lbl_804CE3E0:
/* 804CE3E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CE3E4  7C 08 02 A6 */	mflr r0
/* 804CE3E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CE3EC  39 61 00 30 */	addi r11, r1, 0x30
/* 804CE3F0  4B BC CA DD */	bl func_8009AECC
/* 804CE3F4  7C 9B 23 78 */	mr r27, r4
/* 804CE3F8  7C BC 2B 78 */	mr r28, r5
/* 804CE3FC  7C 7F 1B 78 */	mr r31, r3
/* 804CE400  3B A0 00 00 */	li r29, 0
/* 804CE404  3B C0 00 00 */	li r30, 0
lbl_804CE408:
/* 804CE408  7C BB F2 14 */	add r5, r27, r30
/* 804CE40C  88 05 00 02 */	lbz r0, 2(r5)
/* 804CE410  28 00 00 00 */	cmplwi r0, 0
/* 804CE414  41 82 00 40 */	beq lbl_804CE454
/* 804CE418  88 85 00 00 */	lbz r4, 0(r5)
/* 804CE41C  7F 83 E3 78 */	mr r3, r28
/* 804CE420  88 05 00 01 */	lbz r0, 1(r5)
/* 804CE424  54 84 08 3C */	slwi r4, r4, 1
/* 804CE428  C0 25 00 04 */	lfs f1, 4(r5)
/* 804CE42C  54 00 08 3C */	slwi r0, r0, 1
/* 804CE430  C0 45 00 08 */	lfs f2, 8(r5)
/* 804CE434  7C 84 07 34 */	extsh r4, r4
/* 804CE438  7C 05 07 34 */	extsh r5, r0
/* 804CE43C  4B FF FC 9D */	bl eEL_CalcAdjust
/* 804CE440  FC 00 08 1E */	fctiwz f0, f1
/* 804CE444  D8 01 00 08 */	stfd f0, 8(r1)
/* 804CE448  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804CE44C  98 1F 00 00 */	stb r0, 0(r31)
/* 804CE450  48 00 00 18 */	b lbl_804CE468
lbl_804CE454:
/* 804CE454  C0 05 00 04 */	lfs f0, 4(r5)
/* 804CE458  FC 00 00 1E */	fctiwz f0, f0
/* 804CE45C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804CE460  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804CE464  98 1F 00 00 */	stb r0, 0(r31)
lbl_804CE468:
/* 804CE468  3B BD 00 01 */	addi r29, r29, 1
/* 804CE46C  3B DE 00 0C */	addi r30, r30, 0xc
/* 804CE470  2C 1D 00 09 */	cmpwi r29, 9
/* 804CE474  3B FF 00 01 */	addi r31, r31, 1
/* 804CE478  41 80 FF 90 */	blt lbl_804CE408
/* 804CE47C  39 61 00 30 */	addi r11, r1, 0x30
/* 804CE480  4B BC CA 99 */	bl func_8009AF18
/* 804CE484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CE488  7C 08 03 A6 */	mtlr r0
/* 804CE48C  38 21 00 30 */	addi r1, r1, 0x30
/* 804CE490  4E 80 00 20 */	blr 
