lbl_803DF118:
/* 803DF118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF11C  7C 08 02 A6 */	mflr r0
/* 803DF120  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF124  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF128  4B CB BD AD */	bl func_8009AED4
/* 803DF12C  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803DF130  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF134  7C 9D 23 78 */	mr r29, r4
/* 803DF138  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DF13C  7F E0 2A 14 */	add r31, r0, r5
/* 803DF140  3B C0 00 00 */	li r30, 0
/* 803DF144  3C 7F 00 01 */	addis r3, r31, 1
/* 803DF148  38 80 00 0A */	li r4, 0xa
/* 803DF14C  38 63 B7 18 */	addi r3, r3, -18664
/* 803DF150  4B FD D7 55 */	bl mMl_chk_mail_free_space
/* 803DF154  2C 03 00 00 */	cmpwi r3, 0
/* 803DF158  41 80 00 20 */	blt lbl_803DF178
/* 803DF15C  1C 63 01 2A */	mulli r3, r3, 0x12a
/* 803DF160  7F A4 EB 78 */	mr r4, r29
/* 803DF164  3C 63 00 01 */	addis r3, r3, 1
/* 803DF168  38 63 B7 18 */	addi r3, r3, -18664
/* 803DF16C  7C 7F 1A 14 */	add r3, r31, r3
/* 803DF170  4B FD D8 05 */	bl mMl_copy_mail
/* 803DF174  3B C0 00 01 */	li r30, 1
lbl_803DF178:
/* 803DF178  7F C3 F3 78 */	mr r3, r30
/* 803DF17C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF180  4B CB BD A1 */	bl func_8009AF20
/* 803DF184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF188  7C 08 03 A6 */	mtlr r0
/* 803DF18C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF190  4E 80 00 20 */	blr 
