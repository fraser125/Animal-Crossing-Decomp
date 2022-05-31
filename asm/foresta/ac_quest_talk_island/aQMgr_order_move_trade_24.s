lbl_8048F8EC:
/* 8048F8EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F8F0  7C 08 02 A6 */	mflr r0
/* 8048F8F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F8F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F8FC  4B C0 B5 D1 */	bl func_8009AECC
/* 8048F900  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048F904  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F908  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048F90C  7C 7B 1B 78 */	mr r27, r3
/* 8048F910  3C 84 00 02 */	addis r4, r4, 2
/* 8048F914  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F918  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 8048F91C  3B A0 00 07 */	li r29, 7
/* 8048F920  A3 85 00 14 */	lhz r28, 0x14(r5)
/* 8048F924  83 C5 00 0C */	lwz r30, 0xc(r5)
/* 8048F928  80 63 00 88 */	lwz r3, 0x88(r3)
/* 8048F92C  28 1C 24 00 */	cmplwi r28, 0x2400
/* 8048F930  57 C0 08 3C */	slwi r0, r30, 1
/* 8048F934  7C 60 04 30 */	srw r0, r3, r0
/* 8048F938  54 1F 07 FE */	clrlwi r31, r0, 0x1f
/* 8048F93C  41 80 00 1C */	blt lbl_8048F958
/* 8048F940  28 1C 24 FF */	cmplwi r28, 0x24ff
/* 8048F944  40 80 00 14 */	bge lbl_8048F958
/* 8048F948  B3 84 66 68 */	sth r28, 0x6668(r4)
/* 8048F94C  3B A0 00 06 */	li r29, 6
/* 8048F950  3C 60 40 00 */	lis r3, 0x4000
/* 8048F954  4B F2 46 C5 */	bl mISL_SetNowPlayerAction
lbl_8048F958:
/* 8048F958  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8048F95C  7F 84 E3 78 */	mr r4, r28
/* 8048F960  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8048F964  7F A5 EB 78 */	mr r5, r29
/* 8048F968  80 63 00 00 */	lwz r3, 0(r3)
/* 8048F96C  7F E6 FB 78 */	mr r6, r31
/* 8048F970  38 E0 00 00 */	li r7, 0
/* 8048F974  4B F4 AA ED */	bl mPlib_request_main_give_type1
/* 8048F978  7F C3 F3 78 */	mr r3, r30
/* 8048F97C  4B FF EB 45 */	bl aQMgr_trade_take_item
/* 8048F980  38 60 00 0A */	li r3, 0xa
/* 8048F984  38 00 00 05 */	li r0, 5
/* 8048F988  98 7B 01 85 */	stb r3, 0x185(r27)
/* 8048F98C  98 1B 01 86 */	stb r0, 0x186(r27)
/* 8048F990  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F994  4B C0 B5 85 */	bl func_8009AF18
/* 8048F998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F99C  7C 08 03 A6 */	mtlr r0
/* 8048F9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F9A4  4E 80 00 20 */	blr 
