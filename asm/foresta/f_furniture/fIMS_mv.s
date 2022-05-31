lbl_8063E5B0:
/* 8063E5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E5B4  7C 08 02 A6 */	mflr r0
/* 8063E5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063E5C0  7C 7F 1B 78 */	mr r31, r3
/* 8063E5C4  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063E5C8  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E5CC  41 82 00 60 */	beq lbl_8063E62C
/* 8063E5D0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E5D4  41 82 00 58 */	beq lbl_8063E62C
/* 8063E5D8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E5DC  41 82 00 50 */	beq lbl_8063E62C
/* 8063E5E0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E5E4  41 82 00 48 */	beq lbl_8063E62C
/* 8063E5E8  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063E5EC  28 00 00 01 */	cmplwi r0, 1
/* 8063E5F0  40 82 00 14 */	bne lbl_8063E604
/* 8063E5F4  38 BF 00 08 */	addi r5, r31, 8
/* 8063E5F8  38 80 00 5F */	li r4, 0x5f
/* 8063E5FC  4B FE F9 49 */	bl sAdo_OngenPos
/* 8063E600  4B DA 01 85 */	bl mPlib_Set_change_color_request
lbl_8063E604:
/* 8063E604  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063E608  28 00 00 00 */	cmplwi r0, 0
/* 8063E60C  41 82 00 20 */	beq lbl_8063E62C
/* 8063E610  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063E614  28 00 00 01 */	cmplwi r0, 1
/* 8063E618  40 82 00 14 */	bne lbl_8063E62C
/* 8063E61C  38 60 04 C7 */	li r3, 0x4c7
/* 8063E620  4B E3 59 AD */	bl aMR_SameFurnitureSwitchOFF
/* 8063E624  38 00 00 01 */	li r0, 1
/* 8063E628  98 1F 01 2C */	stb r0, 0x12c(r31)
lbl_8063E62C:
/* 8063E62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063E634  7C 08 03 A6 */	mtlr r0
/* 8063E638  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E63C  4E 80 00 20 */	blr 
