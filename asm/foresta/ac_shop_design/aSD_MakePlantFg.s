lbl_8049CA74:
/* 8049CA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CA78  7C 08 02 A6 */	mflr r0
/* 8049CA7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049CA80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049CA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CA88  3C 63 00 03 */	addis r3, r3, 3
/* 8049CA8C  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8049CA90  2C 00 00 02 */	cmpwi r0, 2
/* 8049CA94  40 82 00 0C */	bne lbl_8049CAA0
/* 8049CA98  4B FF FF 5D */	bl aSD_MakePlantFg_hal
/* 8049CA9C  48 00 00 08 */	b lbl_8049CAA4
lbl_8049CAA0:
/* 8049CAA0  4B FF FF 01 */	bl aSD_MakePlantFg_normal
lbl_8049CAA4:
/* 8049CAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CAA8  7C 08 03 A6 */	mtlr r0
/* 8049CAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CAB0  4E 80 00 20 */	blr 
