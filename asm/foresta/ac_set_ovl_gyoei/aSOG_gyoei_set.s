lbl_8049A860:
/* 8049A860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049A864  7C 08 02 A6 */	mflr r0
/* 8049A868  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049A86C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A870  4B C0 06 61 */	bl func_8009AED0
/* 8049A874  7C 7C 1B 78 */	mr r28, r3
/* 8049A878  7C 9D 23 78 */	mr r29, r4
/* 8049A87C  80 63 41 80 */	lwz r3, 0x4180(r3)
/* 8049A880  3B C0 00 00 */	li r30, 0
/* 8049A884  80 9C 41 84 */	lwz r4, 0x4184(r28)
/* 8049A888  4B F0 BA 61 */	bl mFI_BkNum2BlockKind
/* 8049A88C  7C 60 1B 78 */	mr r0, r3
/* 8049A890  7F 83 E3 78 */	mr r3, r28
/* 8049A894  7C 1F 03 78 */	mr r31, r0
/* 8049A898  7F A4 EB 78 */	mr r4, r29
/* 8049A89C  7F E5 FB 78 */	mr r5, r31
/* 8049A8A0  4B FF F6 AD */	bl aSOG_gyoei_block_check
/* 8049A8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8049A8A8  40 82 00 38 */	bne lbl_8049A8E0
/* 8049A8AC  3C 60 81 1D */	lis r3, set_data@ha /* 0x811CF178@ha */
/* 8049A8B0  38 63 F1 78 */	addi r3, r3, set_data@l /* 0x811CF178@l */
/* 8049A8B4  4B FF EC 39 */	bl func_804994EC
/* 8049A8B8  7F 83 E3 78 */	mr r3, r28
/* 8049A8BC  7F E4 FB 78 */	mr r4, r31
/* 8049A8C0  4B FF FE 45 */	bl aSOG_gyoei_make_range_data
/* 8049A8C4  3C 60 81 1D */	lis r3, set_data@ha /* 0x811CF178@ha */
/* 8049A8C8  7F 84 E3 78 */	mr r4, r28
/* 8049A8CC  38 63 F1 78 */	addi r3, r3, set_data@l /* 0x811CF178@l */
/* 8049A8D0  7F A5 EB 78 */	mr r5, r29
/* 8049A8D4  7F E6 FB 78 */	mr r6, r31
/* 8049A8D8  4B FF F6 F1 */	bl aSOG_gyoei_set_with_list
/* 8049A8DC  7C 7E 1B 78 */	mr r30, r3
lbl_8049A8E0:
/* 8049A8E0  7F C3 F3 78 */	mr r3, r30
/* 8049A8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A8E8  4B C0 06 35 */	bl func_8009AF1C
/* 8049A8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049A8F0  7C 08 03 A6 */	mtlr r0
/* 8049A8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8049A8F8  4E 80 00 20 */	blr 
