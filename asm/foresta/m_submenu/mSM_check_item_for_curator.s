lbl_803F02C8:
/* 803F02C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F02CC  54 65 08 3C */	slwi r5, r3, 1
/* 803F02D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F02D4  38 60 00 00 */	li r3, 0
/* 803F02D8  3C 84 00 02 */	addis r4, r4, 2
/* 803F02DC  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 803F02E0  7C 86 2A 14 */	add r4, r6, r5
/* 803F02E4  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 803F02E8  28 04 00 00 */	cmplwi r4, 0
/* 803F02EC  4D 82 00 20 */	beqlr 
/* 803F02F0  80 06 00 88 */	lwz r0, 0x88(r6)
/* 803F02F4  7C 00 2C 30 */	srw r0, r0, r5
/* 803F02F8  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803F02FC  4C 82 00 20 */	bnelr 
/* 803F0300  28 04 25 30 */	cmplwi r4, 0x2530
/* 803F0304  4D 82 00 20 */	beqlr 
/* 803F0308  28 04 25 23 */	cmplwi r4, 0x2523
/* 803F030C  41 80 00 0C */	blt lbl_803F0318
/* 803F0310  28 04 25 2F */	cmplwi r4, 0x252f
/* 803F0314  4C 81 00 20 */	blelr 
lbl_803F0318:
/* 803F0318  38 60 00 01 */	li r3, 1
/* 803F031C  4E 80 00 20 */	blr 
