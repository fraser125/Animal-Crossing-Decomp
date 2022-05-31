lbl_803EFE1C:
/* 803EFE1C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EFE20  54 65 08 3C */	slwi r5, r3, 1
/* 803EFE24  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EFE28  38 60 00 00 */	li r3, 0
/* 803EFE2C  3C 84 00 02 */	addis r4, r4, 2
/* 803EFE30  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 803EFE34  7C 86 2A 14 */	add r4, r6, r5
/* 803EFE38  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 803EFE3C  28 04 00 00 */	cmplwi r4, 0
/* 803EFE40  54 87 C7 3E */	rlwinm r7, r4, 0x18, 0x1c, 0x1f
/* 803EFE44  4D 82 00 20 */	beqlr 
/* 803EFE48  80 06 00 88 */	lwz r0, 0x88(r6)
/* 803EFE4C  7C 00 2C 30 */	srw r0, r0, r5
/* 803EFE50  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803EFE54  4C 82 00 20 */	bnelr 
/* 803EFE58  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803EFE5C  2C 00 00 02 */	cmpwi r0, 2
/* 803EFE60  4C 82 00 20 */	bnelr 
/* 803EFE64  2C 07 00 03 */	cmpwi r7, 3
/* 803EFE68  4D 82 00 20 */	beqlr 
/* 803EFE6C  2C 07 00 0F */	cmpwi r7, 0xf
/* 803EFE70  4D 82 00 20 */	beqlr 
/* 803EFE74  2C 07 00 0D */	cmpwi r7, 0xd
/* 803EFE78  4D 82 00 20 */	beqlr 
/* 803EFE7C  28 04 25 30 */	cmplwi r4, 0x2530
/* 803EFE80  4D 82 00 20 */	beqlr 
/* 803EFE84  28 04 25 23 */	cmplwi r4, 0x2523
/* 803EFE88  41 80 00 0C */	blt lbl_803EFE94
/* 803EFE8C  28 04 25 2F */	cmplwi r4, 0x252f
/* 803EFE90  4C 81 00 20 */	blelr 
lbl_803EFE94:
/* 803EFE94  38 60 00 01 */	li r3, 1
/* 803EFE98  4E 80 00 20 */	blr 
