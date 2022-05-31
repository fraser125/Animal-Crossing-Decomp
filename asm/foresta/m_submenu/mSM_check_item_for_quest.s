lbl_803EFE9C:
/* 803EFE9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EFEA0  54 60 08 3C */	slwi r0, r3, 1
/* 803EFEA4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EFEA8  38 60 00 00 */	li r3, 0
/* 803EFEAC  3C 84 00 02 */	addis r4, r4, 2
/* 803EFEB0  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803EFEB4  7C 84 02 14 */	add r4, r4, r0
/* 803EFEB8  A0 04 00 68 */	lhz r0, 0x68(r4)
/* 803EFEBC  28 00 00 00 */	cmplwi r0, 0
/* 803EFEC0  4D 82 00 20 */	beqlr 
/* 803EFEC4  28 00 25 23 */	cmplwi r0, 0x2523
/* 803EFEC8  41 80 00 0C */	blt lbl_803EFED4
/* 803EFECC  28 00 25 2F */	cmplwi r0, 0x252f
/* 803EFED0  4C 81 00 20 */	blelr 
lbl_803EFED4:
/* 803EFED4  28 00 25 30 */	cmplwi r0, 0x2530
/* 803EFED8  4D 82 00 20 */	beqlr 
/* 803EFEDC  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 803EFEE0  41 80 00 0C */	blt lbl_803EFEEC
/* 803EFEE4  28 00 2D 2C */	cmplwi r0, 0x2d2c
/* 803EFEE8  4C 81 00 20 */	blelr 
lbl_803EFEEC:
/* 803EFEEC  38 60 00 01 */	li r3, 1
/* 803EFEF0  4E 80 00 20 */	blr 
