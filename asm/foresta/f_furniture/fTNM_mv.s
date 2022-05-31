lbl_8063F8B4:
/* 8063F8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F8B8  7C 08 02 A6 */	mflr r0
/* 8063F8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F8C0  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063F8C4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063F8C8  41 82 00 34 */	beq lbl_8063F8FC
/* 8063F8CC  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063F8D0  41 82 00 2C */	beq lbl_8063F8FC
/* 8063F8D4  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063F8D8  41 82 00 24 */	beq lbl_8063F8FC
/* 8063F8DC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063F8E0  41 82 00 1C */	beq lbl_8063F8FC
/* 8063F8E4  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8063F8E8  28 00 00 01 */	cmplwi r0, 1
/* 8063F8EC  40 82 00 10 */	bne lbl_8063F8FC
/* 8063F8F0  38 83 00 08 */	addi r4, r3, 8
/* 8063F8F4  38 60 04 6A */	li r3, 0x46a
/* 8063F8F8  4B FE E6 B1 */	bl sAdo_OngenTrgStart
lbl_8063F8FC:
/* 8063F8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F900  7C 08 03 A6 */	mtlr r0
/* 8063F904  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F908  4E 80 00 20 */	blr 
