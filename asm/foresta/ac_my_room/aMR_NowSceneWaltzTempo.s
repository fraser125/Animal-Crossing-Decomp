lbl_80472A6C:
/* 80472A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80472A70  7C 08 02 A6 */	mflr r0
/* 80472A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80472A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80472A7C  7C 7F 1B 78 */	mr r31, r3
/* 80472A80  4B F3 22 4D */	bl mFI_GetFieldId
/* 80472A84  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80472A88  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80472A8C  40 82 00 18 */	bne lbl_80472AA4
/* 80472A90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80472A94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80472A98  3C 63 00 02 */	addis r3, r3, 2
/* 80472A9C  38 63 32 02 */	addi r3, r3, 0x3202
/* 80472AA0  48 00 00 58 */	b lbl_80472AF8
lbl_80472AA4:
/* 80472AA4  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 80472AA8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80472AAC  40 82 00 48 */	bne lbl_80472AF4
/* 80472AB0  4B F3 22 1D */	bl mFI_GetFieldId
/* 80472AB4  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80472AB8  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80472ABC  38 04 A0 00 */	addi r0, r4, -24576
/* 80472AC0  54 1F 07 BE */	clrlwi r31, r0, 0x1e
/* 80472AC4  4B F3 32 A5 */	bl mFI_GetPlayerHouseFloorNo
/* 80472AC8  2C 03 FF FF */	cmpwi r3, -1
/* 80472ACC  41 82 00 28 */	beq lbl_80472AF4
/* 80472AD0  1C BF 26 B0 */	mulli r5, r31, 0x26b0
/* 80472AD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80472AD8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80472ADC  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 80472AE0  7C 64 2A 14 */	add r3, r4, r5
/* 80472AE4  7C 63 02 14 */	add r3, r3, r0
/* 80472AE8  3C 63 00 01 */	addis r3, r3, 1
/* 80472AEC  38 63 A5 C2 */	addi r3, r3, -23102
/* 80472AF0  48 00 00 08 */	b lbl_80472AF8
lbl_80472AF4:
/* 80472AF4  38 60 00 00 */	li r3, 0
lbl_80472AF8:
/* 80472AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80472AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80472B00  7C 08 03 A6 */	mtlr r0
/* 80472B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80472B08  4E 80 00 20 */	blr 
