lbl_803AB798:
/* 803AB798  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AB79C  38 00 00 05 */	li r0, 5
/* 803AB7A0  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803AB7A4  38 80 00 00 */	li r4, 0
/* 803AB7A8  7C 09 03 A6 */	mtctr r0
lbl_803AB7AC:
/* 803AB7AC  7C 65 22 14 */	add r3, r5, r4
/* 803AB7B0  3C 63 00 02 */	addis r3, r3, 2
/* 803AB7B4  80 03 3E 84 */	lwz r0, 0x3e84(r3)
/* 803AB7B8  38 63 3E 68 */	addi r3, r3, 0x3e68
/* 803AB7BC  2C 00 00 00 */	cmpwi r0, 0
/* 803AB7C0  4D 82 00 20 */	beqlr 
/* 803AB7C4  38 84 00 20 */	addi r4, r4, 0x20
/* 803AB7C8  42 00 FF E4 */	bdnz lbl_803AB7AC
/* 803AB7CC  38 60 00 00 */	li r3, 0
/* 803AB7D0  4E 80 00 20 */	blr 
