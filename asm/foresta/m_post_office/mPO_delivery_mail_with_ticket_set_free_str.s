lbl_803DF328:
/* 803DF328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF32C  7C 08 02 A6 */	mflr r0
/* 803DF330  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DF334  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF338  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DF33C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803DF340  7C 7E 1B 78 */	mr r30, r3
/* 803DF344  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803DF348  3C 63 00 02 */	addis r3, r3, 2
/* 803DF34C  7F C4 F3 78 */	mr r4, r30
/* 803DF350  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 803DF354  48 02 74 25 */	bl lbRTC_GetDaysByMonth
/* 803DF358  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803DF35C  7F C4 F3 78 */	mr r4, r30
/* 803DF360  38 61 00 0C */	addi r3, r1, 0xc
/* 803DF364  48 00 FA C5 */	bl mString_Load_MonthStringFromRom
/* 803DF368  7F E4 FB 78 */	mr r4, r31
/* 803DF36C  38 61 00 08 */	addi r3, r1, 8
/* 803DF370  48 00 FB 71 */	bl mString_Load_DayStringFromRom
/* 803DF374  38 81 00 0C */	addi r4, r1, 0xc
/* 803DF378  38 60 00 04 */	li r3, 4
/* 803DF37C  38 A0 00 09 */	li r5, 9
/* 803DF380  4B FD 25 D9 */	bl mHandbill_Set_free_str
/* 803DF384  38 81 00 08 */	addi r4, r1, 8
/* 803DF388  38 60 00 05 */	li r3, 5
/* 803DF38C  38 A0 00 04 */	li r5, 4
/* 803DF390  4B FD 25 C9 */	bl mHandbill_Set_free_str
/* 803DF394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF398  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DF39C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803DF3A0  7C 08 03 A6 */	mtlr r0
/* 803DF3A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF3A8  4E 80 00 20 */	blr 
