lbl_803EFEF4:
/* 803EFEF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EFEF8  54 65 08 3C */	slwi r5, r3, 1
/* 803EFEFC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EFF00  38 60 00 00 */	li r3, 0
/* 803EFF04  3C 84 00 02 */	addis r4, r4, 2
/* 803EFF08  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 803EFF0C  7C 86 2A 14 */	add r4, r6, r5
/* 803EFF10  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 803EFF14  28 04 00 00 */	cmplwi r4, 0
/* 803EFF18  4D 82 00 20 */	beqlr 
/* 803EFF1C  80 06 00 88 */	lwz r0, 0x88(r6)
/* 803EFF20  7C 00 2C 30 */	srw r0, r0, r5
/* 803EFF24  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803EFF28  4C 82 00 20 */	bnelr 
/* 803EFF2C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803EFF30  2C 00 00 02 */	cmpwi r0, 2
/* 803EFF34  40 82 00 10 */	bne lbl_803EFF44
/* 803EFF38  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803EFF3C  2C 00 00 01 */	cmpwi r0, 1
/* 803EFF40  4D 82 00 20 */	beqlr 
lbl_803EFF44:
/* 803EFF44  28 04 25 23 */	cmplwi r4, 0x2523
/* 803EFF48  41 80 00 0C */	blt lbl_803EFF54
/* 803EFF4C  28 04 25 2F */	cmplwi r4, 0x252f
/* 803EFF50  4C 81 00 20 */	blelr 
lbl_803EFF54:
/* 803EFF54  28 04 25 30 */	cmplwi r4, 0x2530
/* 803EFF58  4D 82 00 20 */	beqlr 
/* 803EFF5C  28 04 2D 28 */	cmplwi r4, 0x2d28
/* 803EFF60  41 80 00 0C */	blt lbl_803EFF6C
/* 803EFF64  28 04 2D 2C */	cmplwi r4, 0x2d2c
/* 803EFF68  4C 81 00 20 */	blelr 
lbl_803EFF6C:
/* 803EFF6C  38 60 00 01 */	li r3, 1
/* 803EFF70  4E 80 00 20 */	blr 
