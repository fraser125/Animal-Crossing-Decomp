lbl_80496BD4:
/* 80496BD4  2C 04 00 00 */	cmpwi r4, 0
/* 80496BD8  41 80 00 0C */	blt lbl_80496BE4
/* 80496BDC  2C 04 00 02 */	cmpwi r4, 2
/* 80496BE0  41 80 00 08 */	blt lbl_80496BE8
lbl_80496BE4:
/* 80496BE4  38 80 00 00 */	li r4, 0
lbl_80496BE8:
/* 80496BE8  3C A0 80 69 */	lis r5, data_8068BAE0@ha /* 0x8068BAE0@ha */
/* 80496BEC  54 80 10 3A */	slwi r0, r4, 2
/* 80496BF0  38 85 BA E0 */	addi r4, r5, data_8068BAE0@l /* 0x8068BAE0@l */
/* 80496BF4  7C 04 00 2E */	lwzx r0, r4, r0
/* 80496BF8  90 03 40 00 */	stw r0, 0x4000(r3)
/* 80496BFC  38 60 00 01 */	li r3, 1
/* 80496C00  4E 80 00 20 */	blr 
