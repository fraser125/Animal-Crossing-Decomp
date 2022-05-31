lbl_80472BDC:
/* 80472BDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80472BE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80472BE4  3C 63 00 02 */	addis r3, r3, 2
/* 80472BE8  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 80472BEC  28 00 00 01 */	cmplwi r0, 1
/* 80472BF0  41 82 00 10 */	beq lbl_80472C00
/* 80472BF4  80 04 05 A0 */	lwz r0, 0x5a0(r4)
/* 80472BF8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80472BFC  40 82 00 0C */	bne lbl_80472C08
lbl_80472C00:
/* 80472C00  38 60 00 01 */	li r3, 1
/* 80472C04  4E 80 00 20 */	blr 
lbl_80472C08:
/* 80472C08  38 60 00 00 */	li r3, 0
/* 80472C0C  4E 80 00 20 */	blr 
