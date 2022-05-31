lbl_8048E548:
/* 8048E548  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048E54C  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E550  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048E554  3C 84 00 02 */	addis r4, r4, 2
/* 8048E558  38 63 EB F0 */	addi r3, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E55C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048E560  80 03 00 08 */	lwz r0, 8(r3)
/* 8048E564  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 8048E568  7C 60 18 51 */	subf. r3, r0, r3
/* 8048E56C  40 80 00 08 */	bge lbl_8048E574
/* 8048E570  38 60 00 00 */	li r3, 0
lbl_8048E574:
/* 8048E574  90 64 00 8C */	stw r3, 0x8c(r4)
/* 8048E578  4E 80 00 20 */	blr 
