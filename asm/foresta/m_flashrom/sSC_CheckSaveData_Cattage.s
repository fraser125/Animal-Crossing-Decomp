lbl_803AE0B4:
/* 803AE0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE0B8  7C 08 02 A6 */	mflr r0
/* 803AE0BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE0C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AE0C8  3C 63 00 02 */	addis r3, r3, 2
/* 803AE0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AE0D0  93 C1 00 08 */	stw r30, 8(r1)
/* 803AE0D4  8B E3 29 58 */	lbz r31, 0x2958(r3)
/* 803AE0D8  8B C3 29 59 */	lbz r30, 0x2959(r3)
/* 803AE0DC  38 63 29 60 */	addi r3, r3, 0x2960
/* 803AE0E0  4B FF FE 39 */	bl sSCCheckOneFloorData
/* 803AE0E4  2C 03 00 00 */	cmpwi r3, 0
/* 803AE0E8  40 82 00 0C */	bne lbl_803AE0F4
/* 803AE0EC  38 60 00 08 */	li r3, 8
/* 803AE0F0  48 00 00 48 */	b lbl_803AE138
lbl_803AE0F4:
/* 803AE0F4  28 1F 00 43 */	cmplwi r31, 0x43
/* 803AE0F8  41 80 00 1C */	blt lbl_803AE114
/* 803AE0FC  28 1F 00 57 */	cmplwi r31, 0x57
/* 803AE100  41 80 00 0C */	blt lbl_803AE10C
/* 803AE104  28 1F 00 5E */	cmplwi r31, 0x5e
/* 803AE108  40 81 00 0C */	ble lbl_803AE114
lbl_803AE10C:
/* 803AE10C  38 60 00 08 */	li r3, 8
/* 803AE110  48 00 00 28 */	b lbl_803AE138
lbl_803AE114:
/* 803AE114  28 1E 00 43 */	cmplwi r30, 0x43
/* 803AE118  41 80 00 1C */	blt lbl_803AE134
/* 803AE11C  28 1E 00 48 */	cmplwi r30, 0x48
/* 803AE120  41 80 00 0C */	blt lbl_803AE12C
/* 803AE124  28 1E 00 4F */	cmplwi r30, 0x4f
/* 803AE128  40 81 00 0C */	ble lbl_803AE134
lbl_803AE12C:
/* 803AE12C  38 60 00 08 */	li r3, 8
/* 803AE130  48 00 00 08 */	b lbl_803AE138
lbl_803AE134:
/* 803AE134  38 60 00 00 */	li r3, 0
lbl_803AE138:
/* 803AE138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AE140  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AE144  7C 08 03 A6 */	mtlr r0
/* 803AE148  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE14C  4E 80 00 20 */	blr 
