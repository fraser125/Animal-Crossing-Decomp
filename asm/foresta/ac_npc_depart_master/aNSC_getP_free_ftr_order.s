lbl_8054D808:
/* 8054D808  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054D80C  38 00 00 05 */	li r0, 5
/* 8054D810  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054D814  3C 63 00 02 */	addis r3, r3, 2
/* 8054D818  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054D81C  38 63 10 A8 */	addi r3, r3, 0x10a8
/* 8054D820  7C 09 03 A6 */	mtctr r0
lbl_8054D824:
/* 8054D824  A0 03 00 00 */	lhz r0, 0(r3)
/* 8054D828  28 00 00 00 */	cmplwi r0, 0
/* 8054D82C  4D 82 00 20 */	beqlr 
/* 8054D830  38 63 00 04 */	addi r3, r3, 4
/* 8054D834  42 00 FF F0 */	bdnz lbl_8054D824
/* 8054D838  38 60 00 00 */	li r3, 0
/* 8054D83C  4E 80 00 20 */	blr 