lbl_805BCD48:
/* 805BCD48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BCD4C  38 00 00 09 */	li r0, 9
/* 805BCD50  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BCD54  3C 84 00 02 */	addis r4, r4, 2
/* 805BCD58  38 60 00 00 */	li r3, 0
/* 805BCD5C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BCD60  38 A4 00 14 */	addi r5, r4, 0x14
/* 805BCD64  38 84 00 38 */	addi r4, r4, 0x38
/* 805BCD68  7C 09 03 A6 */	mtctr r0
lbl_805BCD6C:
/* 805BCD6C  80 05 00 00 */	lwz r0, 0(r5)
/* 805BCD70  28 00 00 00 */	cmplwi r0, 0
/* 805BCD74  41 82 00 20 */	beq lbl_805BCD94
/* 805BCD78  80 04 00 00 */	lwz r0, 0(r4)
/* 805BCD7C  2C 00 00 00 */	cmpwi r0, 0
/* 805BCD80  40 82 00 14 */	bne lbl_805BCD94
/* 805BCD84  38 00 00 01 */	li r0, 1
/* 805BCD88  90 04 00 00 */	stw r0, 0(r4)
/* 805BCD8C  80 65 00 00 */	lwz r3, 0(r5)
/* 805BCD90  4E 80 00 20 */	blr 
lbl_805BCD94:
/* 805BCD94  38 A5 00 04 */	addi r5, r5, 4
/* 805BCD98  38 84 00 04 */	addi r4, r4, 4
/* 805BCD9C  42 00 FF D0 */	bdnz lbl_805BCD6C
/* 805BCDA0  4E 80 00 20 */	blr 
