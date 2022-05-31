lbl_803EA5AC:
/* 803EA5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EA5B0  7C 08 02 A6 */	mflr r0
/* 803EA5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EA5BC  4B FF F3 A9 */	bl mSP_GetShopLevel
/* 803EA5C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EA5C4  7C 7F 1B 78 */	mr r31, r3
/* 803EA5C8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803EA5CC  3C 83 00 02 */	addis r4, r3, 2
/* 803EA5D0  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 803EA5D4  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 803EA5D8  48 01 C1 A1 */	bl lbRTC_GetDaysByMonth
/* 803EA5DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EA5E0  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803EA5E4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803EA5E8  3C 63 00 02 */	addis r3, r3, 2
/* 803EA5EC  88 03 61 23 */	lbz r0, 0x6123(r3)
/* 803EA5F0  7C 00 28 40 */	cmplw r0, r5
/* 803EA5F4  40 82 00 0C */	bne lbl_803EA600
/* 803EA5F8  38 60 00 0A */	li r3, 0xa
/* 803EA5FC  48 00 00 10 */	b lbl_803EA60C
lbl_803EA600:
/* 803EA600  3C 60 80 66 */	lis r3, shop_open_time_table@ha /* 0x8065D910@ha */
/* 803EA604  38 63 D9 10 */	addi r3, r3, shop_open_time_table@l /* 0x8065D910@l */
/* 803EA608  7C 63 F8 AE */	lbzx r3, r3, r31
lbl_803EA60C:
/* 803EA60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EA614  7C 08 03 A6 */	mtlr r0
/* 803EA618  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA61C  4E 80 00 20 */	blr 
