lbl_80470BD8:
/* 80470BD8  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470BDC  84 05 DF E8 */	lwzu r0, data_811CDFE8@l(r5)  /* 0x811CDFE8@l */
/* 80470BE0  39 00 00 00 */	li r8, 0
/* 80470BE4  39 20 00 00 */	li r9, 0
/* 80470BE8  28 00 00 00 */	cmplwi r0, 0
/* 80470BEC  80 C5 00 04 */	lwz r6, 4(r5)
/* 80470BF0  7C 07 03 78 */	mr r7, r0
/* 80470BF4  41 82 00 98 */	beq lbl_80470C8C
/* 80470BF8  28 06 00 00 */	cmplwi r6, 0
/* 80470BFC  41 82 00 90 */	beq lbl_80470C8C
/* 80470C00  80 05 00 08 */	lwz r0, 8(r5)
/* 80470C04  7C 09 03 A6 */	mtctr r0
/* 80470C08  2C 00 00 00 */	cmpwi r0, 0
/* 80470C0C  40 81 00 78 */	ble lbl_80470C84
lbl_80470C10:
/* 80470C10  88 06 00 00 */	lbz r0, 0(r6)
/* 80470C14  28 00 00 01 */	cmplwi r0, 1
/* 80470C18  40 82 00 5C */	bne lbl_80470C74
/* 80470C1C  80 03 00 04 */	lwz r0, 4(r3)
/* 80470C20  7C 09 00 00 */	cmpw r9, r0
/* 80470C24  41 82 00 50 */	beq lbl_80470C74
/* 80470C28  A0 A7 00 00 */	lhz r5, 0(r7)
/* 80470C2C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80470C30  7C 05 00 40 */	cmplw r5, r0
/* 80470C34  40 82 00 40 */	bne lbl_80470C74
/* 80470C38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80470C3C  40 82 00 0C */	bne lbl_80470C48
/* 80470C40  39 08 00 01 */	addi r8, r8, 1
/* 80470C44  48 00 00 30 */	b lbl_80470C74
lbl_80470C48:
/* 80470C48  28 00 00 01 */	cmplwi r0, 1
/* 80470C4C  40 82 00 18 */	bne lbl_80470C64
/* 80470C50  88 07 01 2C */	lbz r0, 0x12c(r7)
/* 80470C54  28 00 00 00 */	cmplwi r0, 0
/* 80470C58  41 82 00 1C */	beq lbl_80470C74
/* 80470C5C  39 08 00 01 */	addi r8, r8, 1
/* 80470C60  48 00 00 14 */	b lbl_80470C74
lbl_80470C64:
/* 80470C64  88 07 01 2C */	lbz r0, 0x12c(r7)
/* 80470C68  28 00 00 00 */	cmplwi r0, 0
/* 80470C6C  40 82 00 08 */	bne lbl_80470C74
/* 80470C70  39 08 00 01 */	addi r8, r8, 1
lbl_80470C74:
/* 80470C74  38 E7 08 58 */	addi r7, r7, 0x858
/* 80470C78  38 C6 00 01 */	addi r6, r6, 1
/* 80470C7C  39 29 00 01 */	addi r9, r9, 1
/* 80470C80  42 00 FF 90 */	bdnz lbl_80470C10
lbl_80470C84:
/* 80470C84  7D 03 43 78 */	mr r3, r8
/* 80470C88  4E 80 00 20 */	blr 
lbl_80470C8C:
/* 80470C8C  38 60 00 00 */	li r3, 0
/* 80470C90  4E 80 00 20 */	blr 
