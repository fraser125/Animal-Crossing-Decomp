lbl_804CFB1C:
/* 804CFB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CFB20  7C 08 02 A6 */	mflr r0
/* 804CFB24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CFB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CFB2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CFB30  7C 7F 1B 78 */	mr r31, r3
/* 804CFB34  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804CFB38  3C 63 00 02 */	addis r3, r3, 2
/* 804CFB3C  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CFB40  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CFB44  41 80 00 2C */	blt lbl_804CFB70
/* 804CFB48  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804CFB4C  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804CFB50  7C 04 00 00 */	cmpw r4, r0
/* 804CFB54  40 80 00 1C */	bge lbl_804CFB70
/* 804CFB58  7C 84 00 50 */	subf r4, r4, r0
/* 804CFB5C  38 60 00 00 */	li r3, 0
/* 804CFB60  4B FF FD 09 */	bl calc_scale_Ef_Room_Sunshine_Police
/* 804CFB64  FC 00 08 50 */	fneg f0, f1
/* 804CFB68  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804CFB6C  48 00 00 3C */	b lbl_804CFBA8
lbl_804CFB70:
/* 804CFB70  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804CFB74  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804CFB78  7C 04 00 00 */	cmpw r4, r0
/* 804CFB7C  41 80 00 20 */	blt lbl_804CFB9C
/* 804CFB80  38 03 51 80 */	addi r0, r3, 0x5180
/* 804CFB84  38 60 00 01 */	li r3, 1
/* 804CFB88  7C 84 00 50 */	subf r4, r4, r0
/* 804CFB8C  4B FF FC DD */	bl calc_scale_Ef_Room_Sunshine_Police
/* 804CFB90  FC 00 08 50 */	fneg f0, f1
/* 804CFB94  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804CFB98  48 00 00 10 */	b lbl_804CFBA8
lbl_804CFB9C:
/* 804CFB9C  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CFBA0  C0 03 63 38 */	lfs f0, lit_391@l(r3)  /* 0x80646338@l */
/* 804CFBA4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804CFBA8:
/* 804CFBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CFBAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CFBB0  7C 08 03 A6 */	mtlr r0
/* 804CFBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CFBB8  4E 80 00 20 */	blr 
