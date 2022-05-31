lbl_803FBB8C:
/* 803FBB8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FBB90  7C 08 02 A6 */	mflr r0
/* 803FBB94  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FBB98  39 61 00 20 */	addi r11, r1, 0x20
/* 803FBB9C  4B C9 F3 35 */	bl func_8009AED0
/* 803FBBA0  3C A0 80 66 */	lis r5, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FBBA4  7C 9C 23 78 */	mr r28, r4
/* 803FBBA8  3B C3 00 54 */	addi r30, r3, 0x54
/* 803FBBAC  3B A0 00 00 */	li r29, 0
/* 803FBBB0  3B E5 E6 A8 */	addi r31, r5, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
lbl_803FBBB4:
/* 803FBBB4  80 DE 00 7C */	lwz r6, 0x7c(r30)
/* 803FBBB8  7F E3 FB 78 */	mr r3, r31
/* 803FBBBC  7F A4 EB 78 */	mr r4, r29
/* 803FBBC0  38 A1 00 08 */	addi r5, r1, 8
/* 803FBBC4  4B FF E1 59 */	bl mCD_erase_file_fg
/* 803FBBC8  3B BD 00 01 */	addi r29, r29, 1
/* 803FBBCC  3B DE 00 94 */	addi r30, r30, 0x94
/* 803FBBD0  2C 1D 00 02 */	cmpwi r29, 2
/* 803FBBD4  41 80 FF E0 */	blt lbl_803FBBB4
/* 803FBBD8  80 9C 00 00 */	lwz r4, 0(r28)
/* 803FBBDC  38 60 00 01 */	li r3, 1
/* 803FBBE0  38 04 00 01 */	addi r0, r4, 1
/* 803FBBE4  90 1C 00 00 */	stw r0, 0(r28)
/* 803FBBE8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FBBEC  4B C9 F3 31 */	bl func_8009AF1C
/* 803FBBF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FBBF4  7C 08 03 A6 */	mtlr r0
/* 803FBBF8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FBBFC  4E 80 00 20 */	blr 
