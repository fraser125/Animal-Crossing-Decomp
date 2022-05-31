lbl_8063E08C:
/* 8063E08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E090  7C 08 02 A6 */	mflr r0
/* 8063E094  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E098  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063E09C  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E0A0  41 82 00 34 */	beq lbl_8063E0D4
/* 8063E0A4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E0A8  41 82 00 2C */	beq lbl_8063E0D4
/* 8063E0AC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E0B0  41 82 00 24 */	beq lbl_8063E0D4
/* 8063E0B4  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E0B8  41 82 00 1C */	beq lbl_8063E0D4
/* 8063E0BC  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8063E0C0  28 00 00 01 */	cmplwi r0, 1
/* 8063E0C4  40 82 00 10 */	bne lbl_8063E0D4
/* 8063E0C8  38 83 00 08 */	addi r4, r3, 8
/* 8063E0CC  38 60 04 4E */	li r3, 0x44e
/* 8063E0D0  4B FE FE D9 */	bl sAdo_OngenTrgStart
lbl_8063E0D4:
/* 8063E0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E0D8  7C 08 03 A6 */	mtlr r0
/* 8063E0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E0E0  4E 80 00 20 */	blr 
