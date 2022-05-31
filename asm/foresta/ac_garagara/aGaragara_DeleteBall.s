lbl_80424BBC:
/* 80424BBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80424BC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80424BC4  3C 63 00 02 */	addis r3, r3, 2
/* 80424BC8  80 63 60 CC */	lwz r3, 0x60cc(r3)
/* 80424BCC  28 03 00 00 */	cmplwi r3, 0
/* 80424BD0  41 82 00 18 */	beq lbl_80424BE8
/* 80424BD4  80 83 00 00 */	lwz r4, 0(r3)
/* 80424BD8  38 00 00 00 */	li r0, 0
/* 80424BDC  38 60 00 01 */	li r3, 1
/* 80424BE0  B0 04 03 CC */	sth r0, 0x3cc(r4)
/* 80424BE4  4E 80 00 20 */	blr 
lbl_80424BE8:
/* 80424BE8  38 60 00 00 */	li r3, 0
/* 80424BEC  4E 80 00 20 */	blr 
