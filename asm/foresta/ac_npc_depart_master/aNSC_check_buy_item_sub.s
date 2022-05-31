lbl_8054E164:
/* 8054E164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E168  7C 08 02 A6 */	mflr r0
/* 8054E16C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054E170  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 8054E174  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E178  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054E17C  3D 05 00 02 */	addis r8, r5, 2
/* 8054E180  38 00 00 0F */	li r0, 0xf
/* 8054E184  80 C8 61 3C */	lwz r6, 0x613c(r8)
/* 8054E188  39 40 00 00 */	li r10, 0
/* 8054E18C  38 A0 00 00 */	li r5, 0
/* 8054E190  39 26 00 68 */	addi r9, r6, 0x68
/* 8054E194  7C 09 03 A6 */	mtctr r0
lbl_8054E198:
/* 8054E198  A0 09 00 00 */	lhz r0, 0(r9)
/* 8054E19C  7C 00 38 40 */	cmplw r0, r7
/* 8054E1A0  40 82 00 2C */	bne lbl_8054E1CC
/* 8054E1A4  80 C8 61 3C */	lwz r6, 0x613c(r8)
/* 8054E1A8  80 06 00 88 */	lwz r0, 0x88(r6)
/* 8054E1AC  7C 06 2C 30 */	srw r6, r0, r5
/* 8054E1B0  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 8054E1B4  40 82 00 18 */	bne lbl_8054E1CC
/* 8054E1B8  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 8054E1BC  40 82 00 10 */	bne lbl_8054E1CC
/* 8054E1C0  80 C3 00 00 */	lwz r6, 0(r3)
/* 8054E1C4  38 06 00 01 */	addi r0, r6, 1
/* 8054E1C8  90 03 00 00 */	stw r0, 0(r3)
lbl_8054E1CC:
/* 8054E1CC  39 29 00 02 */	addi r9, r9, 2
/* 8054E1D0  38 A5 00 02 */	addi r5, r5, 2
/* 8054E1D4  42 00 FF C4 */	bdnz lbl_8054E198
/* 8054E1D8  80 03 00 00 */	lwz r0, 0(r3)
/* 8054E1DC  28 00 00 01 */	cmplwi r0, 1
/* 8054E1E0  40 81 00 14 */	ble lbl_8054E1F4
/* 8054E1E4  7C 83 23 78 */	mr r3, r4
/* 8054E1E8  7C 04 03 78 */	mr r4, r0
/* 8054E1EC  4B FF FC 31 */	bl aNSC_set_buy_sum_str
/* 8054E1F0  39 40 00 05 */	li r10, 5
lbl_8054E1F4:
/* 8054E1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E1F8  7D 43 53 78 */	mr r3, r10
/* 8054E1FC  7C 08 03 A6 */	mtlr r0
/* 8054E200  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E204  4E 80 00 20 */	blr 
