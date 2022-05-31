lbl_803BDEB4:
/* 803BDEB4  3C 80 80 65 */	lis r4, data_806565C0@ha /* 0x806565C0@ha */
/* 803BDEB8  38 00 00 40 */	li r0, 0x40
/* 803BDEBC  38 84 65 C0 */	addi r4, r4, data_806565C0@l /* 0x806565C0@l */
/* 803BDEC0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803BDEC4  38 C0 00 FF */	li r6, 0xff
/* 803BDEC8  38 A0 00 00 */	li r5, 0
/* 803BDECC  7C 09 03 A6 */	mtctr r0
lbl_803BDED0:
/* 803BDED0  88 04 00 00 */	lbz r0, 0(r4)
/* 803BDED4  7C 03 00 40 */	cmplw r3, r0
/* 803BDED8  40 82 00 08 */	bne lbl_803BDEE0
/* 803BDEDC  7C A6 2B 78 */	mr r6, r5
lbl_803BDEE0:
/* 803BDEE0  38 A5 00 01 */	addi r5, r5, 1
/* 803BDEE4  38 84 00 01 */	addi r4, r4, 1
/* 803BDEE8  42 00 FF E8 */	bdnz lbl_803BDED0
/* 803BDEEC  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 803BDEF0  4E 80 00 20 */	blr 
