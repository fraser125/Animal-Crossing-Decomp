lbl_80530C14:
/* 80530C14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80530C18  80 A3 01 7C */	lwz r5, 0x17c(r3)
/* 80530C1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80530C20  38 00 00 0F */	li r0, 0xf
/* 80530C24  3C 84 00 01 */	addis r4, r4, 1
/* 80530C28  38 60 FF FF */	li r3, -1
/* 80530C2C  38 C0 00 00 */	li r6, 0
/* 80530C30  7C 09 03 A6 */	mtctr r0
/* 80530C34  38 84 74 38 */	addi r4, r4, 0x7438
lbl_80530C38:
/* 80530C38  7C 04 28 40 */	cmplw r4, r5
/* 80530C3C  40 82 00 0C */	bne lbl_80530C48
/* 80530C40  7C C3 33 78 */	mr r3, r6
/* 80530C44  4E 80 00 20 */	blr 
lbl_80530C48:
/* 80530C48  38 84 09 88 */	addi r4, r4, 0x988
/* 80530C4C  38 C6 00 01 */	addi r6, r6, 1
/* 80530C50  42 00 FF E8 */	bdnz lbl_80530C38
/* 80530C54  4E 80 00 20 */	blr 
