lbl_803E0FA8:
/* 803E0FA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E0FAC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E0FB0  3C 64 00 02 */	addis r3, r4, 2
/* 803E0FB4  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 803E0FB8  3C 64 00 03 */	addis r3, r4, 3
/* 803E0FBC  A8 63 85 2C */	lha r3, -0x7ad4(r3)
/* 803E0FC0  28 05 00 00 */	cmplwi r5, 0
/* 803E0FC4  41 82 00 2C */	beq lbl_803E0FF0
/* 803E0FC8  88 05 10 A2 */	lbz r0, 0x10a2(r5)
/* 803E0FCC  2C 00 00 04 */	cmpwi r0, 4
/* 803E0FD0  41 82 00 14 */	beq lbl_803E0FE4
/* 803E0FD4  40 80 00 1C */	bge lbl_803E0FF0
/* 803E0FD8  2C 00 00 03 */	cmpwi r0, 3
/* 803E0FDC  40 80 00 10 */	bge lbl_803E0FEC
/* 803E0FE0  48 00 00 10 */	b lbl_803E0FF0
lbl_803E0FE4:
/* 803E0FE4  38 63 00 64 */	addi r3, r3, 0x64
/* 803E0FE8  48 00 00 08 */	b lbl_803E0FF0
lbl_803E0FEC:
/* 803E0FEC  38 63 FF CE */	addi r3, r3, -50
lbl_803E0FF0:
/* 803E0FF0  7C 60 07 34 */	extsh r0, r3
/* 803E0FF4  2C 00 FF B0 */	cmpwi r0, -80
/* 803E0FF8  4C 80 00 20 */	bgelr 
/* 803E0FFC  38 60 FF B0 */	li r3, -80
/* 803E1000  4E 80 00 20 */	blr 
