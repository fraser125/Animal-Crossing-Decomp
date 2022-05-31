lbl_80630CD8:
/* 80630CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630CDC  7C 08 02 A6 */	mflr r0
/* 80630CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630CE8  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 80630CEC  28 00 00 00 */	cmplwi r0, 0
/* 80630CF0  41 82 00 3C */	beq lbl_80630D2C
/* 80630CF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80630CF8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80630CFC  3F E4 00 02 */	addis r31, r4, 2
/* 80630D00  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 80630D04  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 80630D08  28 00 00 00 */	cmplwi r0, 0
/* 80630D0C  41 82 00 20 */	beq lbl_80630D2C
/* 80630D10  38 83 00 08 */	addi r4, r3, 8
/* 80630D14  38 60 00 7C */	li r3, 0x7c
/* 80630D18  4B FF D2 91 */	bl sAdo_OngenTrgStart
/* 80630D1C  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 80630D20  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 80630D24  38 03 FF FF */	addi r0, r3, -1
/* 80630D28  90 04 00 8C */	stw r0, 0x8c(r4)
lbl_80630D2C:
/* 80630D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630D34  7C 08 03 A6 */	mtlr r0
/* 80630D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80630D3C  4E 80 00 20 */	blr 
