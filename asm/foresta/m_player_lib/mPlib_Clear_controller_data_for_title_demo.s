lbl_803DDDA0:
/* 803DDDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDDA4  7C 08 02 A6 */	mflr r0
/* 803DDDA8  3C 60 81 17 */	lis r3, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDDAC  38 80 00 40 */	li r4, 0x40
/* 803DDDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDDB4  38 63 EE 38 */	addi r3, r3, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDDB8  4B C7 F2 B1 */	bl bzero
/* 803DDDBC  3C 60 81 17 */	lis r3, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDDC0  38 00 20 00 */	li r0, 0x2000
/* 803DDDC4  38 63 EE 38 */	addi r3, r3, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDDC8  B0 03 00 3C */	sth r0, 0x3c(r3)
/* 803DDDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDDD0  7C 08 03 A6 */	mtlr r0
/* 803DDDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDDD8  4E 80 00 20 */	blr 
