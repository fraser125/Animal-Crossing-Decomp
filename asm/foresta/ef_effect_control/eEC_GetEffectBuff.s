lbl_804CDC18:
/* 804CDC18  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CDC1C  38 84 08 40 */	addi r4, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CDC20  80 C4 01 D0 */	lwz r6, 0x1d0(r4)
/* 804CDC24  38 E4 24 34 */	addi r7, r4, 0x2434
/* 804CDC28  20 06 00 64 */	subfic r0, r6, 0x64
/* 804CDC2C  7C C5 33 78 */	mr r5, r6
/* 804CDC30  7C 87 32 14 */	add r4, r7, r6
/* 804CDC34  7C 09 03 A6 */	mtctr r0
/* 804CDC38  2C 06 00 64 */	cmpwi r6, 0x64
/* 804CDC3C  40 80 00 24 */	bge lbl_804CDC60
lbl_804CDC40:
/* 804CDC40  88 04 00 00 */	lbz r0, 0(r4)
/* 804CDC44  28 00 00 00 */	cmplwi r0, 0
/* 804CDC48  40 82 00 0C */	bne lbl_804CDC54
/* 804CDC4C  7C A3 2B 78 */	mr r3, r5
/* 804CDC50  4E 80 00 20 */	blr 
lbl_804CDC54:
/* 804CDC54  38 A5 00 01 */	addi r5, r5, 1
/* 804CDC58  38 84 00 01 */	addi r4, r4, 1
/* 804CDC5C  42 00 FF E4 */	bdnz lbl_804CDC40
lbl_804CDC60:
/* 804CDC60  34 06 FF FF */	addic. r0, r6, -1
/* 804CDC64  7C E4 3B 78 */	mr r4, r7
/* 804CDC68  38 A0 00 00 */	li r5, 0
/* 804CDC6C  7C 09 03 A6 */	mtctr r0
/* 804CDC70  40 81 00 24 */	ble lbl_804CDC94
lbl_804CDC74:
/* 804CDC74  88 04 00 00 */	lbz r0, 0(r4)
/* 804CDC78  28 00 00 00 */	cmplwi r0, 0
/* 804CDC7C  40 82 00 0C */	bne lbl_804CDC88
/* 804CDC80  7C A3 2B 78 */	mr r3, r5
/* 804CDC84  4E 80 00 20 */	blr 
lbl_804CDC88:
/* 804CDC88  38 A5 00 01 */	addi r5, r5, 1
/* 804CDC8C  38 84 00 01 */	addi r4, r4, 1
/* 804CDC90  42 00 FF E4 */	bdnz lbl_804CDC74
lbl_804CDC94:
/* 804CDC94  20 06 00 64 */	subfic r0, r6, 0x64
/* 804CDC98  7C C5 33 78 */	mr r5, r6
/* 804CDC9C  7C 87 32 14 */	add r4, r7, r6
/* 804CDCA0  7C 09 03 A6 */	mtctr r0
/* 804CDCA4  2C 06 00 64 */	cmpwi r6, 0x64
/* 804CDCA8  40 80 00 24 */	bge lbl_804CDCCC
lbl_804CDCAC:
/* 804CDCAC  88 04 00 00 */	lbz r0, 0(r4)
/* 804CDCB0  7C 00 18 00 */	cmpw r0, r3
/* 804CDCB4  40 80 00 0C */	bge lbl_804CDCC0
/* 804CDCB8  7C A3 2B 78 */	mr r3, r5
/* 804CDCBC  4E 80 00 20 */	blr 
lbl_804CDCC0:
/* 804CDCC0  38 A5 00 01 */	addi r5, r5, 1
/* 804CDCC4  38 84 00 01 */	addi r4, r4, 1
/* 804CDCC8  42 00 FF E4 */	bdnz lbl_804CDCAC
lbl_804CDCCC:
/* 804CDCCC  34 06 FF FF */	addic. r0, r6, -1
/* 804CDCD0  7C E4 3B 78 */	mr r4, r7
/* 804CDCD4  38 60 00 00 */	li r3, 0
/* 804CDCD8  7C 09 03 A6 */	mtctr r0
/* 804CDCDC  40 81 00 1C */	ble lbl_804CDCF8
lbl_804CDCE0:
/* 804CDCE0  88 04 00 00 */	lbz r0, 0(r4)
/* 804CDCE4  28 00 00 02 */	cmplwi r0, 2
/* 804CDCE8  4C 82 00 20 */	bnelr 
/* 804CDCEC  38 63 00 01 */	addi r3, r3, 1
/* 804CDCF0  38 84 00 01 */	addi r4, r4, 1
/* 804CDCF4  42 00 FF EC */	bdnz lbl_804CDCE0
lbl_804CDCF8:
/* 804CDCF8  38 60 FF FF */	li r3, -1
/* 804CDCFC  4E 80 00 20 */	blr 
