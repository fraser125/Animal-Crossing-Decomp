lbl_803DBF30:
/* 803DBF30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBF34  38 00 00 01 */	li r0, 1
/* 803DBF38  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803DBF3C  38 60 00 01 */	li r3, 1
/* 803DBF40  3C 84 00 03 */	addis r4, r4, 3
/* 803DBF44  98 04 85 BD */	stb r0, -0x7a43(r4)
/* 803DBF48  4E 80 00 20 */	blr 
