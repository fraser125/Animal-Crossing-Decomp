lbl_8055B144:
/* 8055B144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B148  7C 08 02 A6 */	mflr r0
/* 8055B14C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055B150  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 8055B154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B158  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055B15C  3D 05 00 02 */	addis r8, r5, 2
/* 8055B160  38 00 00 0F */	li r0, 0xf
/* 8055B164  80 C8 61 3C */	lwz r6, 0x613c(r8)
/* 8055B168  39 40 00 00 */	li r10, 0
/* 8055B16C  38 A0 00 00 */	li r5, 0
/* 8055B170  39 26 00 68 */	addi r9, r6, 0x68
/* 8055B174  7C 09 03 A6 */	mtctr r0
lbl_8055B178:
/* 8055B178  A0 09 00 00 */	lhz r0, 0(r9)
/* 8055B17C  7C 00 38 40 */	cmplw r0, r7
/* 8055B180  40 82 00 2C */	bne lbl_8055B1AC
/* 8055B184  80 C8 61 3C */	lwz r6, 0x613c(r8)
/* 8055B188  80 06 00 88 */	lwz r0, 0x88(r6)
/* 8055B18C  7C 06 2C 30 */	srw r6, r0, r5
/* 8055B190  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 8055B194  40 82 00 18 */	bne lbl_8055B1AC
/* 8055B198  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 8055B19C  40 82 00 10 */	bne lbl_8055B1AC
/* 8055B1A0  80 C3 00 00 */	lwz r6, 0(r3)
/* 8055B1A4  38 06 00 01 */	addi r0, r6, 1
/* 8055B1A8  90 03 00 00 */	stw r0, 0(r3)
lbl_8055B1AC:
/* 8055B1AC  39 29 00 02 */	addi r9, r9, 2
/* 8055B1B0  38 A5 00 02 */	addi r5, r5, 2
/* 8055B1B4  42 00 FF C4 */	bdnz lbl_8055B178
/* 8055B1B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8055B1BC  28 00 00 01 */	cmplwi r0, 1
/* 8055B1C0  40 81 00 14 */	ble lbl_8055B1D4
/* 8055B1C4  7C 83 23 78 */	mr r3, r4
/* 8055B1C8  7C 04 03 78 */	mr r4, r0
/* 8055B1CC  4B FF FB B9 */	bl aNSC_set_buy_sum_str
/* 8055B1D0  39 40 00 05 */	li r10, 5
lbl_8055B1D4:
/* 8055B1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B1D8  7D 43 53 78 */	mr r3, r10
/* 8055B1DC  7C 08 03 A6 */	mtlr r0
/* 8055B1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B1E4  4E 80 00 20 */	blr 
