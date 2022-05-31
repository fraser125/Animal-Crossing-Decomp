lbl_803EFF74:
/* 803EFF74  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EFF78  54 65 08 3C */	slwi r5, r3, 1
/* 803EFF7C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EFF80  38 60 00 00 */	li r3, 0
/* 803EFF84  3C 84 00 02 */	addis r4, r4, 2
/* 803EFF88  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 803EFF8C  7C 86 2A 14 */	add r4, r6, r5
/* 803EFF90  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 803EFF94  28 04 00 00 */	cmplwi r4, 0
/* 803EFF98  4D 82 00 20 */	beqlr 
/* 803EFF9C  80 06 00 88 */	lwz r0, 0x88(r6)
/* 803EFFA0  7C 00 2C 30 */	srw r0, r0, r5
/* 803EFFA4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803EFFA8  4C 82 00 20 */	bnelr 
/* 803EFFAC  28 04 25 23 */	cmplwi r4, 0x2523
/* 803EFFB0  41 80 00 0C */	blt lbl_803EFFBC
/* 803EFFB4  28 04 25 2F */	cmplwi r4, 0x252f
/* 803EFFB8  4C 81 00 20 */	blelr 
lbl_803EFFBC:
/* 803EFFBC  28 04 25 30 */	cmplwi r4, 0x2530
/* 803EFFC0  4D 82 00 20 */	beqlr 
/* 803EFFC4  28 04 2D 28 */	cmplwi r4, 0x2d28
/* 803EFFC8  41 80 00 0C */	blt lbl_803EFFD4
/* 803EFFCC  28 04 2D 2C */	cmplwi r4, 0x2d2c
/* 803EFFD0  4C 81 00 20 */	blelr 
lbl_803EFFD4:
/* 803EFFD4  38 60 00 01 */	li r3, 1
/* 803EFFD8  4E 80 00 20 */	blr 
