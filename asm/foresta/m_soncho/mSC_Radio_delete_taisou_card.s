lbl_803EC938:
/* 803EC938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EC93C  7C 08 02 A6 */	mflr r0
/* 803EC940  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EC944  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC948  4B CA E5 89 */	bl func_8009AED0
/* 803EC94C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC950  3B A0 00 00 */	li r29, 0
/* 803EC954  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC958  3F C3 00 02 */	addis r30, r3, 2
/* 803EC95C  83 9E 61 3C */	lwz r28, 0x613c(r30)
lbl_803EC960:
/* 803EC960  38 1D 25 23 */	addi r0, r29, 0x2523
/* 803EC964  7F 83 E3 78 */	mr r3, r28
/* 803EC968  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803EC96C  38 A0 00 00 */	li r5, 0
/* 803EC970  4B FF 3E 01 */	bl mPr_GetPossessionItemIdxWithCond
/* 803EC974  3B FD 25 23 */	addi r31, r29, 0x2523
/* 803EC978  7C 64 1B 78 */	mr r4, r3
/* 803EC97C  48 00 00 28 */	b lbl_803EC9A4
lbl_803EC980:
/* 803EC980  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803EC984  38 A0 00 00 */	li r5, 0
/* 803EC988  38 C0 00 00 */	li r6, 0
/* 803EC98C  4B FF 44 9D */	bl mPr_SetPossessionItem
/* 803EC990  7F 83 E3 78 */	mr r3, r28
/* 803EC994  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 803EC998  38 A0 00 00 */	li r5, 0
/* 803EC99C  4B FF 3D D5 */	bl mPr_GetPossessionItemIdxWithCond
/* 803EC9A0  7C 64 1B 78 */	mr r4, r3
lbl_803EC9A4:
/* 803EC9A4  2C 04 FF FF */	cmpwi r4, -1
/* 803EC9A8  40 82 FF D8 */	bne lbl_803EC980
/* 803EC9AC  3B BD 00 01 */	addi r29, r29, 1
/* 803EC9B0  2C 1D 00 0D */	cmpwi r29, 0xd
/* 803EC9B4  41 80 FF AC */	blt lbl_803EC960
/* 803EC9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC9BC  4B CA E5 61 */	bl func_8009AF1C
/* 803EC9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EC9C4  7C 08 03 A6 */	mtlr r0
/* 803EC9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803EC9CC  4E 80 00 20 */	blr 
