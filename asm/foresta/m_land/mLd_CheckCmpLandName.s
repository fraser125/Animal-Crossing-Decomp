lbl_803B380C:
/* 803B380C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B3810  7C 08 02 A6 */	mflr r0
/* 803B3814  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B3818  39 61 00 20 */	addi r11, r1, 0x20
/* 803B381C  4B CE 76 B9 */	bl func_8009AED4
/* 803B3820  7C 7D 1B 78 */	mr r29, r3
/* 803B3824  7C 9E 23 78 */	mr r30, r4
/* 803B3828  3B E0 00 00 */	li r31, 0
/* 803B382C  4B FF FF 8D */	bl mLd_NullCheckLandName
/* 803B3830  2C 03 00 00 */	cmpwi r3, 0
/* 803B3834  40 82 00 28 */	bne lbl_803B385C
/* 803B3838  7F C3 F3 78 */	mr r3, r30
/* 803B383C  4B FF FF 7D */	bl mLd_NullCheckLandName
/* 803B3840  2C 03 00 00 */	cmpwi r3, 0
/* 803B3844  40 82 00 18 */	bne lbl_803B385C
/* 803B3848  7F A3 EB 78 */	mr r3, r29
/* 803B384C  7F C4 F3 78 */	mr r4, r30
/* 803B3850  38 A0 00 08 */	li r5, 8
/* 803B3854  48 00 72 11 */	bl mem_cmp
/* 803B3858  7C 7F 1B 78 */	mr r31, r3
lbl_803B385C:
/* 803B385C  7F E3 FB 78 */	mr r3, r31
/* 803B3860  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3864  4B CE 76 BD */	bl func_8009AF20
/* 803B3868  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B386C  7C 08 03 A6 */	mtlr r0
/* 803B3870  38 21 00 20 */	addi r1, r1, 0x20
/* 803B3874  4E 80 00 20 */	blr 
