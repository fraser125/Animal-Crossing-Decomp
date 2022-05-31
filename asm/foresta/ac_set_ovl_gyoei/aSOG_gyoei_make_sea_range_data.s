lbl_8049A534:
/* 8049A534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049A538  7C 08 02 A6 */	mflr r0
/* 8049A53C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049A540  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A544  4B C0 09 91 */	bl func_8009AED4
/* 8049A548  7C A0 0E 70 */	srawi r0, r5, 1
/* 8049A54C  3C E0 80 69 */	lis r7, s_month@ha /* 0x8068CB08@ha */
/* 8049A550  54 08 18 38 */	slwi r8, r0, 3
/* 8049A554  7C 9E 23 78 */	mr r30, r4
/* 8049A558  38 07 CB 08 */	addi r0, r7, s_month@l /* 0x8068CB08@l */
/* 8049A55C  54 A4 17 7A */	rlwinm r4, r5, 2, 0x1d, 0x1d
/* 8049A560  7C A0 42 14 */	add r5, r0, r8
/* 8049A564  7C 7D 1B 78 */	mr r29, r3
/* 8049A568  7C 85 20 2E */	lwzx r4, r5, r4
/* 8049A56C  57 C0 18 38 */	slwi r0, r30, 3
/* 8049A570  7C DF 33 78 */	mr r31, r6
/* 8049A574  7C 84 02 15 */	add. r4, r4, r0
/* 8049A578  41 82 00 18 */	beq lbl_8049A590
/* 8049A57C  4B FF FE 3D */	bl aSOG_gyoei_copy_range_data
/* 8049A580  7F A3 EB 78 */	mr r3, r29
/* 8049A584  7F C4 F3 78 */	mr r4, r30
/* 8049A588  7F E5 FB 78 */	mr r5, r31
/* 8049A58C  4B FF FE A5 */	bl aSOG_add_kaseki_range_data
lbl_8049A590:
/* 8049A590  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A594  4B C0 09 8D */	bl func_8009AF20
/* 8049A598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049A59C  7C 08 03 A6 */	mtlr r0
/* 8049A5A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8049A5A4  4E 80 00 20 */	blr 
