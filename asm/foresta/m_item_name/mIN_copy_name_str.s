lbl_803B59A4:
/* 803B59A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B59A8  7C 08 02 A6 */	mflr r0
/* 803B59AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B59B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B59B4  7C 7F 1B 78 */	mr r31, r3
/* 803B59B8  7C 83 23 78 */	mr r3, r4
/* 803B59BC  38 80 00 00 */	li r4, 0
/* 803B59C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B59C4  48 03 0B 61 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 803B59C8  7C 7E 1B 78 */	mr r30, r3
/* 803B59CC  48 01 3D A5 */	bl mNT_check_unknown
/* 803B59D0  2C 03 00 01 */	cmpwi r3, 1
/* 803B59D4  40 82 00 1C */	bne lbl_803B59F0
/* 803B59D8  3C 80 80 65 */	lis r4, unknown_item_str@ha /* 0x80655BF4@ha */
/* 803B59DC  7F E3 FB 78 */	mr r3, r31
/* 803B59E0  38 84 5B F4 */	addi r4, r4, unknown_item_str@l /* 0x80655BF4@l */
/* 803B59E4  38 A0 00 10 */	li r5, 0x10
/* 803B59E8  48 00 50 3D */	bl func_803BAA24
/* 803B59EC  48 00 01 14 */	b lbl_803B5B00
lbl_803B59F0:
/* 803B59F0  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 803B59F4  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 803B59F8  2C 00 00 02 */	cmpwi r0, 2
/* 803B59FC  41 82 00 20 */	beq lbl_803B5A1C
/* 803B5A00  40 80 00 10 */	bge lbl_803B5A10
/* 803B5A04  2C 00 00 01 */	cmpwi r0, 1
/* 803B5A08  40 80 00 48 */	bge lbl_803B5A50
/* 803B5A0C  48 00 00 9C */	b lbl_803B5AA8
lbl_803B5A10:
/* 803B5A10  2C 00 00 04 */	cmpwi r0, 4
/* 803B5A14  40 80 00 94 */	bge lbl_803B5AA8
/* 803B5A18  48 00 00 64 */	b lbl_803B5A7C
lbl_803B5A1C:
/* 803B5A1C  3C 60 80 65 */	lis r3, itemName_table@ha /* 0x80655BB4@ha */
/* 803B5A20  54 84 D6 BA */	rlwinm r4, r4, 0x1a, 0x1a, 0x1d
/* 803B5A24  38 63 5B B4 */	addi r3, r3, itemName_table@l /* 0x80655BB4@l */
/* 803B5A28  57 C0 25 36 */	rlwinm r0, r30, 4, 0x14, 0x1b
/* 803B5A2C  7C 83 20 2E */	lwzx r4, r3, r4
/* 803B5A30  38 61 00 08 */	addi r3, r1, 8
/* 803B5A34  7C 84 02 14 */	add r4, r4, r0
/* 803B5A38  4B FF FF 49 */	bl func_803B5980
/* 803B5A3C  7F E3 FB 78 */	mr r3, r31
/* 803B5A40  38 81 00 08 */	addi r4, r1, 8
/* 803B5A44  38 A0 00 10 */	li r5, 0x10
/* 803B5A48  48 00 4F DD */	bl func_803BAA24
/* 803B5A4C  48 00 00 B4 */	b lbl_803B5B00
lbl_803B5A50:
/* 803B5A50  3C 60 80 8C */	lis r3, ftrName_table@ha /* 0x808C3810@ha */
/* 803B5A54  57 C4 14 B6 */	rlwinm r4, r30, 2, 0x12, 0x1b
/* 803B5A58  38 03 38 10 */	addi r0, r3, ftrName_table@l /* 0x808C3810@l */
/* 803B5A5C  38 61 00 08 */	addi r3, r1, 8
/* 803B5A60  7C 80 22 14 */	add r4, r0, r4
/* 803B5A64  4B FF FF 1D */	bl func_803B5980
/* 803B5A68  7F E3 FB 78 */	mr r3, r31
/* 803B5A6C  38 81 00 08 */	addi r4, r1, 8
/* 803B5A70  38 A0 00 10 */	li r5, 0x10
/* 803B5A74  48 00 4F B1 */	bl func_803BAA24
/* 803B5A78  48 00 00 88 */	b lbl_803B5B00
lbl_803B5A7C:
/* 803B5A7C  3C 60 80 8C */	lis r3, ftrName2_table@ha /* 0x808C7810@ha */
/* 803B5A80  57 C4 14 B6 */	rlwinm r4, r30, 2, 0x12, 0x1b
/* 803B5A84  38 03 78 10 */	addi r0, r3, ftrName2_table@l /* 0x808C7810@l */
/* 803B5A88  38 61 00 08 */	addi r3, r1, 8
/* 803B5A8C  7C 80 22 14 */	add r4, r0, r4
/* 803B5A90  4B FF FE F1 */	bl func_803B5980
/* 803B5A94  7F E3 FB 78 */	mr r3, r31
/* 803B5A98  38 81 00 08 */	addi r4, r1, 8
/* 803B5A9C  38 A0 00 10 */	li r5, 0x10
/* 803B5AA0  48 00 4F 85 */	bl func_803BAA24
/* 803B5AA4  48 00 00 5C */	b lbl_803B5B00
lbl_803B5AA8:
/* 803B5AA8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803B5AAC  28 00 09 00 */	cmplwi r0, 0x900
/* 803B5AB0  41 80 00 38 */	blt lbl_803B5AE8
/* 803B5AB4  28 00 09 20 */	cmplwi r0, 0x920
/* 803B5AB8  41 81 00 30 */	bgt lbl_803B5AE8
/* 803B5ABC  3C 80 80 65 */	lis r4, itemName_table@ha /* 0x80655BB4@ha */
/* 803B5AC0  38 61 00 08 */	addi r3, r1, 8
/* 803B5AC4  38 84 5B B4 */	addi r4, r4, itemName_table@l /* 0x80655BB4@l */
/* 803B5AC8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 803B5ACC  38 84 01 E0 */	addi r4, r4, 0x1e0
/* 803B5AD0  4B FF FE B1 */	bl func_803B5980
/* 803B5AD4  7F E3 FB 78 */	mr r3, r31
/* 803B5AD8  38 81 00 08 */	addi r4, r1, 8
/* 803B5ADC  38 A0 00 10 */	li r5, 0x10
/* 803B5AE0  48 00 4F 45 */	bl func_803BAA24
/* 803B5AE4  48 00 00 1C */	b lbl_803B5B00
lbl_803B5AE8:
/* 803B5AE8  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803B5AEC  40 82 00 14 */	bne lbl_803B5B00
/* 803B5AF0  7F E3 FB 78 */	mr r3, r31
/* 803B5AF4  38 80 00 10 */	li r4, 0x10
/* 803B5AF8  38 A0 00 20 */	li r5, 0x20
/* 803B5AFC  48 00 4F 4D */	bl mem_clear
lbl_803B5B00:
/* 803B5B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B5B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B5B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B5B0C  7C 08 03 A6 */	mtlr r0
/* 803B5B10  38 21 00 20 */	addi r1, r1, 0x20
/* 803B5B14  4E 80 00 20 */	blr 
