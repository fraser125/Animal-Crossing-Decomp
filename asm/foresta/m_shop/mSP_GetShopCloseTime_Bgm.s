lbl_803EA64C:
/* 803EA64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EA650  7C 08 02 A6 */	mflr r0
/* 803EA654  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA658  4B FF F3 0D */	bl mSP_GetShopLevel
/* 803EA65C  3C 80 80 66 */	lis r4, shop_close_time_table_1357@ha /* 0x8065D918@ha */
/* 803EA660  38 84 D9 18 */	addi r4, r4, shop_close_time_table_1357@l /* 0x8065D918@l */
/* 803EA664  7C 64 18 AE */	lbzx r3, r4, r3
/* 803EA668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA66C  7C 08 03 A6 */	mtlr r0
/* 803EA670  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA674  4E 80 00 20 */	blr 
