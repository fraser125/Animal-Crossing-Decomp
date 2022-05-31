lbl_803BC068:
/* 803BC068  28 03 00 00 */	cmplwi r3, 0
/* 803BC06C  4D 82 00 20 */	beqlr 
/* 803BC070  3C A0 81 17 */	lis r5, light_list_buf@ha /* 0x81169C50@ha */
/* 803BC074  38 80 00 0C */	li r4, 0xc
/* 803BC078  38 E5 9C 50 */	addi r7, r5, light_list_buf@l /* 0x81169C50@l */
/* 803BC07C  38 A0 00 00 */	li r5, 0
/* 803BC080  38 07 00 08 */	addi r0, r7, 8
/* 803BC084  80 C7 00 00 */	lwz r6, 0(r7)
/* 803BC088  7C 00 18 50 */	subf r0, r0, r3
/* 803BC08C  7C 00 23 D6 */	divw r0, r0, r4
/* 803BC090  38 C6 FF FF */	addi r6, r6, -1
/* 803BC094  90 C7 00 00 */	stw r6, 0(r7)
/* 803BC098  90 A3 00 00 */	stw r5, 0(r3)
/* 803BC09C  7C 00 23 D6 */	divw r0, r0, r4
/* 803BC0A0  90 07 00 04 */	stw r0, 4(r7)
/* 803BC0A4  4E 80 00 20 */	blr 
