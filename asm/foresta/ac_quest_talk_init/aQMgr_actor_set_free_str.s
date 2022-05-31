lbl_8048AE24:
/* 8048AE24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048AE28  7C 08 02 A6 */	mflr r0
/* 8048AE2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048AE30  39 61 00 40 */	addi r11, r1, 0x40
/* 8048AE34  4B C1 00 A1 */	bl func_8009AED4
/* 8048AE38  7C 7D 1B 78 */	mr r29, r3
/* 8048AE3C  7C 9E 23 78 */	mr r30, r4
/* 8048AE40  80 83 01 D4 */	lwz r4, 0x1d4(r3)
/* 8048AE44  38 61 00 08 */	addi r3, r1, 8
/* 8048AE48  4B F4 6B 09 */	bl mNpc_GetNpcWorldNameAnm
/* 8048AE4C  4B F3 48 5D */	bl func_803BF6A8
/* 8048AE50  38 A1 00 08 */	addi r5, r1, 8
/* 8048AE54  38 80 00 00 */	li r4, 0
/* 8048AE58  38 C0 00 08 */	li r6, 8
/* 8048AE5C  4B F3 4D F9 */	bl mMsg_Set_free_str
/* 8048AE60  80 9D 01 D8 */	lwz r4, 0x1d8(r29)
/* 8048AE64  28 04 00 00 */	cmplwi r4, 0
/* 8048AE68  41 82 00 34 */	beq lbl_8048AE9C
/* 8048AE6C  38 61 00 10 */	addi r3, r1, 0x10
/* 8048AE70  4B F4 6A E1 */	bl mNpc_GetNpcWorldNameAnm
/* 8048AE74  4B F3 48 35 */	bl func_803BF6A8
/* 8048AE78  38 A1 00 10 */	addi r5, r1, 0x10
/* 8048AE7C  38 80 00 01 */	li r4, 1
/* 8048AE80  38 C0 00 08 */	li r6, 8
/* 8048AE84  38 E0 00 01 */	li r7, 1
/* 8048AE88  4B F3 4E 81 */	bl mMsg_Set_free_str_cl
/* 8048AE8C  80 7D 01 D8 */	lwz r3, 0x1d8(r29)
/* 8048AE90  38 80 00 03 */	li r4, 3
/* 8048AE94  38 63 00 04 */	addi r3, r3, 4
/* 8048AE98  4B F2 8B 71 */	bl mLd_SetFreeStrLandMuraName
lbl_8048AE9C:
/* 8048AE9C  A0 9D 01 E0 */	lhz r4, 0x1e0(r29)
/* 8048AEA0  28 04 00 00 */	cmplwi r4, 0
/* 8048AEA4  41 82 00 34 */	beq lbl_8048AED8
/* 8048AEA8  38 61 00 18 */	addi r3, r1, 0x18
/* 8048AEAC  4B F2 AA F9 */	bl mIN_copy_name_str
/* 8048AEB0  A0 7D 01 E0 */	lhz r3, 0x1e0(r29)
/* 8048AEB4  4B F2 AC 65 */	bl mIN_get_item_article
/* 8048AEB8  7C 7F 1B 78 */	mr r31, r3
/* 8048AEBC  4B F3 47 ED */	bl func_803BF6A8
/* 8048AEC0  7F E8 FB 78 */	mr r8, r31
/* 8048AEC4  38 A1 00 18 */	addi r5, r1, 0x18
/* 8048AEC8  38 80 00 02 */	li r4, 2
/* 8048AECC  38 C0 00 10 */	li r6, 0x10
/* 8048AED0  38 E0 00 02 */	li r7, 2
/* 8048AED4  4B F3 4E 81 */	bl mMsg_Set_free_str_cl_art
lbl_8048AED8:
/* 8048AED8  80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 8048AEDC  38 80 00 04 */	li r4, 4
/* 8048AEE0  38 63 00 04 */	addi r3, r3, 4
/* 8048AEE4  4B F2 8B 25 */	bl mLd_SetFreeStrLandMuraName
/* 8048AEE8  2C 1E FF FF */	cmpwi r30, -1
/* 8048AEEC  41 82 00 68 */	beq lbl_8048AF54
/* 8048AEF0  1C 7E 00 34 */	mulli r3, r30, 0x34
/* 8048AEF4  38 63 02 14 */	addi r3, r3, 0x214
/* 8048AEF8  7C 7D 1A 15 */	add. r3, r29, r3
/* 8048AEFC  41 82 00 58 */	beq lbl_8048AF54
/* 8048AF00  80 63 00 08 */	lwz r3, 8(r3)
/* 8048AF04  28 03 00 00 */	cmplwi r3, 0
/* 8048AF08  41 82 00 4C */	beq lbl_8048AF54
/* 8048AF0C  88 03 00 00 */	lbz r0, 0(r3)
/* 8048AF10  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048AF14  28 00 00 01 */	cmplwi r0, 1
/* 8048AF18  40 82 00 3C */	bne lbl_8048AF54
/* 8048AF1C  3B E3 00 2C */	addi r31, r3, 0x2c
/* 8048AF20  7F E3 FB 78 */	mr r3, r31
/* 8048AF24  4B F4 04 B9 */	bl mNpc_CheckFreeAnimalPersonalID
/* 8048AF28  2C 03 00 00 */	cmpwi r3, 0
/* 8048AF2C  40 82 00 28 */	bne lbl_8048AF54
/* 8048AF30  7F E4 FB 78 */	mr r4, r31
/* 8048AF34  38 61 00 10 */	addi r3, r1, 0x10
/* 8048AF38  4B F4 6A 19 */	bl mNpc_GetNpcWorldNameAnm
/* 8048AF3C  4B F3 47 6D */	bl func_803BF6A8
/* 8048AF40  38 A1 00 10 */	addi r5, r1, 0x10
/* 8048AF44  38 80 00 05 */	li r4, 5
/* 8048AF48  38 C0 00 08 */	li r6, 8
/* 8048AF4C  38 E0 00 01 */	li r7, 1
/* 8048AF50  4B F3 4D B9 */	bl mMsg_Set_free_str_cl
lbl_8048AF54:
/* 8048AF54  39 61 00 40 */	addi r11, r1, 0x40
/* 8048AF58  4B C0 FF C9 */	bl func_8009AF20
/* 8048AF5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048AF60  7C 08 03 A6 */	mtlr r0
/* 8048AF64  38 21 00 40 */	addi r1, r1, 0x40
/* 8048AF68  4E 80 00 20 */	blr 
