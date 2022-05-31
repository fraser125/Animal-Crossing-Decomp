lbl_803F012C:
/* 803F012C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F0130  54 65 08 3C */	slwi r5, r3, 1
/* 803F0134  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F0138  38 60 00 00 */	li r3, 0
/* 803F013C  3C 84 00 02 */	addis r4, r4, 2
/* 803F0140  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 803F0144  7C 86 2A 14 */	add r4, r6, r5
/* 803F0148  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 803F014C  28 04 00 00 */	cmplwi r4, 0
/* 803F0150  41 82 00 54 */	beq lbl_803F01A4
/* 803F0154  80 06 00 88 */	lwz r0, 0x88(r6)
/* 803F0158  7C 00 2C 30 */	srw r0, r0, r5
/* 803F015C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803F0160  4C 82 00 20 */	bnelr 
/* 803F0164  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803F0168  2C 00 00 02 */	cmpwi r0, 2
/* 803F016C  40 82 00 10 */	bne lbl_803F017C
/* 803F0170  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803F0174  2C 00 00 01 */	cmpwi r0, 1
/* 803F0178  4D 82 00 20 */	beqlr 
lbl_803F017C:
/* 803F017C  28 04 25 23 */	cmplwi r4, 0x2523
/* 803F0180  41 80 00 0C */	blt lbl_803F018C
/* 803F0184  28 04 25 2F */	cmplwi r4, 0x252f
/* 803F0188  4C 81 00 20 */	blelr 
lbl_803F018C:
/* 803F018C  28 04 25 30 */	cmplwi r4, 0x2530
/* 803F0190  4D 82 00 20 */	beqlr 
/* 803F0194  28 04 2D 28 */	cmplwi r4, 0x2d28
/* 803F0198  41 80 00 0C */	blt lbl_803F01A4
/* 803F019C  28 04 2D 2C */	cmplwi r4, 0x2d2c
/* 803F01A0  4C 81 00 20 */	blelr 
lbl_803F01A4:
/* 803F01A4  38 60 00 01 */	li r3, 1
/* 803F01A8  4E 80 00 20 */	blr 
