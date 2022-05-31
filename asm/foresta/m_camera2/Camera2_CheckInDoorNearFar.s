lbl_8037DAA8:
/* 8037DAA8  80 03 1B E0 */	lwz r0, 0x1be0(r3)
/* 8037DAAC  2C 00 00 00 */	cmpwi r0, 0
/* 8037DAB0  41 82 00 24 */	beq lbl_8037DAD4
/* 8037DAB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8037DAB8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8037DABC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8037DAC0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8037DAC4  40 82 00 18 */	bne lbl_8037DADC
/* 8037DAC8  80 03 1B E8 */	lwz r0, 0x1be8(r3)
/* 8037DACC  2C 00 00 03 */	cmpwi r0, 3
/* 8037DAD0  40 82 00 0C */	bne lbl_8037DADC
lbl_8037DAD4:
/* 8037DAD4  38 60 00 01 */	li r3, 1
/* 8037DAD8  4E 80 00 20 */	blr 
lbl_8037DADC:
/* 8037DADC  38 60 00 00 */	li r3, 0
/* 8037DAE0  4E 80 00 20 */	blr 
