lbl_804931D0:
/* 804931D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804931D4  7C 08 02 A6 */	mflr r0
/* 804931D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804931DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804931E0  4B C0 7C F5 */	bl func_8009AED4
/* 804931E4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804931E8  3C E0 81 1D */	lis r7, l_normal_info@ha /* 0x811CECA4@ha */
/* 804931EC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804931F0  7C 9E 23 78 */	mr r30, r4
/* 804931F4  3C A5 00 02 */	addis r5, r5, 2
/* 804931F8  38 E7 EC A4 */	addi r7, r7, l_normal_info@l /* 0x811CECA4@l */
/* 804931FC  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 80493200  3C C0 81 1C */	lis r6, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80493204  83 E7 00 0C */	lwz r31, 0xc(r7)
/* 80493208  7C 7D 1B 78 */	mr r29, r3
/* 8049320C  80 85 00 88 */	lwz r4, 0x88(r5)
/* 80493210  38 A0 00 07 */	li r5, 7
/* 80493214  57 E0 08 3C */	slwi r0, r31, 1
/* 80493218  80 66 52 F0 */	lwz r3, data_811C52F0@l(r6)  /* 0x811C52F0@l */
/* 8049321C  7C 80 04 30 */	srw r0, r4, r0
/* 80493220  A0 87 00 14 */	lhz r4, 0x14(r7)
/* 80493224  54 06 07 FE */	clrlwi r6, r0, 0x1f
/* 80493228  38 E0 00 00 */	li r7, 0
/* 8049322C  4B F4 72 35 */	bl mPlib_request_main_give_type1
/* 80493230  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493234  57 C0 08 3C */	slwi r0, r30, 1
/* 80493238  38 83 EC A4 */	addi r4, r3, l_normal_info@l /* 0x811CECA4@l */
/* 8049323C  7F E3 FB 78 */	mr r3, r31
/* 80493240  7C 84 02 14 */	add r4, r4, r0
/* 80493244  A0 04 00 14 */	lhz r0, 0x14(r4)
/* 80493248  B0 1D 01 E0 */	sth r0, 0x1e0(r29)
/* 8049324C  4B FF FE 09 */	bl aQMgr_trade_take_item
/* 80493250  38 60 00 0A */	li r3, 0xa
/* 80493254  38 00 00 05 */	li r0, 5
/* 80493258  98 7D 01 85 */	stb r3, 0x185(r29)
/* 8049325C  98 1D 01 86 */	stb r0, 0x186(r29)
/* 80493260  39 61 00 20 */	addi r11, r1, 0x20
/* 80493264  4B C0 7C BD */	bl func_8009AF20
/* 80493268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049326C  7C 08 03 A6 */	mtlr r0
/* 80493270  38 21 00 20 */	addi r1, r1, 0x20
/* 80493274  4E 80 00 20 */	blr 
