lbl_8063E3A4:
/* 8063E3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E3A8  7C 08 02 A6 */	mflr r0
/* 8063E3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E3B0  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063E3B4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E3B8  41 82 00 34 */	beq lbl_8063E3EC
/* 8063E3BC  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E3C0  41 82 00 2C */	beq lbl_8063E3EC
/* 8063E3C4  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E3C8  41 82 00 24 */	beq lbl_8063E3EC
/* 8063E3CC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E3D0  41 82 00 1C */	beq lbl_8063E3EC
/* 8063E3D4  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8063E3D8  28 00 00 01 */	cmplwi r0, 1
/* 8063E3DC  40 82 00 10 */	bne lbl_8063E3EC
/* 8063E3E0  38 83 00 08 */	addi r4, r3, 8
/* 8063E3E4  38 60 01 7F */	li r3, 0x17f
/* 8063E3E8  4B FE FB C1 */	bl sAdo_OngenTrgStart
lbl_8063E3EC:
/* 8063E3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E3F0  7C 08 03 A6 */	mtlr r0
/* 8063E3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E3F8  4E 80 00 20 */	blr 
