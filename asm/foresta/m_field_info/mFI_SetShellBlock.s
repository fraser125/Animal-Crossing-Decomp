lbl_803AA9A0:
/* 803AA9A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803AA9A4  7C 08 02 A6 */	mflr r0
/* 803AA9A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 803AA9AC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803AA9B0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803AA9B4  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA9B8  4B CF 05 01 */	bl func_8009AEB8
/* 803AA9BC  7C 76 1B 79 */	or. r22, r3, r3
/* 803AA9C0  7C 97 23 78 */	mr r23, r4
/* 803AA9C4  7C B8 2B 78 */	mr r24, r5
/* 803AA9C8  7C D9 33 78 */	mr r25, r6
/* 803AA9CC  7C FA 3B 78 */	mr r26, r7
/* 803AA9D0  7E FD BB 78 */	mr r29, r23
/* 803AA9D4  7E DE B3 78 */	mr r30, r22
/* 803AA9D8  41 82 00 CC */	beq lbl_803AAAA4
/* 803AA9DC  28 17 00 00 */	cmplwi r23, 0
/* 803AA9E0  41 82 00 C4 */	beq lbl_803AAAA4
/* 803AA9E4  3C 60 80 64 */	lis r3, lit_641@ha /* 0x80641F4C@ha */
/* 803AA9E8  3F E0 43 30 */	lis r31, 0x4330
/* 803AA9EC  CB E3 1F 4C */	lfd f31, lit_641@l(r3)  /* 0x80641F4C@l */
/* 803AA9F0  48 00 00 A0 */	b lbl_803AAA90
lbl_803AA9F4:
/* 803AA9F4  4B CB 23 01 */	bl fqrand
/* 803AA9F8  88 19 00 00 */	lbz r0, 0(r25)
/* 803AA9FC  7F D6 F3 78 */	mr r22, r30
/* 803AAA00  93 E1 00 08 */	stw r31, 8(r1)
/* 803AAA04  7F B7 EB 78 */	mr r23, r29
/* 803AAA08  3B 60 00 00 */	li r27, 0
/* 803AAA0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803AAA10  C8 01 00 08 */	lfd f0, 8(r1)
/* 803AAA14  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803AAA18  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AAA1C  FC 00 00 1E */	fctiwz f0, f0
/* 803AAA20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803AAA24  83 81 00 14 */	lwz r28, 0x14(r1)
lbl_803AAA28:
/* 803AAA28  A0 16 00 00 */	lhz r0, 0(r22)
/* 803AAA2C  28 00 00 00 */	cmplwi r0, 0
/* 803AAA30  40 82 00 44 */	bne lbl_803AAA74
/* 803AAA34  88 17 00 03 */	lbz r0, 3(r23)
/* 803AAA38  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803AAA3C  4B FE 99 C5 */	bl mCoBG_CheckWaveAttr
/* 803AAA40  2C 03 00 01 */	cmpwi r3, 1
/* 803AAA44  40 82 00 30 */	bne lbl_803AAA74
/* 803AAA48  2C 1C 00 00 */	cmpwi r28, 0
/* 803AAA4C  41 81 00 24 */	bgt lbl_803AAA70
/* 803AAA50  7F 43 D3 78 */	mr r3, r26
/* 803AAA54  4B FF FE A9 */	bl mFI_GetShell
/* 803AAA58  B0 76 00 00 */	sth r3, 0(r22)
/* 803AAA5C  3B 18 FF FF */	addi r24, r24, -1
/* 803AAA60  88 79 00 00 */	lbz r3, 0(r25)
/* 803AAA64  38 03 FF FF */	addi r0, r3, -1
/* 803AAA68  98 19 00 00 */	stb r0, 0(r25)
/* 803AAA6C  48 00 00 1C */	b lbl_803AAA88
lbl_803AAA70:
/* 803AAA70  3B 9C FF FF */	addi r28, r28, -1
lbl_803AAA74:
/* 803AAA74  3B 7B 00 01 */	addi r27, r27, 1
/* 803AAA78  3A F7 00 04 */	addi r23, r23, 4
/* 803AAA7C  2C 1B 01 00 */	cmpwi r27, 0x100
/* 803AAA80  3A D6 00 02 */	addi r22, r22, 2
/* 803AAA84  41 80 FF A4 */	blt lbl_803AAA28
lbl_803AAA88:
/* 803AAA88  2C 1B 01 00 */	cmpwi r27, 0x100
/* 803AAA8C  41 82 00 18 */	beq lbl_803AAAA4
lbl_803AAA90:
/* 803AAA90  2C 18 00 00 */	cmpwi r24, 0
/* 803AAA94  41 82 00 10 */	beq lbl_803AAAA4
/* 803AAA98  88 19 00 00 */	lbz r0, 0(r25)
/* 803AAA9C  28 00 00 00 */	cmplwi r0, 0
/* 803AAAA0  40 82 FF 54 */	bne lbl_803AA9F4
lbl_803AAAA4:
/* 803AAAA4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803AAAA8  39 61 00 40 */	addi r11, r1, 0x40
/* 803AAAAC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803AAAB0  4B CF 04 55 */	bl func_8009AF04
/* 803AAAB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803AAAB8  7C 08 03 A6 */	mtlr r0
/* 803AAABC  38 21 00 50 */	addi r1, r1, 0x50
/* 803AAAC0  4E 80 00 20 */	blr 
