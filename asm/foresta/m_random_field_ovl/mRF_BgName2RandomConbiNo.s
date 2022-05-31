lbl_8050A0FC:
/* 8050A0FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050A100  7C 08 02 A6 */	mflr r0
/* 8050A104  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050A108  39 61 00 20 */	addi r11, r1, 0x20
/* 8050A10C  4B B9 0D C5 */	bl func_8009AED0
/* 8050A110  7C BE 2B 79 */	or. r30, r5, r5
/* 8050A114  7C 9D 23 78 */	mr r29, r4
/* 8050A118  7C 7C 1B 78 */	mr r28, r3
/* 8050A11C  38 80 00 00 */	li r4, 0
/* 8050A120  7F A5 EB 78 */	mr r5, r29
/* 8050A124  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8050A128  7F C9 03 A6 */	mtctr r30
/* 8050A12C  40 81 00 28 */	ble lbl_8050A154
lbl_8050A130:
/* 8050A130  A0 05 00 00 */	lhz r0, 0(r5)
/* 8050A134  7C 00 18 40 */	cmplw r0, r3
/* 8050A138  40 82 00 14 */	bne lbl_8050A14C
/* 8050A13C  88 05 00 04 */	lbz r0, 4(r5)
/* 8050A140  28 00 00 FF */	cmplwi r0, 0xff
/* 8050A144  41 82 00 08 */	beq lbl_8050A14C
/* 8050A148  38 84 00 01 */	addi r4, r4, 1
lbl_8050A14C:
/* 8050A14C  38 A5 00 06 */	addi r5, r5, 6
/* 8050A150  42 00 FF E0 */	bdnz lbl_8050A130
lbl_8050A154:
/* 8050A154  2C 04 00 00 */	cmpwi r4, 0
/* 8050A158  41 82 00 60 */	beq lbl_8050A1B8
/* 8050A15C  3B E0 00 00 */	li r31, 0
/* 8050A160  38 60 00 00 */	li r3, 0
/* 8050A164  4B FF EC 7D */	bl mRF_GetRandom
/* 8050A168  7F A5 EB 78 */	mr r5, r29
/* 8050A16C  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 8050A170  38 C0 00 00 */	li r6, 0
/* 8050A174  7F C9 03 A6 */	mtctr r30
/* 8050A178  2C 1E 00 00 */	cmpwi r30, 0
/* 8050A17C  40 81 00 3C */	ble lbl_8050A1B8
lbl_8050A180:
/* 8050A180  A0 05 00 00 */	lhz r0, 0(r5)
/* 8050A184  7C 00 20 40 */	cmplw r0, r4
/* 8050A188  40 82 00 24 */	bne lbl_8050A1AC
/* 8050A18C  88 05 00 04 */	lbz r0, 4(r5)
/* 8050A190  28 00 00 FF */	cmplwi r0, 0xff
/* 8050A194  41 82 00 18 */	beq lbl_8050A1AC
/* 8050A198  7C 03 F8 00 */	cmpw r3, r31
/* 8050A19C  40 82 00 0C */	bne lbl_8050A1A8
/* 8050A1A0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8050A1A4  48 00 00 18 */	b lbl_8050A1BC
lbl_8050A1A8:
/* 8050A1A8  3B FF 00 01 */	addi r31, r31, 1
lbl_8050A1AC:
/* 8050A1AC  38 A5 00 06 */	addi r5, r5, 6
/* 8050A1B0  38 C6 00 01 */	addi r6, r6, 1
/* 8050A1B4  42 00 FF CC */	bdnz lbl_8050A180
lbl_8050A1B8:
/* 8050A1B8  57 C3 04 3E */	clrlwi r3, r30, 0x10
lbl_8050A1BC:
/* 8050A1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050A1C0  4B B9 0D 5D */	bl func_8009AF1C
/* 8050A1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050A1C8  7C 08 03 A6 */	mtlr r0
/* 8050A1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8050A1D0  4E 80 00 20 */	blr 
