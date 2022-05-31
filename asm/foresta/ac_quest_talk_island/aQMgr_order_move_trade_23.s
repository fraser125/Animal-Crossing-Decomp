lbl_8048F85C:
/* 8048F85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F860  7C 08 02 A6 */	mflr r0
/* 8048F864  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048F868  3C C0 81 1D */	lis r6, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F870  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048F874  3C 84 00 02 */	addis r4, r4, 2
/* 8048F878  38 E6 EB F0 */	addi r7, r6, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F880  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8048F884  38 C5 52 F0 */	addi r6, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 8048F888  93 C1 00 08 */	stw r30, 8(r1)
/* 8048F88C  7C 7E 1B 78 */	mr r30, r3
/* 8048F890  38 A0 00 07 */	li r5, 7
/* 8048F894  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048F898  83 E7 00 0C */	lwz r31, 0xc(r7)
/* 8048F89C  80 84 00 88 */	lwz r4, 0x88(r4)
/* 8048F8A0  57 E0 08 3C */	slwi r0, r31, 1
/* 8048F8A4  80 66 00 00 */	lwz r3, 0(r6)
/* 8048F8A8  7C 80 04 30 */	srw r0, r4, r0
/* 8048F8AC  A0 87 00 14 */	lhz r4, 0x14(r7)
/* 8048F8B0  54 06 07 FE */	clrlwi r6, r0, 0x1f
/* 8048F8B4  38 E0 00 00 */	li r7, 0
/* 8048F8B8  4B F4 AB A9 */	bl mPlib_request_main_give_type1
/* 8048F8BC  7F E3 FB 78 */	mr r3, r31
/* 8048F8C0  4B FF EC 01 */	bl aQMgr_trade_take_item
/* 8048F8C4  38 60 00 0A */	li r3, 0xa
/* 8048F8C8  38 00 00 05 */	li r0, 5
/* 8048F8CC  98 7E 01 85 */	stb r3, 0x185(r30)
/* 8048F8D0  98 1E 01 86 */	stb r0, 0x186(r30)
/* 8048F8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F8D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048F8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F8E0  7C 08 03 A6 */	mtlr r0
/* 8048F8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F8E8  4E 80 00 20 */	blr 
