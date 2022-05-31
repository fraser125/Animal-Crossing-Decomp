lbl_803DE818:
/* 803DE818  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE81C  38 00 00 14 */	li r0, 0x14
/* 803DE820  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803DE824  38 60 00 00 */	li r3, 0
/* 803DE828  3C 84 00 02 */	addis r4, r4, 2
/* 803DE82C  7C 09 03 A6 */	mtctr r0
/* 803DE830  38 84 0E D0 */	addi r4, r4, 0xed0
lbl_803DE834:
/* 803DE834  A0 04 00 00 */	lhz r0, 0(r4)
/* 803DE838  28 00 00 00 */	cmplwi r0, 0
/* 803DE83C  41 82 00 08 */	beq lbl_803DE844
/* 803DE840  38 63 00 01 */	addi r3, r3, 1
lbl_803DE844:
/* 803DE844  38 84 00 02 */	addi r4, r4, 2
/* 803DE848  42 00 FF EC */	bdnz lbl_803DE834
/* 803DE84C  4E 80 00 20 */	blr 
