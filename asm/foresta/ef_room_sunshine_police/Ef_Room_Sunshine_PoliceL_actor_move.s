lbl_804CFA8C:
/* 804CFA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CFA90  7C 08 02 A6 */	mflr r0
/* 804CFA94  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CFA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CFA9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CFAA0  7C 7F 1B 78 */	mr r31, r3
/* 804CFAA4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804CFAA8  3C 63 00 02 */	addis r3, r3, 2
/* 804CFAAC  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CFAB0  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CFAB4  40 80 00 14 */	bge lbl_804CFAC8
/* 804CFAB8  38 60 00 01 */	li r3, 1
/* 804CFABC  4B FF FD AD */	bl calc_scale_Ef_Room_Sunshine_Police
/* 804CFAC0  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804CFAC4  48 00 00 44 */	b lbl_804CFB08
lbl_804CFAC8:
/* 804CFAC8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804CFACC  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804CFAD0  7C 04 00 00 */	cmpw r4, r0
/* 804CFAD4  41 80 00 28 */	blt lbl_804CFAFC
/* 804CFAD8  38 03 19 40 */	addi r0, r3, 0x1940
/* 804CFADC  7C 04 00 00 */	cmpw r4, r0
/* 804CFAE0  40 80 00 1C */	bge lbl_804CFAFC
/* 804CFAE4  3C 84 FF FF */	addis r4, r4, 0xffff
/* 804CFAE8  38 60 00 00 */	li r3, 0
/* 804CFAEC  38 84 57 40 */	addi r4, r4, 0x5740
/* 804CFAF0  4B FF FD 79 */	bl calc_scale_Ef_Room_Sunshine_Police
/* 804CFAF4  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804CFAF8  48 00 00 10 */	b lbl_804CFB08
lbl_804CFAFC:
/* 804CFAFC  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CFB00  C0 03 63 38 */	lfs f0, lit_391@l(r3)  /* 0x80646338@l */
/* 804CFB04  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804CFB08:
/* 804CFB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CFB0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CFB10  7C 08 03 A6 */	mtlr r0
/* 804CFB14  38 21 00 10 */	addi r1, r1, 0x10
/* 804CFB18  4E 80 00 20 */	blr 
