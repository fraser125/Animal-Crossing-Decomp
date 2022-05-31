lbl_803A6848:
/* 803A6848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A684C  7C 08 02 A6 */	mflr r0
/* 803A6850  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6854  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6858  4B CF 46 7D */	bl func_8009AED4
/* 803A685C  7C 7D 1B 78 */	mr r29, r3
/* 803A6860  7C 9E 23 78 */	mr r30, r4
/* 803A6864  3B E0 00 00 */	li r31, 0
/* 803A6868  4B FF E9 A1 */	bl mFI_BlockCheck
/* 803A686C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6870  41 82 00 2C */	beq lbl_803A689C
/* 803A6874  7F A3 EB 78 */	mr r3, r29
/* 803A6878  7F C4 F3 78 */	mr r4, r30
/* 803A687C  4B FF E9 3D */	bl mFI_GetBlockNum
/* 803A6880  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6884  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A6888  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A688C  80 84 00 00 */	lwz r4, 0(r4)
/* 803A6890  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803A6894  3B E3 05 20 */	addi r31, r3, 0x520
/* 803A6898  7F E0 FA 14 */	add r31, r0, r31
lbl_803A689C:
/* 803A689C  7F E3 FB 78 */	mr r3, r31
/* 803A68A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A68A4  4B CF 46 7D */	bl func_8009AF20
/* 803A68A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A68AC  7C 08 03 A6 */	mtlr r0
/* 803A68B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A68B4  4E 80 00 20 */	blr 
