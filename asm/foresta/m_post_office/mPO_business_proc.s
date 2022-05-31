lbl_803DFCEC:
/* 803DFCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DFCF0  7C 08 02 A6 */	mflr r0
/* 803DFCF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DFCF8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DFCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DFD00  3C 84 00 02 */	addis r4, r4, 2
/* 803DFD04  80 A4 60 AC */	lwz r5, 0x60ac(r4)
/* 803DFD08  28 05 00 00 */	cmplwi r5, 0
/* 803DFD0C  40 82 00 10 */	bne lbl_803DFD1C
/* 803DFD10  80 04 60 B0 */	lwz r0, 0x60b0(r4)
/* 803DFD14  28 00 00 00 */	cmplwi r0, 0
/* 803DFD18  41 82 00 18 */	beq lbl_803DFD30
lbl_803DFD1C:
/* 803DFD1C  28 05 00 00 */	cmplwi r5, 0
/* 803DFD20  41 82 00 50 */	beq lbl_803DFD70
/* 803DFD24  80 05 00 04 */	lwz r0, 4(r5)
/* 803DFD28  2C 00 00 01 */	cmpwi r0, 1
/* 803DFD2C  40 82 00 44 */	bne lbl_803DFD70
lbl_803DFD30:
/* 803DFD30  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DFD34  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DFD38  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803DFD3C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 803DFD40  40 80 00 1C */	bge lbl_803DFD5C
/* 803DFD44  2C 00 00 13 */	cmpwi r0, 0x13
/* 803DFD48  41 82 00 28 */	beq lbl_803DFD70
/* 803DFD4C  41 80 00 20 */	blt lbl_803DFD6C
/* 803DFD50  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803DFD54  40 80 00 1C */	bge lbl_803DFD70
/* 803DFD58  48 00 00 14 */	b lbl_803DFD6C
lbl_803DFD5C:
/* 803DFD5C  2C 00 00 23 */	cmpwi r0, 0x23
/* 803DFD60  40 80 00 0C */	bge lbl_803DFD6C
/* 803DFD64  2C 00 00 21 */	cmpwi r0, 0x21
/* 803DFD68  40 80 00 08 */	bge lbl_803DFD70
lbl_803DFD6C:
/* 803DFD6C  4B FF FE 09 */	bl mPO_delivery_proc
lbl_803DFD70:
/* 803DFD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DFD74  7C 08 03 A6 */	mtlr r0
/* 803DFD78  38 21 00 10 */	addi r1, r1, 0x10
/* 803DFD7C  4E 80 00 20 */	blr 
