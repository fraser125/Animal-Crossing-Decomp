lbl_80513850:
/* 80513850  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80513854  7C 08 02 A6 */	mflr r0
/* 80513858  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051385C  39 61 00 40 */	addi r11, r1, 0x40
/* 80513860  4B B8 76 65 */	bl func_8009AEC4
/* 80513864  7C 79 1B 78 */	mr r25, r3
/* 80513868  7C 9A 23 78 */	mr r26, r4
/* 8051386C  7C BB 2B 78 */	mr r27, r5
/* 80513870  7C DD 33 78 */	mr r29, r6
/* 80513874  7C FC 3B 78 */	mr r28, r7
/* 80513878  4B B4 94 7D */	bl fqrand
/* 8051387C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80513880  3C 00 43 30 */	lis r0, 0x4330
/* 80513884  90 81 00 0C */	stw r4, 0xc(r1)
/* 80513888  3C 60 80 65 */	lis r3, lit_1154@ha /* 0x80648FB4@ha */
/* 8051388C  C8 43 8F B4 */	lfd f2, lit_1154@l(r3)  /* 0x80648FB4@l */
/* 80513890  3B C0 00 00 */	li r30, 0
/* 80513894  90 01 00 08 */	stw r0, 8(r1)
/* 80513898  C8 01 00 08 */	lfd f0, 8(r1)
/* 8051389C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805138A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805138A4  FC 00 00 1E */	fctiwz f0, f0
/* 805138A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805138AC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 805138B0  48 00 00 E0 */	b lbl_80513990
lbl_805138B4:
/* 805138B4  3B A0 00 00 */	li r29, 0
lbl_805138B8:
/* 805138B8  A0 1C 00 00 */	lhz r0, 0(r28)
/* 805138BC  7C 00 EE 30 */	sraw r0, r0, r29
/* 805138C0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805138C4  2C 00 00 01 */	cmpwi r0, 1
/* 805138C8  41 82 00 AC */	beq lbl_80513974
/* 805138CC  A0 1A 00 00 */	lhz r0, 0(r26)
/* 805138D0  28 00 00 00 */	cmplwi r0, 0
/* 805138D4  40 82 00 A0 */	bne lbl_80513974
/* 805138D8  88 1B 00 03 */	lbz r0, 3(r27)
/* 805138DC  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 805138E0  4B E7 CB 39 */	bl mCoBG_CheckHole_OrgAttr
/* 805138E4  2C 03 00 00 */	cmpwi r3, 0
/* 805138E8  41 82 00 8C */	beq lbl_80513974
/* 805138EC  88 7B 00 00 */	lbz r3, 0(r27)
/* 805138F0  A0 1B 00 00 */	lhz r0, 0(r27)
/* 805138F4  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 805138F8  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 805138FC  7C 03 00 00 */	cmpw r3, r0
/* 80513900  40 82 00 74 */	bne lbl_80513974
/* 80513904  88 1B 00 01 */	lbz r0, 1(r27)
/* 80513908  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 8051390C  7C 03 00 40 */	cmplw r3, r0
/* 80513910  40 82 00 64 */	bne lbl_80513974
/* 80513914  88 1B 00 02 */	lbz r0, 2(r27)
/* 80513918  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 8051391C  7C 03 00 40 */	cmplw r3, r0
/* 80513920  40 82 00 54 */	bne lbl_80513974
/* 80513924  A0 1B 00 02 */	lhz r0, 2(r27)
/* 80513928  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 8051392C  7C 03 00 00 */	cmpw r3, r0
/* 80513930  40 82 00 44 */	bne lbl_80513974
/* 80513934  7F 63 DB 78 */	mr r3, r27
/* 80513938  4B E7 CB FD */	bl mCoBG_CheckSandHole_ClData
/* 8051393C  2C 03 00 01 */	cmpwi r3, 1
/* 80513940  41 82 00 34 */	beq lbl_80513974
/* 80513944  2C 1F 00 00 */	cmpwi r31, 0
/* 80513948  40 82 00 28 */	bne lbl_80513970
/* 8051394C  9B B9 00 02 */	stb r29, 2(r25)
/* 80513950  38 00 00 01 */	li r0, 1
/* 80513954  7C 00 E8 30 */	slw r0, r0, r29
/* 80513958  9B D9 00 03 */	stb r30, 3(r25)
/* 8051395C  3B C0 00 10 */	li r30, 0x10
/* 80513960  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80513964  7C 60 03 78 */	or r0, r3, r0
/* 80513968  B0 1C 00 00 */	sth r0, 0(r28)
/* 8051396C  48 00 00 1C */	b lbl_80513988
lbl_80513970:
/* 80513970  3B FF FF FF */	addi r31, r31, -1
lbl_80513974:
/* 80513974  3B BD 00 01 */	addi r29, r29, 1
/* 80513978  3B 7B 00 04 */	addi r27, r27, 4
/* 8051397C  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80513980  3B 5A 00 02 */	addi r26, r26, 2
/* 80513984  41 80 FF 34 */	blt lbl_805138B8
lbl_80513988:
/* 80513988  3B 9C 00 02 */	addi r28, r28, 2
/* 8051398C  3B DE 00 01 */	addi r30, r30, 1
lbl_80513990:
/* 80513990  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80513994  41 80 FF 20 */	blt lbl_805138B4
/* 80513998  39 61 00 40 */	addi r11, r1, 0x40
/* 8051399C  4B B8 75 75 */	bl func_8009AF10
/* 805139A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805139A4  7C 08 03 A6 */	mtlr r0
/* 805139A8  38 21 00 40 */	addi r1, r1, 0x40
/* 805139AC  4E 80 00 20 */	blr 
