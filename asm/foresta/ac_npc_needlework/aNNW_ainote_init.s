lbl_80565EE8:
/* 80565EE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80565EEC  7C 08 02 A6 */	mflr r0
/* 80565EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80565EF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80565EF8  4B B3 4F DD */	bl func_8009AED4
/* 80565EFC  7C 7E 1B 78 */	mr r30, r3
/* 80565F00  7C 9D 23 78 */	mr r29, r4
/* 80565F04  7F A3 EB 78 */	mr r3, r29
/* 80565F08  7F C4 F3 78 */	mr r4, r30
/* 80565F0C  4B FF BA 4D */	bl aNNW_search_sister
/* 80565F10  7C 7F 1B 78 */	mr r31, r3
/* 80565F14  7F C3 F3 78 */	mr r3, r30
/* 80565F18  7F A4 EB 78 */	mr r4, r29
/* 80565F1C  4B FF FF 01 */	bl aNNW_normal_wait_init
/* 80565F20  38 00 00 01 */	li r0, 1
/* 80565F24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80565F28  98 1E 08 BE */	stb r0, 0x8be(r30)
/* 80565F2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80565F30  3C 83 00 02 */	addis r4, r3, 2
/* 80565F34  7F C3 F3 78 */	mr r3, r30
/* 80565F38  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80565F3C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80565F40  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80565F44  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80565F48  7D 89 03 A6 */	mtctr r12
/* 80565F4C  4E 80 04 21 */	bctrl 
/* 80565F50  39 61 00 20 */	addi r11, r1, 0x20
/* 80565F54  4B B3 4F CD */	bl func_8009AF20
/* 80565F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80565F5C  7C 08 03 A6 */	mtlr r0
/* 80565F60  38 21 00 20 */	addi r1, r1, 0x20
/* 80565F64  4E 80 00 20 */	blr 
