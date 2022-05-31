lbl_8048E660:
/* 8048E660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048E664  7C 08 02 A6 */	mflr r0
/* 8048E668  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048E66C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E670  4B C0 C8 65 */	bl func_8009AED4
/* 8048E674  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8048E678  3C E0 81 1D */	lis r7, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E67C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8048E680  7C 9E 23 78 */	mr r30, r4
/* 8048E684  3C A5 00 02 */	addis r5, r5, 2
/* 8048E688  38 E7 EB F0 */	addi r7, r7, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E68C  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8048E690  3C C0 81 1C */	lis r6, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8048E694  83 E7 00 0C */	lwz r31, 0xc(r7)
/* 8048E698  7C 7D 1B 78 */	mr r29, r3
/* 8048E69C  80 85 00 88 */	lwz r4, 0x88(r5)
/* 8048E6A0  38 A0 00 07 */	li r5, 7
/* 8048E6A4  57 E0 08 3C */	slwi r0, r31, 1
/* 8048E6A8  80 66 52 F0 */	lwz r3, data_811C52F0@l(r6)  /* 0x811C52F0@l */
/* 8048E6AC  7C 80 04 30 */	srw r0, r4, r0
/* 8048E6B0  A0 87 00 14 */	lhz r4, 0x14(r7)
/* 8048E6B4  54 06 07 FE */	clrlwi r6, r0, 0x1f
/* 8048E6B8  38 E0 00 00 */	li r7, 0
/* 8048E6BC  4B F4 BD A5 */	bl mPlib_request_main_give_type1
/* 8048E6C0  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E6C4  57 C0 08 3C */	slwi r0, r30, 1
/* 8048E6C8  38 83 EB F0 */	addi r4, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E6CC  7F E3 FB 78 */	mr r3, r31
/* 8048E6D0  7C 84 02 14 */	add r4, r4, r0
/* 8048E6D4  A0 04 00 14 */	lhz r0, 0x14(r4)
/* 8048E6D8  B0 1D 01 E0 */	sth r0, 0x1e0(r29)
/* 8048E6DC  4B FF FD E5 */	bl aQMgr_trade_take_item
/* 8048E6E0  38 60 00 0A */	li r3, 0xa
/* 8048E6E4  38 00 00 05 */	li r0, 5
/* 8048E6E8  98 7D 01 85 */	stb r3, 0x185(r29)
/* 8048E6EC  98 1D 01 86 */	stb r0, 0x186(r29)
/* 8048E6F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E6F4  4B C0 C8 2D */	bl func_8009AF20
/* 8048E6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048E6FC  7C 08 03 A6 */	mtlr r0
/* 8048E700  38 21 00 20 */	addi r1, r1, 0x20
/* 8048E704  4E 80 00 20 */	blr 
