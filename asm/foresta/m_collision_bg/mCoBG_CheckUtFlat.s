lbl_803917F4:
/* 803917F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803917F8  7C 08 02 A6 */	mflr r0
/* 803917FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80391800  80 A3 00 00 */	lwz r5, 0(r3)
/* 80391804  80 83 00 04 */	lwz r4, 4(r3)
/* 80391808  80 03 00 08 */	lwz r0, 8(r3)
/* 8039180C  38 61 00 08 */	addi r3, r1, 8
/* 80391810  90 A1 00 08 */	stw r5, 8(r1)
/* 80391814  90 81 00 0C */	stw r4, 0xc(r1)
/* 80391818  90 01 00 10 */	stw r0, 0x10(r1)
/* 8039181C  48 01 4E F1 */	bl mFI_GetUnitCol
/* 80391820  88 83 00 00 */	lbz r4, 0(r3)
/* 80391824  A0 03 00 00 */	lhz r0, 0(r3)
/* 80391828  54 84 F6 FE */	rlwinm r4, r4, 0x1e, 0x1b, 0x1f
/* 8039182C  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 80391830  7C 04 00 00 */	cmpw r4, r0
/* 80391834  40 82 00 3C */	bne lbl_80391870
/* 80391838  88 03 00 01 */	lbz r0, 1(r3)
/* 8039183C  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 80391840  7C 04 00 40 */	cmplw r4, r0
/* 80391844  40 82 00 2C */	bne lbl_80391870
/* 80391848  88 03 00 02 */	lbz r0, 2(r3)
/* 8039184C  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 80391850  7C 04 00 40 */	cmplw r4, r0
/* 80391854  40 82 00 1C */	bne lbl_80391870
/* 80391858  A0 03 00 02 */	lhz r0, 2(r3)
/* 8039185C  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 80391860  7C 04 00 00 */	cmpw r4, r0
/* 80391864  40 82 00 0C */	bne lbl_80391870
/* 80391868  38 60 00 01 */	li r3, 1
/* 8039186C  48 00 00 08 */	b lbl_80391874
lbl_80391870:
/* 80391870  38 60 00 00 */	li r3, 0
lbl_80391874:
/* 80391874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80391878  7C 08 03 A6 */	mtlr r0
/* 8039187C  38 21 00 20 */	addi r1, r1, 0x20
/* 80391880  4E 80 00 20 */	blr 
