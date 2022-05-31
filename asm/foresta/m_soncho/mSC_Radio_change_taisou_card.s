lbl_803EC9D0:
/* 803EC9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC9D4  7C 08 02 A6 */	mflr r0
/* 803EC9D8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EC9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC9E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803EC9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EC9E8  3F E5 00 02 */	addis r31, r5, 2
/* 803EC9EC  38 A0 00 00 */	li r5, 0
/* 803EC9F0  93 C1 00 08 */	stw r30, 8(r1)
/* 803EC9F4  7C 9E 23 78 */	mr r30, r4
/* 803EC9F8  7C 64 1B 78 */	mr r4, r3
/* 803EC9FC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803ECA00  4B FF 3D 71 */	bl mPr_GetPossessionItemIdxWithCond
/* 803ECA04  7C 64 1B 78 */	mr r4, r3
/* 803ECA08  2C 04 FF FF */	cmpwi r4, -1
/* 803ECA0C  41 82 00 14 */	beq lbl_803ECA20
/* 803ECA10  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803ECA14  7F C5 F3 78 */	mr r5, r30
/* 803ECA18  38 C0 00 00 */	li r6, 0
/* 803ECA1C  4B FF 44 0D */	bl mPr_SetPossessionItem
lbl_803ECA20:
/* 803ECA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ECA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ECA28  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ECA2C  7C 08 03 A6 */	mtlr r0
/* 803ECA30  38 21 00 10 */	addi r1, r1, 0x10
/* 803ECA34  4E 80 00 20 */	blr 
