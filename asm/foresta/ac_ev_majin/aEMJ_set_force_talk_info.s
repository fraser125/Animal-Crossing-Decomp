lbl_80592F14:
/* 80592F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592F18  7C 08 02 A6 */	mflr r0
/* 80592F1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80592F20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80592F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592F28  3C 63 00 02 */	addis r3, r3, 2
/* 80592F2C  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 80592F30  2C 00 00 01 */	cmpwi r0, 1
/* 80592F34  41 82 00 68 */	beq lbl_80592F9C
/* 80592F38  40 80 00 10 */	bge lbl_80592F48
/* 80592F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80592F40  40 80 00 14 */	bge lbl_80592F54
/* 80592F44  48 00 00 58 */	b lbl_80592F9C
lbl_80592F48:
/* 80592F48  2C 00 00 03 */	cmpwi r0, 3
/* 80592F4C  40 80 00 50 */	bge lbl_80592F9C
/* 80592F50  48 00 00 28 */	b lbl_80592F78
lbl_80592F54:
/* 80592F54  4B AC 9D A1 */	bl fqrand
/* 80592F58  3C 60 80 65 */	lis r3, lit_543@ha /* 0x80649CB0@ha */
/* 80592F5C  C0 03 9C B0 */	lfs f0, lit_543@l(r3)  /* 0x80649CB0@l */
/* 80592F60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80592F64  FC 00 00 1E */	fctiwz f0, f0
/* 80592F68  D8 01 00 08 */	stfd f0, 8(r1)
/* 80592F6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80592F70  38 63 3D AF */	addi r3, r3, 0x3daf
/* 80592F74  48 00 00 2C */	b lbl_80592FA0
lbl_80592F78:
/* 80592F78  4B AC 9D 7D */	bl fqrand
/* 80592F7C  3C 60 80 65 */	lis r3, lit_543@ha /* 0x80649CB0@ha */
/* 80592F80  C0 03 9C B0 */	lfs f0, lit_543@l(r3)  /* 0x80649CB0@l */
/* 80592F84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80592F88  FC 00 00 1E */	fctiwz f0, f0
/* 80592F8C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80592F90  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80592F94  38 63 3D B2 */	addi r3, r3, 0x3db2
/* 80592F98  48 00 00 08 */	b lbl_80592FA0
lbl_80592F9C:
/* 80592F9C  38 60 3D AF */	li r3, 0x3daf
lbl_80592FA0:
/* 80592FA0  4B E0 55 75 */	bl mDemo_Set_msg_num
/* 80592FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592FA8  7C 08 03 A6 */	mtlr r0
/* 80592FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80592FB0  4E 80 00 20 */	blr 
