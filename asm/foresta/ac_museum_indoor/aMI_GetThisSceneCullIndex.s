lbl_8045A1A8:
/* 8045A1A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8045A1AC  3C 60 80 68 */	lis r3, aMI_museum_indoor_cull_info@ha /* 0x8068632C@ha */
/* 8045A1B0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8045A1B4  38 00 00 02 */	li r0, 2
/* 8045A1B8  38 A3 63 2C */	addi r5, r3, aMI_museum_indoor_cull_info@l /* 0x8068632C@l */
/* 8045A1BC  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8045A1C0  38 60 00 00 */	li r3, 0
/* 8045A1C4  38 80 00 00 */	li r4, 0
/* 8045A1C8  7C 09 03 A6 */	mtctr r0
lbl_8045A1CC:
/* 8045A1CC  7C 05 20 2E */	lwzx r0, r5, r4
/* 8045A1D0  7C 06 00 00 */	cmpw r6, r0
/* 8045A1D4  4D 82 00 20 */	beqlr 
/* 8045A1D8  38 63 00 01 */	addi r3, r3, 1
/* 8045A1DC  38 84 00 0C */	addi r4, r4, 0xc
/* 8045A1E0  42 00 FF EC */	bdnz lbl_8045A1CC
/* 8045A1E4  38 60 FF FF */	li r3, -1
/* 8045A1E8  4E 80 00 20 */	blr 
