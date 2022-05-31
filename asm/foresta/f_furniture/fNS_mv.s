lbl_80640E7C:
/* 80640E7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80640E80  7C 08 02 A6 */	mflr r0
/* 80640E84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80640E88  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80640E8C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80640E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80640E94  7C 7F 1B 78 */	mr r31, r3
/* 80640E98  A8 83 08 2A */	lha r4, 0x82a(r3)
/* 80640E9C  2C 04 00 01 */	cmpwi r4, 1
/* 80640EA0  40 82 00 10 */	bne lbl_80640EB0
/* 80640EA4  3C 60 80 65 */	lis r3, lit_922@ha /* 0x8064D2BC@ha */
/* 80640EA8  C3 E3 D2 BC */	lfs f31, lit_922@l(r3)  /* 0x8064D2BC@l */
/* 80640EAC  48 00 00 0C */	b lbl_80640EB8
lbl_80640EB0:
/* 80640EB0  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80640EB4  C3 E3 D2 78 */	lfs f31, lit_368@l(r3)  /* 0x8064D278@l */
lbl_80640EB8:
/* 80640EB8  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 80640EBC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80640EC0  41 82 00 34 */	beq lbl_80640EF4
/* 80640EC4  2C 00 00 0E */	cmpwi r0, 0xe
/* 80640EC8  41 82 00 2C */	beq lbl_80640EF4
/* 80640ECC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80640ED0  41 82 00 24 */	beq lbl_80640EF4
/* 80640ED4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80640ED8  41 82 00 1C */	beq lbl_80640EF4
/* 80640EDC  2C 04 00 01 */	cmpwi r4, 1
/* 80640EE0  40 82 00 14 */	bne lbl_80640EF4
/* 80640EE4  7F E3 FB 78 */	mr r3, r31
/* 80640EE8  38 BF 00 08 */	addi r5, r31, 8
/* 80640EEC  38 80 00 5B */	li r4, 0x5b
/* 80640EF0  4B FE D0 55 */	bl sAdo_OngenPos
lbl_80640EF4:
/* 80640EF4  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 80640EF8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80640EFC  40 81 00 28 */	ble lbl_80640F24
/* 80640F00  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064D29C@ha */
/* 80640F04  C0 03 D2 9C */	lfs f0, lit_695@l(r3)  /* 0x8064D29C@l */
/* 80640F08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80640F0C  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 80640F10  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 80640F14  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80640F18  40 80 00 78 */	bge lbl_80640F90
/* 80640F1C  D3 FF 08 34 */	stfs f31, 0x834(r31)
/* 80640F20  48 00 00 70 */	b lbl_80640F90
lbl_80640F24:
/* 80640F24  40 80 00 28 */	bge lbl_80640F4C
/* 80640F28  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064D29C@ha */
/* 80640F2C  C0 03 D2 9C */	lfs f0, lit_695@l(r3)  /* 0x8064D29C@l */
/* 80640F30  EC 01 00 2A */	fadds f0, f1, f0
/* 80640F34  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 80640F38  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 80640F3C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80640F40  40 81 00 50 */	ble lbl_80640F90
/* 80640F44  D3 FF 08 34 */	stfs f31, 0x834(r31)
/* 80640F48  48 00 00 48 */	b lbl_80640F90
lbl_80640F4C:
/* 80640F4C  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 80640F50  28 00 00 00 */	cmplwi r0, 0
/* 80640F54  41 82 00 3C */	beq lbl_80640F90
/* 80640F58  A8 7F 08 2A */	lha r3, 0x82a(r31)
/* 80640F5C  38 03 00 01 */	addi r0, r3, 1
/* 80640F60  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80640F64  B0 1F 08 2A */	sth r0, 0x82a(r31)
/* 80640F68  A8 1F 08 2A */	lha r0, 0x82a(r31)
/* 80640F6C  2C 00 00 01 */	cmpwi r0, 1
/* 80640F70  40 82 00 14 */	bne lbl_80640F84
/* 80640F74  38 9F 00 08 */	addi r4, r31, 8
/* 80640F78  38 60 00 16 */	li r3, 0x16
/* 80640F7C  4B FE D0 2D */	bl sAdo_OngenTrgStart
/* 80640F80  48 00 00 10 */	b lbl_80640F90
lbl_80640F84:
/* 80640F84  38 9F 00 08 */	addi r4, r31, 8
/* 80640F88  38 60 00 17 */	li r3, 0x17
/* 80640F8C  4B FE D0 1D */	bl sAdo_OngenTrgStart
lbl_80640F90:
/* 80640F90  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80640F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80640F98  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80640F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80640FA0  7C 08 03 A6 */	mtlr r0
/* 80640FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80640FA8  4E 80 00 20 */	blr 
