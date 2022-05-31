lbl_803E8C74:
/* 803E8C74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E8C78  38 00 00 27 */	li r0, 0x27
/* 803E8C7C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E8C80  3C A4 00 02 */	addis r5, r4, 2
/* 803E8C84  38 60 00 00 */	li r3, 0
/* 803E8C88  38 80 00 00 */	li r4, 0
/* 803E8C8C  7C 09 03 A6 */	mtctr r0
/* 803E8C90  38 A5 04 0E */	addi r5, r5, 0x40e
lbl_803E8C94:
/* 803E8C94  7C 05 22 2E */	lhzx r0, r5, r4
/* 803E8C98  28 00 00 00 */	cmplwi r0, 0
/* 803E8C9C  41 82 00 08 */	beq lbl_803E8CA4
/* 803E8CA0  38 63 00 01 */	addi r3, r3, 1
lbl_803E8CA4:
/* 803E8CA4  38 84 00 02 */	addi r4, r4, 2
/* 803E8CA8  42 00 FF EC */	bdnz lbl_803E8C94
/* 803E8CAC  4E 80 00 20 */	blr 
