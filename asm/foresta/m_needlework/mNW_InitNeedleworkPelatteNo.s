lbl_803C9AA4:
/* 803C9AA4  3C 80 80 66 */	lis r4, pal_table@ha /* 0x8065AAC8@ha */
/* 803C9AA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C9AAC  38 C4 AA C8 */	addi r6, r4, pal_table@l /* 0x8065AAC8@l */
/* 803C9AB0  38 00 00 08 */	li r0, 8
/* 803C9AB4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803C9AB8  38 E0 00 00 */	li r7, 0
/* 803C9ABC  7C 09 03 A6 */	mtctr r0
lbl_803C9AC0:
/* 803C9AC0  54 E0 07 7E */	clrlwi r0, r7, 0x1d
/* 803C9AC4  88 A6 00 00 */	lbz r5, 0(r6)
/* 803C9AC8  1C 00 02 20 */	mulli r0, r0, 0x220
/* 803C9ACC  38 E7 00 01 */	addi r7, r7, 1
/* 803C9AD0  38 C6 00 01 */	addi r6, r6, 1
/* 803C9AD4  7C 64 02 14 */	add r3, r4, r0
/* 803C9AD8  3C 63 00 02 */	addis r3, r3, 2
/* 803C9ADC  98 A3 14 10 */	stb r5, 0x1410(r3)
/* 803C9AE0  42 00 FF E0 */	bdnz lbl_803C9AC0
/* 803C9AE4  4E 80 00 20 */	blr 
