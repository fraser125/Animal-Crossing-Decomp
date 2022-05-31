lbl_8055AD84:
/* 8055AD84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055AD88  7C 08 02 A6 */	mflr r0
/* 8055AD8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055AD90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055AD94  7C 9F 23 78 */	mr r31, r4
/* 8055AD98  38 80 00 02 */	li r4, 2
/* 8055AD9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8055ADA0  7C 7E 1B 78 */	mr r30, r3
/* 8055ADA4  4B FF FB 5D */	bl aNSC_set_item_name_str
/* 8055ADA8  7F E3 FB 78 */	mr r3, r31
/* 8055ADAC  38 80 00 07 */	li r4, 7
/* 8055ADB0  4B FF FA F5 */	bl aNSC_set_value_str
/* 8055ADB4  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 8055ADB8  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 8055ADBC  2C 00 00 02 */	cmpwi r0, 2
/* 8055ADC0  41 82 00 20 */	beq lbl_8055ADE0
/* 8055ADC4  40 80 00 10 */	bge lbl_8055ADD4
/* 8055ADC8  2C 00 00 01 */	cmpwi r0, 1
/* 8055ADCC  40 80 00 48 */	bge lbl_8055AE14
/* 8055ADD0  48 00 00 4C */	b lbl_8055AE1C
lbl_8055ADD4:
/* 8055ADD4  2C 00 00 04 */	cmpwi r0, 4
/* 8055ADD8  40 80 00 44 */	bge lbl_8055AE1C
/* 8055ADDC  48 00 00 38 */	b lbl_8055AE14
lbl_8055ADE0:
/* 8055ADE0  3C 80 80 6B */	lis r4, aNSC_item_tanni_type@ha /* 0x806A9D1C@ha */
/* 8055ADE4  3C 60 80 6B */	lis r3, tani_string_num@ha /* 0x806A9DE8@ha */
/* 8055ADE8  54 C5 D6 BA */	rlwinm r5, r6, 0x1a, 0x1a, 0x1d
/* 8055ADEC  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8055ADF0  38 84 9D 1C */	addi r4, r4, aNSC_item_tanni_type@l /* 0x806A9D1C@l */
/* 8055ADF4  38 63 9D E8 */	addi r3, r3, tani_string_num@l /* 0x806A9DE8@l */
/* 8055ADF8  7C 84 28 2E */	lwzx r4, r4, r5
/* 8055ADFC  7C 04 00 AE */	lbzx r0, r4, r0
/* 8055AE00  54 00 10 3A */	slwi r0, r0, 2
/* 8055AE04  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055AE08  7C BF 02 14 */	add r5, r31, r0
/* 8055AE0C  38 A5 FF FF */	addi r5, r5, -1
/* 8055AE10  48 00 00 10 */	b lbl_8055AE20
lbl_8055AE14:
/* 8055AE14  38 BF 05 65 */	addi r5, r31, 0x565
/* 8055AE18  48 00 00 08 */	b lbl_8055AE20
lbl_8055AE1C:
/* 8055AE1C  38 BF 05 65 */	addi r5, r31, 0x565
lbl_8055AE20:
/* 8055AE20  38 61 00 08 */	addi r3, r1, 8
/* 8055AE24  38 80 00 10 */	li r4, 0x10
/* 8055AE28  4B E9 3E A5 */	bl mString_Load_StringFromRom
/* 8055AE2C  4B E6 48 7D */	bl func_803BF6A8
/* 8055AE30  38 A1 00 08 */	addi r5, r1, 8
/* 8055AE34  38 80 00 08 */	li r4, 8
/* 8055AE38  38 C0 00 10 */	li r6, 0x10
/* 8055AE3C  4B E6 4E 19 */	bl mMsg_Set_free_str
/* 8055AE40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055AE44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055AE48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8055AE4C  7C 08 03 A6 */	mtlr r0
/* 8055AE50  38 21 00 20 */	addi r1, r1, 0x20
/* 8055AE54  4E 80 00 20 */	blr 
