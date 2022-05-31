lbl_803E9F7C:
/* 803E9F7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9F80  38 00 00 27 */	li r0, 0x27
/* 803E9F84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9F88  3C 83 00 02 */	addis r4, r3, 2
/* 803E9F8C  38 60 00 00 */	li r3, 0
/* 803E9F90  38 84 04 0E */	addi r4, r4, 0x40e
/* 803E9F94  7C 09 03 A6 */	mtctr r0
lbl_803E9F98:
/* 803E9F98  B0 64 00 00 */	sth r3, 0(r4)
/* 803E9F9C  38 84 00 02 */	addi r4, r4, 2
/* 803E9FA0  42 00 FF F8 */	bdnz lbl_803E9F98
/* 803E9FA4  4E 80 00 20 */	blr 
