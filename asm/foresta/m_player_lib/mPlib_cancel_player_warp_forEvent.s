lbl_803DBF4C:
/* 803DBF4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBF50  38 00 00 00 */	li r0, 0
/* 803DBF54  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803DBF58  38 60 00 01 */	li r3, 1
/* 803DBF5C  3C 84 00 03 */	addis r4, r4, 3
/* 803DBF60  98 04 85 BD */	stb r0, -0x7a43(r4)
/* 803DBF64  4E 80 00 20 */	blr 
