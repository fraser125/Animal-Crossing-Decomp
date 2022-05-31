lbl_80631EA4:
/* 80631EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631EA8  7C 08 02 A6 */	mflr r0
/* 80631EAC  3C 80 80 65 */	lis r4, lit_1690@ha /* 0x8064D324@ha */
/* 80631EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631EB4  C0 24 D3 24 */	lfs f1, lit_1690@l(r4)  /* 0x8064D324@l */
/* 80631EB8  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 80631EBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80631EC0  40 82 00 34 */	bne lbl_80631EF4
/* 80631EC4  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80631EC8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80631ECC  41 82 00 28 */	beq lbl_80631EF4
/* 80631ED0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80631ED4  41 82 00 20 */	beq lbl_80631EF4
/* 80631ED8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80631EDC  41 82 00 18 */	beq lbl_80631EF4
/* 80631EE0  2C 00 00 0C */	cmpwi r0, 0xc
/* 80631EE4  41 82 00 10 */	beq lbl_80631EF4
/* 80631EE8  38 83 00 08 */	addi r4, r3, 8
/* 80631EEC  38 60 00 18 */	li r3, 0x18
/* 80631EF0  4B FF C0 B9 */	bl sAdo_OngenTrgStart
lbl_80631EF4:
/* 80631EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631EF8  7C 08 03 A6 */	mtlr r0
/* 80631EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80631F00  4E 80 00 20 */	blr 
