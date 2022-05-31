lbl_803CEA68:
/* 803CEA68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CEA6C  38 00 00 05 */	li r0, 5
/* 803CEA70  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CEA74  38 60 00 00 */	li r3, 0
/* 803CEA78  3C 84 00 02 */	addis r4, r4, 2
/* 803CEA7C  7C 09 03 A6 */	mtctr r0
/* 803CEA80  38 84 68 38 */	addi r4, r4, 0x6838
lbl_803CEA84:
/* 803CEA84  88 04 00 09 */	lbz r0, 9(r4)
/* 803CEA88  28 00 00 00 */	cmplwi r0, 0
/* 803CEA8C  4D 82 00 20 */	beqlr 
/* 803CEA90  38 84 00 0C */	addi r4, r4, 0xc
/* 803CEA94  38 63 00 01 */	addi r3, r3, 1
/* 803CEA98  42 00 FF EC */	bdnz lbl_803CEA84
/* 803CEA9C  38 60 FF FF */	li r3, -1
/* 803CEAA0  4E 80 00 20 */	blr 
