lbl_803D80A8:
/* 803D80A8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803D80AC  38 00 00 05 */	li r0, 5
/* 803D80B0  39 00 00 00 */	li r8, 0
/* 803D80B4  39 20 00 00 */	li r9, 0
/* 803D80B8  38 E6 85 38 */	addi r7, r6, common_data@l /* 0x81138538@l */
/* 803D80BC  7C 09 03 A6 */	mtctr r0
lbl_803D80C0:
/* 803D80C0  80 05 00 10 */	lwz r0, 0x10(r5)
/* 803D80C4  2C 00 FF FF */	cmpwi r0, -1
/* 803D80C8  41 82 00 2C */	beq lbl_803D80F4
/* 803D80CC  1C 00 09 88 */	mulli r0, r0, 0x988
/* 803D80D0  7C C7 02 14 */	add r6, r7, r0
/* 803D80D4  3C C6 00 01 */	addis r6, r6, 1
/* 803D80D8  88 06 7C D1 */	lbz r0, 0x7cd1(r6)
/* 803D80DC  38 C6 7C D0 */	addi r6, r6, 0x7cd0
/* 803D80E0  7C 00 18 00 */	cmpw r0, r3
/* 803D80E4  40 82 00 10 */	bne lbl_803D80F4
/* 803D80E8  88 06 00 02 */	lbz r0, 2(r6)
/* 803D80EC  7C 00 20 00 */	cmpw r0, r4
/* 803D80F0  41 82 00 10 */	beq lbl_803D8100
lbl_803D80F4:
/* 803D80F4  38 A5 00 1C */	addi r5, r5, 0x1c
/* 803D80F8  39 29 00 01 */	addi r9, r9, 1
/* 803D80FC  42 00 FF C4 */	bdnz lbl_803D80C0
lbl_803D8100:
/* 803D8100  2C 09 00 05 */	cmpwi r9, 5
/* 803D8104  40 82 00 08 */	bne lbl_803D810C
/* 803D8108  39 00 00 01 */	li r8, 1
lbl_803D810C:
/* 803D810C  7D 03 43 78 */	mr r3, r8
/* 803D8110  4E 80 00 20 */	blr 
