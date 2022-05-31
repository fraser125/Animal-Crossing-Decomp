lbl_80640C24:
/* 80640C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80640C28  7C 08 02 A6 */	mflr r0
/* 80640C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80640C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80640C34  7C 7F 1B 78 */	mr r31, r3
/* 80640C38  4B E3 31 4D */	bl aMR_GetContactInfoLayer1
/* 80640C3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80640C40  3C A0 80 65 */	lis r5, lit_368@ha /* 0x8064D278@ha */
/* 80640C44  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80640C48  C0 25 D2 78 */	lfs f1, lit_368@l(r5)  /* 0x8064D278@l */
/* 80640C4C  3C 84 00 03 */	addis r4, r4, 3
/* 80640C50  88 04 85 91 */	lbz r0, -0x7a6f(r4)
/* 80640C54  7C 00 07 74 */	extsb r0, r0
/* 80640C58  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80640C5C  41 82 00 0C */	beq lbl_80640C68
/* 80640C60  2C 00 00 30 */	cmpwi r0, 0x30
/* 80640C64  40 82 00 38 */	bne lbl_80640C9C
lbl_80640C68:
/* 80640C68  28 03 00 00 */	cmplwi r3, 0
/* 80640C6C  41 82 00 30 */	beq lbl_80640C9C
/* 80640C70  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 80640C74  2C 00 00 05 */	cmpwi r0, 5
/* 80640C78  40 80 00 24 */	bge lbl_80640C9C
/* 80640C7C  2C 00 00 01 */	cmpwi r0, 1
/* 80640C80  40 80 00 08 */	bge lbl_80640C88
/* 80640C84  48 00 00 18 */	b lbl_80640C9C
lbl_80640C88:
/* 80640C88  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80640C8C  2C 00 00 00 */	cmpwi r0, 0
/* 80640C90  40 82 00 0C */	bne lbl_80640C9C
/* 80640C94  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80640C98  C0 23 D2 74 */	lfs f1, data_8064D274@l(r3)  /* 0x8064D274@l */
lbl_80640C9C:
/* 80640C9C  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 80640CA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640CA4  41 82 00 24 */	beq lbl_80640CC8
/* 80640CA8  3C A0 80 65 */	lis r5, lit_7854@ha /* 0x8064D3F8@ha */
/* 80640CAC  3C 80 80 65 */	lis r4, lit_369@ha /* 0x8064D27C@ha */
/* 80640CB0  3C 60 80 65 */	lis r3, lit_7855@ha /* 0x8064D3FC@ha */
/* 80640CB4  C0 45 D3 F8 */	lfs f2, lit_7854@l(r5)  /* 0x8064D3F8@l */
/* 80640CB8  C0 83 D3 FC */	lfs f4, lit_7855@l(r3)  /* 0x8064D3FC@l */
/* 80640CBC  38 7F 08 34 */	addi r3, r31, 0x834
/* 80640CC0  C0 64 D2 7C */	lfs f3, lit_369@l(r4)  /* 0x8064D27C@l */
/* 80640CC4  4B D7 A4 ED */	bl add_calc
lbl_80640CC8:
/* 80640CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80640CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80640CD0  7C 08 03 A6 */	mtlr r0
/* 80640CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80640CD8  4E 80 00 20 */	blr 
