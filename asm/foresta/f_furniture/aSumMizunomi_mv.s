lbl_80639BCC:
/* 80639BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639BD0  7C 08 02 A6 */	mflr r0
/* 80639BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639BD8  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80639BDC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80639BE0  41 82 00 3C */	beq lbl_80639C1C
/* 80639BE4  2C 00 00 0E */	cmpwi r0, 0xe
/* 80639BE8  41 82 00 34 */	beq lbl_80639C1C
/* 80639BEC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80639BF0  41 82 00 2C */	beq lbl_80639C1C
/* 80639BF4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80639BF8  41 82 00 24 */	beq lbl_80639C1C
/* 80639BFC  3C 80 80 65 */	lis r4, lit_4938@ha /* 0x8064D398@ha */
/* 80639C00  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 80639C04  C0 24 D3 98 */	lfs f1, lit_4938@l(r4)  /* 0x8064D398@l */
/* 80639C08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80639C0C  40 82 00 10 */	bne lbl_80639C1C
/* 80639C10  38 83 00 08 */	addi r4, r3, 8
/* 80639C14  38 60 01 2A */	li r3, 0x12a
/* 80639C18  4B FF 43 91 */	bl sAdo_OngenTrgStart
lbl_80639C1C:
/* 80639C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639C20  7C 08 03 A6 */	mtlr r0
/* 80639C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80639C28  4E 80 00 20 */	blr 
