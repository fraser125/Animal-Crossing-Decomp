lbl_80482CB4:
/* 80482CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482CB8  7C 08 02 A6 */	mflr r0
/* 80482CBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80482CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80482CC8  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 80482CCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80482CD0  3B C0 00 00 */	li r30, 0
lbl_80482CD4:
/* 80482CD4  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 80482CD8  7F C3 F3 78 */	mr r3, r30
/* 80482CDC  1C 00 02 20 */	mulli r0, r0, 0x220
/* 80482CE0  38 A0 00 00 */	li r5, 0
/* 80482CE4  7C 9F 02 14 */	add r4, r31, r0
/* 80482CE8  3C 84 00 02 */	addis r4, r4, 2
/* 80482CEC  38 84 14 00 */	addi r4, r4, 0x1400
/* 80482CF0  48 00 07 F9 */	bl aNI_CopyClothData
/* 80482CF4  3B DE 00 01 */	addi r30, r30, 1
/* 80482CF8  2C 1E 00 04 */	cmpwi r30, 4
/* 80482CFC  41 80 FF D8 */	blt lbl_80482CD4
/* 80482D00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80482D04  3B C0 00 00 */	li r30, 0
/* 80482D08  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
lbl_80482D0C:
/* 80482D0C  57 C4 07 BE */	clrlwi r4, r30, 0x1e
/* 80482D10  7F C3 F3 78 */	mr r3, r30
/* 80482D14  38 04 00 04 */	addi r0, r4, 4
/* 80482D18  38 A0 00 00 */	li r5, 0
/* 80482D1C  1C 00 02 20 */	mulli r0, r0, 0x220
/* 80482D20  7C 9F 02 14 */	add r4, r31, r0
/* 80482D24  3C 84 00 02 */	addis r4, r4, 2
/* 80482D28  38 84 14 00 */	addi r4, r4, 0x1400
/* 80482D2C  48 00 0A 51 */	bl aNI_CopyUmbData
/* 80482D30  3B DE 00 01 */	addi r30, r30, 1
/* 80482D34  2C 1E 00 04 */	cmpwi r30, 4
/* 80482D38  41 80 FF D4 */	blt lbl_80482D0C
/* 80482D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80482D44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80482D48  7C 08 03 A6 */	mtlr r0
/* 80482D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80482D50  4E 80 00 20 */	blr 
