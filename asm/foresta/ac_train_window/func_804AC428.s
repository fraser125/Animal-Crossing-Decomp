lbl_804AC428:
/* 804AC428  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AC42C  3C 60 80 69 */	lis r3, till_data@ha /* 0x8068F710@ha */
/* 804AC430  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804AC434  38 00 00 0F */	li r0, 0xf
/* 804AC438  3C 84 00 02 */	addis r4, r4, 2
/* 804AC43C  38 A3 F7 10 */	addi r5, r3, till_data@l /* 0x8068F710@l */
/* 804AC440  88 E4 61 25 */	lbz r7, 0x6125(r4)
/* 804AC444  38 60 00 00 */	li r3, 0
/* 804AC448  89 04 61 23 */	lbz r8, 0x6123(r4)
/* 804AC44C  38 80 00 00 */	li r4, 0
/* 804AC450  7C 09 03 A6 */	mtctr r0
lbl_804AC454:
/* 804AC454  7C C5 22 14 */	add r6, r5, r4
/* 804AC458  88 06 00 00 */	lbz r0, 0(r6)
/* 804AC45C  7C 07 00 40 */	cmplw r7, r0
/* 804AC460  4D 80 00 20 */	bltlr 
/* 804AC464  40 82 00 10 */	bne lbl_804AC474
/* 804AC468  88 06 00 01 */	lbz r0, 1(r6)
/* 804AC46C  7C 08 00 40 */	cmplw r8, r0
/* 804AC470  4C 81 00 20 */	blelr 
lbl_804AC474:
/* 804AC474  38 63 00 01 */	addi r3, r3, 1
/* 804AC478  38 84 00 02 */	addi r4, r4, 2
/* 804AC47C  42 00 FF D8 */	bdnz lbl_804AC454
/* 804AC480  38 60 00 00 */	li r3, 0
/* 804AC484  4E 80 00 20 */	blr 
