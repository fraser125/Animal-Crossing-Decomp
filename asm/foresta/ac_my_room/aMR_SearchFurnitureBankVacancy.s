lbl_80470DF4:
/* 80470DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470DF8  7C 08 02 A6 */	mflr r0
/* 80470DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470E04  3B E0 00 00 */	li r31, 0
/* 80470E08  93 C1 00 08 */	stw r30, 8(r1)
/* 80470E0C  3B C0 00 00 */	li r30, 0
lbl_80470E10:
/* 80470E10  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 80470E14  4B FF FF 55 */	bl aMR_CheckFurnitureBankExist
/* 80470E18  2C 03 00 00 */	cmpwi r3, 0
/* 80470E1C  41 82 00 08 */	beq lbl_80470E24
/* 80470E20  3B DE 00 01 */	addi r30, r30, 1
lbl_80470E24:
/* 80470E24  3B FF 00 01 */	addi r31, r31, 1
/* 80470E28  2C 1F 04 F2 */	cmpwi r31, 0x4f2
/* 80470E2C  41 80 FF E4 */	blt lbl_80470E10
/* 80470E30  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470E38  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80470E3C  80 83 00 08 */	lwz r4, 8(r3)
/* 80470E40  7C 80 F2 78 */	xor r0, r4, r30
/* 80470E44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80470E48  7C 03 0E 70 */	srawi r3, r0, 1
/* 80470E4C  7C 00 20 38 */	and r0, r0, r4
/* 80470E50  7C 00 18 50 */	subf r0, r0, r3
/* 80470E54  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80470E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470E5C  7C 08 03 A6 */	mtlr r0
/* 80470E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80470E64  4E 80 00 20 */	blr 
