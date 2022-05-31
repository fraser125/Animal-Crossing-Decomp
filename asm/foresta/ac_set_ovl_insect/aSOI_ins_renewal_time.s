lbl_8049ABF4:
/* 8049ABF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049ABF8  7C 08 02 A6 */	mflr r0
/* 8049ABFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049AC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049AC08  7C 7F 1B 78 */	mr r31, r3
/* 8049AC0C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8049AC10  3C 63 00 02 */	addis r3, r3, 2
/* 8049AC14  88 63 61 22 */	lbz r3, 0x6122(r3)
/* 8049AC18  4B FF FE BD */	bl aSOI_hour_to_term
/* 8049AC1C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049AC20  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049AC24  3C 84 00 02 */	addis r4, r4, 2
/* 8049AC28  88 04 61 25 */	lbz r0, 0x6125(r4)
/* 8049AC2C  90 1F 02 04 */	stw r0, 0x204(r31)
/* 8049AC30  90 7F 02 08 */	stw r3, 0x208(r31)
/* 8049AC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049AC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049AC3C  7C 08 03 A6 */	mtlr r0
/* 8049AC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8049AC44  4E 80 00 20 */	blr 
