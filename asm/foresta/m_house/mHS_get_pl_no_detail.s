lbl_803B3614:
/* 803B3614  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B3618  7C 08 02 A6 */	mflr r0
/* 803B361C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B3620  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3624  4B CE 78 AD */	bl func_8009AED0
/* 803B3628  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803B362C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3630  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 803B3634  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803B3638  7C 60 22 14 */	add r3, r0, r4
/* 803B363C  3F A3 00 01 */	addis r29, r3, 1
/* 803B3640  3B BD 9C E8 */	addi r29, r29, -25368
/* 803B3644  7F A3 EB 78 */	mr r3, r29
/* 803B3648  48 02 C9 FD */	bl mPr_NullCheckPersonalID
/* 803B364C  2C 03 00 00 */	cmpwi r3, 0
/* 803B3650  40 82 00 44 */	bne lbl_803B3694
/* 803B3654  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3658  3B 80 00 00 */	li r28, 0
/* 803B365C  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803B3660  3B E0 00 00 */	li r31, 0
lbl_803B3664:
/* 803B3664  7C 9E FA 14 */	add r4, r30, r31
/* 803B3668  7F A3 EB 78 */	mr r3, r29
/* 803B366C  38 84 00 20 */	addi r4, r4, 0x20
/* 803B3670  48 02 CA D5 */	bl mPr_CheckCmpPersonalID
/* 803B3674  2C 03 00 00 */	cmpwi r3, 0
/* 803B3678  41 82 00 0C */	beq lbl_803B3684
/* 803B367C  7F 83 E3 78 */	mr r3, r28
/* 803B3680  48 00 00 18 */	b lbl_803B3698
lbl_803B3684:
/* 803B3684  3B 9C 00 01 */	addi r28, r28, 1
/* 803B3688  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803B368C  2C 1C 00 04 */	cmpwi r28, 4
/* 803B3690  41 80 FF D4 */	blt lbl_803B3664
lbl_803B3694:
/* 803B3694  38 60 FF FF */	li r3, -1
lbl_803B3698:
/* 803B3698  39 61 00 20 */	addi r11, r1, 0x20
/* 803B369C  4B CE 78 81 */	bl func_8009AF1C
/* 803B36A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B36A4  7C 08 03 A6 */	mtlr r0
/* 803B36A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B36AC  4E 80 00 20 */	blr 
