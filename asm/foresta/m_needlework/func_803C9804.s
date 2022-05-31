lbl_803C9804:
/* 803C9804  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803C9808  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C980C  1C C0 24 40 */	mulli r6, r0, 0x2440
/* 803C9810  3C 60 80 66 */	lis r3, data_8065AAC0@ha /* 0x8065AAC0@ha */
/* 803C9814  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C9818  38 00 00 08 */	li r0, 8
/* 803C981C  38 A3 AA C0 */	addi r5, r3, data_8065AAC0@l /* 0x8065AAC0@l */
/* 803C9820  38 E0 00 00 */	li r7, 0
/* 803C9824  7C C4 32 14 */	add r6, r4, r6
/* 803C9828  7C 09 03 A6 */	mtctr r0
lbl_803C982C:
/* 803C982C  54 E0 07 7E */	clrlwi r0, r7, 0x1d
/* 803C9830  88 85 00 00 */	lbz r4, 0(r5)
/* 803C9834  1C 60 02 20 */	mulli r3, r0, 0x220
/* 803C9838  38 E7 00 01 */	addi r7, r7, 1
/* 803C983C  38 A5 00 01 */	addi r5, r5, 1
/* 803C9840  38 03 12 70 */	addi r0, r3, 0x1270
/* 803C9844  7C 86 01 AE */	stbx r4, r6, r0
/* 803C9848  42 00 FF E4 */	bdnz lbl_803C982C
/* 803C984C  4E 80 00 20 */	blr 
