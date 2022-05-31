lbl_803CEC20:
/* 803CEC20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CEC24  38 00 00 03 */	li r0, 3
/* 803CEC28  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CEC2C  38 60 00 00 */	li r3, 0
/* 803CEC30  3C 84 00 02 */	addis r4, r4, 2
/* 803CEC34  7C 09 03 A6 */	mtctr r0
/* 803CEC38  38 84 68 78 */	addi r4, r4, 0x6878
lbl_803CEC3C:
/* 803CEC3C  88 04 00 07 */	lbz r0, 7(r4)
/* 803CEC40  28 00 00 00 */	cmplwi r0, 0
/* 803CEC44  4D 82 00 20 */	beqlr 
/* 803CEC48  38 84 09 90 */	addi r4, r4, 0x990
/* 803CEC4C  38 63 00 01 */	addi r3, r3, 1
/* 803CEC50  42 00 FF EC */	bdnz lbl_803CEC3C
/* 803CEC54  38 60 FF FF */	li r3, -1
/* 803CEC58  4E 80 00 20 */	blr 
