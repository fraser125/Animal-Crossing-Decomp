lbl_803A68B8:
/* 803A68B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A68BC  7C 08 02 A6 */	mflr r0
/* 803A68C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A68C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A68C8  4B CF 46 0D */	bl func_8009AED4
/* 803A68CC  7C 7D 1B 78 */	mr r29, r3
/* 803A68D0  7C 9E 23 78 */	mr r30, r4
/* 803A68D4  4B FF E8 E5 */	bl mFI_GetBlockNum
/* 803A68D8  7C 7F 1B 78 */	mr r31, r3
/* 803A68DC  7F A3 EB 78 */	mr r3, r29
/* 803A68E0  7F C4 F3 78 */	mr r4, r30
/* 803A68E4  4B FF E9 25 */	bl mFI_BlockCheck
/* 803A68E8  2C 03 00 00 */	cmpwi r3, 0
/* 803A68EC  40 82 00 0C */	bne lbl_803A68F8
/* 803A68F0  38 60 00 00 */	li r3, 0
/* 803A68F4  48 00 00 20 */	b lbl_803A6914
lbl_803A68F8:
/* 803A68F8  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A68FC  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A6900  80 63 00 00 */	lwz r3, 0(r3)
/* 803A6904  1C 1F 06 14 */	mulli r0, r31, 0x614
/* 803A6908  80 63 00 74 */	lwz r3, 0x74(r3)
/* 803A690C  7C 63 02 14 */	add r3, r3, r0
/* 803A6910  80 63 00 04 */	lwz r3, 4(r3)
lbl_803A6914:
/* 803A6914  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6918  4B CF 46 09 */	bl func_8009AF20
/* 803A691C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6920  7C 08 03 A6 */	mtlr r0
/* 803A6924  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6928  4E 80 00 20 */	blr 
