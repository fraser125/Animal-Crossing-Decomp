lbl_8063E264:
/* 8063E264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E268  7C 08 02 A6 */	mflr r0
/* 8063E26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E270  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063E274  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E278  41 82 00 34 */	beq lbl_8063E2AC
/* 8063E27C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E280  41 82 00 2C */	beq lbl_8063E2AC
/* 8063E284  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E288  41 82 00 24 */	beq lbl_8063E2AC
/* 8063E28C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E290  41 82 00 1C */	beq lbl_8063E2AC
/* 8063E294  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8063E298  28 00 00 01 */	cmplwi r0, 1
/* 8063E29C  40 82 00 10 */	bne lbl_8063E2AC
/* 8063E2A0  38 83 00 08 */	addi r4, r3, 8
/* 8063E2A4  38 60 01 78 */	li r3, 0x178
/* 8063E2A8  4B FE FD 01 */	bl sAdo_OngenTrgStart
lbl_8063E2AC:
/* 8063E2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E2B0  7C 08 03 A6 */	mtlr r0
/* 8063E2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E2B8  4E 80 00 20 */	blr 
