lbl_803D7488:
/* 803D7488  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D748C  38 00 00 10 */	li r0, 0x10
/* 803D7490  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D7494  3C 84 00 02 */	addis r4, r4, 2
/* 803D7498  7C 09 03 A6 */	mtctr r0
/* 803D749C  38 84 66 A8 */	addi r4, r4, 0x66a8
lbl_803D74A0:
/* 803D74A0  80 04 00 00 */	lwz r0, 0(r4)
/* 803D74A4  7C 00 18 40 */	cmplw r0, r3
/* 803D74A8  40 82 00 0C */	bne lbl_803D74B4
/* 803D74AC  7C 83 23 78 */	mr r3, r4
/* 803D74B0  4E 80 00 20 */	blr 
lbl_803D74B4:
/* 803D74B4  38 84 00 10 */	addi r4, r4, 0x10
/* 803D74B8  42 00 FF E8 */	bdnz lbl_803D74A0
/* 803D74BC  38 60 00 00 */	li r3, 0
/* 803D74C0  4E 80 00 20 */	blr 
