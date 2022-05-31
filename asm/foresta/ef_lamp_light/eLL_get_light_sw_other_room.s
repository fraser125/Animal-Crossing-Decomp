lbl_804CEC14:
/* 804CEC14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CEC18  38 60 00 00 */	li r3, 0
/* 804CEC1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CEC20  3C 84 00 02 */	addis r4, r4, 2
/* 804CEC24  80 A4 61 1C */	lwz r5, 0x611c(r4)
/* 804CEC28  2C 05 54 60 */	cmpwi r5, 0x5460
/* 804CEC2C  41 80 00 14 */	blt lbl_804CEC40
/* 804CEC30  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 804CEC34  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 804CEC38  7C 05 00 00 */	cmpw r5, r0
/* 804CEC3C  4D 80 00 20 */	bltlr 
lbl_804CEC40:
/* 804CEC40  38 60 00 01 */	li r3, 1
/* 804CEC44  4E 80 00 20 */	blr 
