lbl_80578E04:
/* 80578E04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80578E08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80578E0C  3C 84 00 03 */	addis r4, r4, 3
/* 80578E10  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 80578E14  2C 00 00 01 */	cmpwi r0, 1
/* 80578E18  40 82 00 20 */	bne lbl_80578E38
/* 80578E1C  A0 03 00 06 */	lhz r0, 6(r3)
/* 80578E20  28 00 D0 0B */	cmplwi r0, 0xd00b
/* 80578E24  40 82 00 0C */	bne lbl_80578E30
/* 80578E28  38 60 00 10 */	li r3, 0x10
/* 80578E2C  4E 80 00 20 */	blr 
lbl_80578E30:
/* 80578E30  38 60 00 25 */	li r3, 0x25
/* 80578E34  4E 80 00 20 */	blr 
lbl_80578E38:
/* 80578E38  38 60 00 16 */	li r3, 0x16
/* 80578E3C  4E 80 00 20 */	blr 
