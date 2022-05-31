lbl_80571794:
/* 80571794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571798  7C 08 02 A6 */	mflr r0
/* 8057179C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805717A0  38 80 24 10 */	li r4, 0x2410
/* 805717A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805717A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805717AC  38 A0 00 00 */	li r5, 0
/* 805717B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805717B4  3F E3 00 02 */	addis r31, r3, 2
/* 805717B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805717BC  3B C0 00 12 */	li r30, 0x12
/* 805717C0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805717C4  4B E6 EF AD */	bl mPr_GetPossessionItemIdxWithCond
/* 805717C8  2C 03 FF FF */	cmpwi r3, -1
/* 805717CC  40 82 00 24 */	bne lbl_805717F0
/* 805717D0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805717D4  38 80 00 00 */	li r4, 0
/* 805717D8  4B E6 EF 51 */	bl mPr_GetPossessionItemIdx
/* 805717DC  2C 03 FF FF */	cmpwi r3, -1
/* 805717E0  40 82 00 0C */	bne lbl_805717EC
/* 805717E4  3B C0 00 14 */	li r30, 0x14
/* 805717E8  48 00 00 08 */	b lbl_805717F0
lbl_805717EC:
/* 805717EC  3B C0 00 13 */	li r30, 0x13
lbl_805717F0:
/* 805717F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805717F4  7F C3 F3 78 */	mr r3, r30
/* 805717F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805717FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80571800  7C 08 03 A6 */	mtlr r0
/* 80571804  38 21 00 10 */	addi r1, r1, 0x10
/* 80571808  4E 80 00 20 */	blr 
